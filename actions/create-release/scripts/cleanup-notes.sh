#!/usr/bin/env bash

set -e

START_FROM=$(echo -n "$RELEASE_NOTES" | awk "/What's Changed/{ print NR; exit }" -)
DROP_FROM_CONTRIBUTORS=$(echo -n "$RELEASE_NOTES" | awk "/New Contributors/{ print NR; exit }" -)
DROP_FROM_FULL_CHANGELOG=$(echo -n "$RELEASE_NOTES" | awk "/Full Changelog/{ print NR; exit }" -)

# Drop everything starting from "Full Changelog"
if [ ! -z "$DROP_FROM_FULL_CHANGELOG" ]; then
    RELEASE_NOTES=$(echo -n "$RELEASE_NOTES" | sed "${DROP_FROM_FULL_CHANGELOG},$ d")
fi

# Drop everything starting from "New Contributors"
if [ ! -z "$DROP_FROM_CONTRIBUTORS" ]; then
    RELEASE_NOTES=$(echo -n "$RELEASE_NOTES" | sed "${DROP_FROM_CONTRIBUTORS},$ d")
fi

# Drop the line "What's Changed"
if [ ! -z "$START_FROM" ]; then
    RELEASE_NOTES=$(echo -n "$RELEASE_NOTES" | sed "${START_FROM}d")
fi

{
  echo 'notes<<EOF'
  echo "$RELEASE_NOTES"
  echo EOF
} >> "$GITHUB_OUTPUT";