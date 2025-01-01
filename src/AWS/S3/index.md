# テスト
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Markmap</title>
<style>
* {
  margin: 0;
  padding: 0;
}
#mindmap {
  display: block;
  width: 100vw;
  height: 100vh;
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/markmap-toolbar@0.18.4/dist/style.css">
</head>
<body>
<svg id="mindmap"></svg>
<script src="https://cdn.jsdelivr.net/npm/d3@7.9.0/dist/d3.min.js"></script><script src="https://cdn.jsdelivr.net/npm/markmap-view@0.18.4/dist/browser/index.js"></script><script src="https://cdn.jsdelivr.net/npm/markmap-toolbar@0.18.4/dist/index.js"></script><script>(r => {
              setTimeout(r);
            })(function renderToolbar() {
  const {
    markmap,
    mm
  } = window;
  const {
    el
  } = markmap.Toolbar.create(mm);
  el.setAttribute('style', 'position:absolute;bottom:20px;right:20px');
  document.body.append(el);
})</script><script>((getMarkmap, getOptions, root2, jsonOptions) => {
              const markmap = getMarkmap();
              window.mm = markmap.Markmap.create(
                "svg#mindmap",
                (getOptions || markmap.deriveOptions)(jsonOptions),
                root2
              );
            })(() => window.markmap,null,{"content":"RDS","children":[{"content":"利用可能なDB","children":[{"content":"MySQL","children":[],"payload":{"tag":"li","lines":"3,4"}},{"content":"PostgreSQL","children":[],"payload":{"tag":"li","lines":"4,5"}},{"content":"MariaDB","children":[],"payload":{"tag":"li","lines":"5,6"}},{"content":"Oracle","children":[],"payload":{"tag":"li","lines":"6,7"}},{"content":"SQL Server","children":[],"payload":{"tag":"li","lines":"7,9"}}],"payload":{"tag":"h2","lines":"2,3"}},{"content":"Multi-AZ構成","children":[{"content":"データ整合性","children":[{"content":"強い整合性モデル（同期レプリケーション）","children":[],"payload":{"tag":"li","lines":"11,13"}}],"payload":{"tag":"h3","lines":"10,11"}},{"content":"デメリット","children":[{"content":"書き込み速度が遅くなる","children":[],"payload":{"tag":"li","lines":"14,16"}}],"payload":{"tag":"h3","lines":"13,14"}},{"content":"メリット","children":[{"content":"フェイルオーバーが可能","children":[{"content":"時間は120秒程度かかる","children":[],"payload":{"tag":"li","lines":"18,19"}}],"payload":{"tag":"li","lines":"17,19"}},{"content":"バックアップはスタンバイインスタンスから取得するので、マスターインスタンスに負荷がかからない","children":[],"payload":{"tag":"li","lines":"19,22"}}],"payload":{"tag":"h3","lines":"16,17"}}],"payload":{"tag":"h2","lines":"9,10"}},{"content":"Read Replica","children":[{"content":"メリット","children":[{"content":"参照専用のDBインスタンスを作成できる","children":[],"payload":{"tag":"li","lines":"24,25"}},{"content":"マスターDBがメンテナンス中でも、参照系はリードレプリカにアクセスできる","children":[],"payload":{"tag":"li","lines":"25,27"}}],"payload":{"tag":"h3","lines":"23,24"}},{"content":"デメリット","children":[{"content":"レプリケーションは非同期で行われるため、データの整合性が保証されない（結果整合性）","children":[],"payload":{"tag":"li","lines":"28,30"}}],"payload":{"tag":"h3","lines":"27,28"}}],"payload":{"tag":"h2","lines":"22,23"}}],"payload":{"tag":"h1","lines":"1,2"}},{})</script>
</body>
</html>
