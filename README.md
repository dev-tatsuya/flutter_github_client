# GitHub REST and GraphQL API Client Flutter App

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
