# Contributing

## Prepare Development Environment

- Prepare dev tools
  - Install GIT
- Clone GIT repository

  ```shell
  git clone X_PROJECT_GIT_URL_X
  ```

- Adjust environment variables to reflect your configuration:

  ```shell
  # Copy environment definition files from templates:
  cp dot.local .local
  cp dot.secrets .secrets
  # Review and update content for both files
  ```

- Initialize dev environment variables

  ```shell
  source bin/X_PROJECT_NAME_DEV_X-set
  ```

## Update source code

- Add/Edit source code in: `src/`

## Test source code

- Add/update test-cases in: `test/batscore`

## Repositories

- Project GIT repository: [X_PROJECT_GIT_URL_X](X_PROJECT_GIT_URL_X)
- Project Documentation: [X_PROJECT_DOC_URL_X](X_PROJECT_DOC_URL_X)
- Release history: [CHANGELOG](CHANGELOG.md)
