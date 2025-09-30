#!/usr/bin/env bash

set -e

# Get UNIX timestamp from git-tag
TIMESTAMP_OF_RELEASE_COMMIT=$(git log -1 --date=unix --format=%ad "$VERSION");

# Convert timestamp to UTC date in Y-m-d format
FORMATED_DATE=$(date -u -d "@$TIMESTAMP_OF_RELEASE_COMMIT" +%Y-%m-%d);

# Make date available to other steps
echo "date=$(echo $FORMATED_DATE)" >> $GITHUB_OUTPUT;