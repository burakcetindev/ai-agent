---
name: architecture
description: Enforce architecture and data flow diagrams using Mermaid
---

# Architecture Documentation Rules

## docs/architecture.md MUST include
- High level description (2-3 sentences)
- Component responsibilities table
- Mermaid architecture diagram

Example:
```mermaid
graph TD
    Client["Client"]
    API["Controller"]
    Service["Service"]
    Repository["Repository"]
    DB[("Database")]

    Client -->|HTTP| API
    API -->|validated input| Service
    Service -->|query| Repository
    Repository -->|SQL| DB
    Repository -.->|data| Service
    Service -.->|result| API
    API -.->|JSON| Client
```

## docs/data-flow.md MUST include
- Detailed request/response flow
- Function-level explanation
- Mermaid sequence diagram with autonumber
- Error flow diagram

Example:
```mermaid
sequenceDiagram
    autonumber
    Client->>API: POST /resource {payload}
    API->>API: validate(payload)
    API->>Service: process(data)
    Service->>Repository: findBy(criteria)
    Repository-->>Service: Entity[]
    Service->>Repository: save(result)
    Repository-->>Service: saved Entity
    Service-->>API: ResponseDTO
    API-->>Client: 200 OK
```

## docs/considerations.md MUST include
- Why this architecture (alternatives considered)
- Design decisions (context / choice / reason / tradeoff)
- Known limitations
- Future improvements with reason why not done now

## Diagram Maintenance Rules
- Update immediately when a new component is added
- Update immediately when a flow changes
- If code changes, diagrams change - never let them drift
