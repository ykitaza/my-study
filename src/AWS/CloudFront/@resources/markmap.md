
# CloudFront

## Sined URL, Signed Cookies

### ユースケース
- 有料の共有コンテンツを特定のユーザーにだけ配信したいといったケース

### 作成に必要なポリシーで設定する項目
- URL の有効期限
- IP アドレスの有効範囲
- 署名者の情報（AWSアカウント）

### Sined URL と Sined Cookies の違い
- Sined URL
  - 個々のファイルへのアクセスを許可
- Sined Cookies
  - 複数のファイルへのアクセスを許可
  

### オリジンにS3を使用する場合の例
1. OAI によるアクセス制限をかけ、CloudedFront からのアクセスのみを許可する
2. クライアントはアプリケーションに対して認証を行う。
3. 認証が成功した場合、アプリケーションは CloudFront に対して署名付き URL を発行する
4. CloudFront は署名付き URL をクライアントに返却する
5. クライアントは署名付き URL を使って CloudFront にアクセスする
