# 概要

> 効率的なドキュメント管理のための MkDocs プロジェクト

---

## クイックスタート

### プロジェクト構成

```bash
docs/
├── src/                    # ドキュメントサイトに表示されるファイル
├── docker-compose.yaml     # Dockerコンポーズ設定
├── dockerfile             # Dockerファイル
├── mkdocs.yml             # MkDocs設定ファイル
└── requirements.txt       # 必要なPythonパッケージ
```

### ローカルでの環境構築

```bash
# 必要なパッケージをインストール
pip install -r requirements.txt

# ローカルサーバーを起動
mkdocs serve

# ブラウザで確認
# http://127.0.0.1:8000 にアクセス
```

### Dockerを使用する場合

#### 初回

```bash
# ビルドと起動を一括で実行
docker-compose up --build

# ブラウザで確認
# http://127.0.0.1:8000 にアクセス
```

#### 2回目以降

```bash
# 起動
docker-compose up

# ブラウザで確認
# http://127.0.0.1:8000 にアクセス
```

---

## ドキュメントの追加と編集

### ドキュメントの配置

すべてのドキュメントは `src` ディレクトリ以下に配置します。フォルダ構造がそのままサイトのナビゲーション構造として反映されます。

#### 例：フォルダ構造とナビゲーション
```
src/
├── 機能/
│   └── ログイン/
│       └── 認証.md  => 「機能 > ログイン > 認証」
└── index.md         => トップページ
```


#### ナビゲーションのルール

- 自動的にアルファベット順で並びます
  ```bash
  # 順序を制御したい場合
  01_はじめに.md
  02_インストール.md
  ```


#### リアルタイムプレビュー
ファイルの保存と同時に自動でブラウザが更新され、編集結果をリアルタイムで確認できます。

---

## カスタマイズ

`mkdocs.yml` で以下の設定をカスタマイズできます：

- テーマカラー
- プラグイン
- Markdown拡張機能
- その他サイト全般の設定


---

## 必要要件

### ローカル環境
- Python 3.x
- MkDocs
- Material for MkDocs
- その他requirements.txtに記載されているパッケージ

### Docker環境
- Docker
---


---

> 詳細な使い方や設定については、[MkDocsのドキュメント](https://www.mkdocs.org/) や [Material for MkDocsのドキュメント](https://squidfunk.github.io/mkdocs-material/) を参照してください。