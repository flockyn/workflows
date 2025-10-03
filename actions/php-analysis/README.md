# PHP Analysis

Composite to run PHPStan analysis for PHP Projects.

## Inputs

- `php-version`: PHP version to use (default: `8.2`)
- `extensions`: PHP extensions to install (comma-separated)
- `composer-cmd`: Composer command to install dependencies (`install` or `update`, default: `install`) with flags
- `config`: Path to PHPStan configuration file (default: `phpstan.neon`)

## Usage

```yaml
jobs:
  tests:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: flockyn/workflows/actions/php-analysis@v1
        with:
          php-version: '8.2'
          config: 'phpstan.dist.neon'
```