# PHP Style Code

Composite to run PHP CS Fixer to ensure consistent coding style in PHP Projects.

## Inputs

- `php-version`: PHP version to use (default: `8.2`)
- `message`: Commit message for the changes made by PHP CS Fixer (default: `Fix code styling`)
- `mode`: Mode to run PHP CS Fixer (`fix` or `test`, default: `fix`)

## Usage

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