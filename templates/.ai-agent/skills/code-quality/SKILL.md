---
name: code-quality
description: Enforce OOP, SOLID, DRY, modular architecture and strict documentation
---

# Code Quality Rules

## Design Principles (MANDATORY)

**Code Structure**
- OOP only - classes and objects, not spaghetti functions
- SOLID principles enforced on every class
- DRY - no duplicated logic, ever
- Modular architecture with clear separation of concerns
- Easily extensible components
- Dependency injection preferred over hardcoded dependencies
- Functions under 40 lines - refactor if exceeded

**AI Agent Specific**
- Every task starts with understanding, not coding
- One logical change per commit - do not batch unrelated work
- No assumptions about environment - always read context first
- Explicit over implicit - do not infer what is not stated
- Fail loudly - no silent errors, no swallowed exceptions, no bare excepts
- Always dry-run before declaring a task complete

## Documentation Rules
Every public function MUST include:
- Description
- Parameters explained
- Return value explained
- Exceptions documented

Example:
"""
Creates user session.

Args:
    user_id (str): unique identifier of user
    ttl (int): session time-to-live in seconds

Returns:
    Session: active session object with token and expiry

Raises:
    UserNotFoundError: if user_id does not exist
    SessionLimitError: if user has reached max concurrent sessions
"""

## Validation Before Push
- Dry run application end-to-end
- Validate execution flow
- Ensure no unused imports or dead code
- Validate all error handling is explicit
- Ensure no hardcoded values that belong in .env

## Structure Rules
- Controllers: orchestration and HTTP layer only - no business logic
- Services: business logic and transformations
- Repositories: data access and persistence only
- Utilities: pure, stateless helper functions
