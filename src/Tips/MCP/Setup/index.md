# MCPサーバー（ファイルシステム）のDocker設定手順

このドキュメントでは、Model Context Protocol (MCP) のファイルシステムサーバーをDockerを使用してセットアップする手順を説明します。

## 前提条件

- Docker Desktopがインストールされていること
- GitがインストールされていてGitHubにアクセスできること
- Claude Desktopがインストールされていること

## セットアップ手順

### 1. リポジトリのクローン

```bash
git clone https://github.com/modelcontextprotocol/servers.git
cd servers
```

### 2. Dockerイメージのビルド

```bash
docker build -t mcp/filesystem -f src/filesystem/Dockerfile .
```

### 3. claude_desktop_config.jsonの設定

`claude_desktop_config.json` に以下の設定を追加します：

```json
{
    "mcpServers": {
        "filesystem": {
            "command": "docker",
            "args": [
                "run",
                "-i",
                "--rm",
                "--mount", "type=bind,src=<YOUR_LOCAL_PATH>,dst=/projects/<MOUNT_POINT>",
                "mcp/filesystem",
                "/projects"
            ]
        }
    }
}
```

### 設定項目の説明

| パラメータ | 説明 | 例 |
|------------|------|------|
| `src` | アクセスを許可するローカルディレクトリのパス | `C:/Users/username/Documents` |
| `dst` | Dockerコンテナ内でマウントされるパス（必ず `/projects` 配下） | `/projects/docs` |
| 最後の引数 | MCPサーバーのルートディレクトリ | `/projects` |

### 4. 動作確認

設定が正しく行われたかを確認するには、以下の点をチェックします：

1. Claude Desktopが正常に起動すること
2. ファイルシステムへのアクセスが可能なこと（例：`/projects` 配下のディレクトリ一覧が取得できる）

## トラブルシューティング

### よくある問題と解決方法

??? error "Docker buildが失敗する場合"
    * Dockerfileが存在することを確認
    * リポジトリが正しくクローンされているか確認
        * `git clone` コマンドが成功したか
        * `servers` ディレクトリに移動できているか
    * Dockerデーモンが起動しているか確認
        * Docker Desktopが起動しているか
        * `docker ps` コマンドが実行できるか

??? error "ファイルにアクセスできない場合"
    * パスの確認
        * マウントパスが `/projects` 配下になっているか
        * Windowsのパスはスラッシュ（/）を使用しているか
    * 権限の確認
        * マウントしたディレクトリのパーミッション
        * Docker Desktopのファイル共有設定

## 参考情報

- [Model Context Protocol GitHub](https://github.com/modelcontextprotocol/servers)
- [MCPサーバー・ドキュメンテーション](https://glama.ai/mcp/servers)

## 注意点

- セキュリティ上の理由から、必要最小限のディレクトリのみをマウントすることを推奨
- 機密情報を含むディレクトリへのアクセスには十分注意が必要