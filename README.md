# Flockyn Workflows

A collection of reusable **GitHub Actions composite workflows** for [Flockyn](https://github.com/flockyn) repositories.

## Available Actions

### General

- [`create-release`](./actions/create-release) – Create GitHub releases with cleaned notes.
- [`update-changelog`](./actions/update-changelog) – Update `CHANGELOG.md` during releases.

### PHP

- [`php-analysis`](./actions/php-analysis) – Run PHPStan static analysis.
- [`php-refactor`](./actions/php-refactor) – Run Rector to refactor PHP code.
- [`php-style`](./actions/php-style) – Run PHP CS Fixer to ensure consistent coding style.
- [`php-tests`](./actions/php-tests) – Run unit test for PHP projects.

## Changelog

See [CHANGELOG.md](./CHANGELOG.md) for release history.

## License

This project is licensed under the [MIT License](./LICENSE).
