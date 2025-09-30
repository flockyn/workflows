# PHP Tests

Composite action to run unit test for PHP projects.

## Inputs

- `php-version`: PHP version to use (default: `8.2`)
- `extensions`: PHP extensions to install (comma-separated)
- `coverage`: Code coverage driver (`none`, `xdebug`, or `pcov`)
- `composer-cmd`: Composer command to install dependencies (`install` or `update`, default: `install`) with flags
- `execute-cmd`: Command to run tests (default: `vendor/bin/phpunit`)

> [!NOTE]
> This action uses [shivammathur/setup-php](https://github.com/shivammathur/setup-php) under the hood for PHP installation and configuration.
> Refer to its documentation for advanced options (`php-version`, `extensions`, and `coverage`).

## Usage

```yaml
jobs:
  tests:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: flockyn/workflows/actions/php-tests@v1
        with:
          php-version: '8.2'
          coverage: xdebug
          extensions: mbstring, intl
```