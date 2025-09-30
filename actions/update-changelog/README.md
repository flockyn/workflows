# Update Changelog

Composite action to automatically update `CHANGELOG.md` during release.

## Inputs

- `branch`: Branch to compare for recent changes (default: `github.ref_name`)
- `changelog-file`: Path to changelog file (default: `CHANGELOG.md`)
- `version`: Version number to add to the changelog (e.g., v1.0.0)
- `notes`: Release notes to add to the changelog

## Example usage

```yaml
jobs:
  changelog:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: flockyn/workflows/actions/update-changelog@v1
        with:
          version: v1.0.0
          notes: "Initial release"
          changelog-file: CHANGELOG.md
          branch: main
```