# GitHub REST and GraphQL API Client Flutter App

## 状態の分類と管理例

| scope \ lifetime | 一時的 (ephemeral) | 永続的 (persistent) |
|--------|--------|--------|
| 単一の Widget に閉じた<br>(local) | ① local ephemeral state<br>- useState etc...<br>(- StatefulWidget) | ② local persistent state<br>- useFuture + useMemorized + 再評価<br>- useStream/useQuery<br>(- FutureProvider + invalidate)<br>(- StreamProvider) |
| アプリの多くの部分で共有される<br>(global) | ③ global ephemeral state<br>- Notifier/Provider | ④ global persistent state<br>- FutureProvider/Provider + invalidate<br>- StreamProvider | 

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
