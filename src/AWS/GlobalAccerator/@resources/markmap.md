# GlobalAccelerator
## どんなサービス？
- 通信レイテンシーを改善するサービス
- 静的IPアドレスによるGlobalAcceleratorへのエンドポイントの提供

## 静的IPアドレスのエンドポイントを提供する理由
- クライアントによるDNSキャッシュを回避し、より高速な通信を実現するため
- ちなみにDNSでのエンドポイントも提供している。

## CloudFrontとの違い
- プロトコル
  - CloudFront: HTTP/HTTPS
  - GlobalAccelerator: TCP
- キャッシュ機能
  - CloudFront: あり
  - GlobalAccelerator: なし
- オリジン
  - CloudFront: HTTP/HTTPSのレスポンスを返すもの
  - GlobalAccelerator: NLB,ALB,EC2,EIP
