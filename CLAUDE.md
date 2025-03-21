# CLAUDE.md - Pester Testing Guidelines

## Commands

- Run all scripts: `./run_all_scripts.sh` - Run all test scripts

## Project Structure

- `curl_scripts/` - Contains curl-based test scripts
- `run_all_scripts.sh` - Main script to run all tests

## Testing Guidelines

- Use curl for API testing
- Scripts should include validation of responses
- Test both success and error cases
- Document expected responses for each test

## Test Types

- Functional tests - Test API functionality
- Load tests - Test API under load
- Edge case tests - Test boundary conditions

## Best Practices

- Make scripts idempotent when possible
- Include proper error handling
- Use descriptive output messages
- Clean up test data after tests