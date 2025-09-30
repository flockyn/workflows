# PHP Style Code

Composite to run PHP CS Fixer to ensure consistent coding style in PHP Projects.

## Inputs

- `php-version`: PHP version to use (default: `8.2`)
- `message`: Commit message for the changes made by PHP CS Fixer (default: `Fix code styling`)
- `mode`: How to run PHP CS Fixer
  - `fix` → automatically fix issues and commit changes
  - `test` → check for issues without modifying code

## Usage

### Run in fix mode (auto-commit style fixes)

When using `mode: fix`, the workflow needs permission to push commits.  
Make sure you add `permissions: contents: write`.

```yaml
permissions:
  contents: write

jobs:
  tests:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: flockyn/workflows/actions/php-style@v1
        with:
          php-version: '8.2'
          mode: fix
```

> This will automatically fix coding style issues and commit them back to your branch.

### Run in test mode (fail CI if style is incorrect)

```yaml
jobs:
  tests:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: flockyn/workflows/actions/php-style@v1
        with:
          php-version: '8.2'
          mode: test
```

> This will only check the code style. If violations are found, the job will fail.