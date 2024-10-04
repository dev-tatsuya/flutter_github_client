# GitHub REST and GraphQL API Client Flutter App

## Flutter アプリの状態の分類と管理例

| スコープ | SSOT | 命名例 | 説明 | 管理方法例 |
|--------|--------|--------|--------|--------|
| ephemeral | メモリ内<br>（Widget 内） | ephemeral state | 単一のWidgetに閉じた一時的な状態 | flutter_hooks |
| app | メモリ内<br>（ランタイム） | in memory state | 複数のWidgetで共有されるが、アプリの再起動やリロードでは保持されない状態。 | riverpod (Provider) |
| app | ローカルストレージ | persistent state | 複数のWidgetで共有され、ローカルストレージに永続化される状態。 | riverpod (Future/StreamProvider) |
| app | サーバやクラウド | remote state | サーバーやクラウドから取得・管理される状態。 | REST: riverpod (FutureProvider)<br>GraphQL: graphql_flutter (useQuery)<br>Firestore: riverpod (StreamProvider) | 

## Data Flow Design
```mermaid
---
title: Data Flow for GraphQL API Client App
---
graph LR

api[GraphQL API Client]
cache[GraphQLCache]
page1[StarredRepositoryListPage]
page2[RepositoryListPage]
page3[RepositoryDetailPage]
star([useStar])

api == writeNormalized ==> cache -. useQuery .- page1 & page2 & page3 --- star --- api & cache
```

```mermaid
---
title: Data Flow for REST API Client App
---
graph LR

api[REST API Client]
state1[StarredRepositoryListProvider]
state2[RepositoryListProvider]
state3[RepositoryDetailProvider]
page1[StarredRepositoryListPage]
page2[RepositoryListPage]
page3[RepositoryDetailPage]
star([useStar])

api -.- state1 & state2 & state3
state1 -.- page1
state2 -.- page2
state3 -.- page3
state1 -.- state2
state2 -.- state3
page1 & page2 & page3 --- star --- api
```
