# Create Release

Composite action to create a GitHub release with cleaned release notes.

## Inputs

- `token`: GitHub token with permissions to create a release
- `version`: Version number for the release (e.g., `v1.0.0`)

## Outputs

- `version`: Normalized version string
- `notes`: Cleaned release notes body

## Usage

```yaml
jobs:
  release:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: flockyn/workflows/actions/create-release@v1
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
          version: v1.0.0
```