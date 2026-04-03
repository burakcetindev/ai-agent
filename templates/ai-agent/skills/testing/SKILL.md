---
name: testing
description: Enforce real verification testing with no mocks
---

# Testing Rules

## Mandatory
- No mocks - test real behavior against real dependencies
- Real verification only
- Integration tests preferred over unit tests
- End-to-end flows required for every new module

## New Repo Tests
Create:
tests/
  test_integration.*   # full stack, real DB, real services
  test_flow.*          # end-to-end user journeys
  test_validation.*    # edge cases, boundaries, error messages

## Test Requirements
- Validate real outputs, not just "no exception raised"
- Validate error cases and error messages
- Validate data flow end-to-end
- Validate edge cases: null, empty, max length, invalid types
- Tests must clean up after themselves (rollback, temp file removal)
- Tests must be order-independent

## Handling External Dependencies
- Use a real test environment (test DB, sandbox API)
- Use fixtures to seed and clean real data
- Use docker-compose to spin up dependencies locally
- If a real environment is truly impossible, document the exception in docs/testing.md

## Before Push
- Run full test suite via ./scripts/test.sh
- All tests must pass - no committing broken tests
- Dry run app after tests pass
