# PHP Refactor Code

Composite to run rector to refactor PHP code

## Inputs

- `php-version`: PHP version to use (default: `8.2`)
- `mode`: Action for checking or applying refactoring (`check` or `apply`, default: `apply`)
- `message`: Commit message for the changes made by PHP CS Fixer (default: `Fix code styling`)

## Usage

```yaml
jobs:
  tests:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: flockyn/workflows/actions/php-refactor@v1
        with:
          php-version: '8.2'
          message: Upgrade PHP
```