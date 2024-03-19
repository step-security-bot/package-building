#!/usr/bin/env bash
set -euo pipefail

# Ensure we start with an empty file.
rm -f .changed
touch .changed

##
# 1. Get the list of files changed/added (but not deleted) in the last commit.
# 2. There are a few folders where if one of the "support" files changes,
#    rebuild all Dockerfiles -- even if the Dockerfiles themselves weren't changed.
# 3. Only Dockerfiles should be returned as they are the only files that can be
#    built with `docker buildx build`.
# 4. $1 and $2 are the commit hashes to compare.
#
# shellcheck disable=SC2016
##
git diff --name-only --diff-filter=ACMRT "$1" "$2" |
    xargs -I% bash -c '
        if [[ "%" =~ ^buildboxes ]]; then
            # Simple builds
            if [[ "%" =~ Dockerfile.v ]]; then
                echo "%" >> .changed
            fi
        fi
    '

# Strip `buildboxes/` off the front.
while read -r FILE; do
    echo "${FILE//buildboxes\//}" >>.changed.filtered
done <.changed

# Sort and filter out duplicates.
sort <.changed.filtered | uniq >.changed.sorted
jq -Mr '[., inputs]' --raw-input .changed.sorted >.changed.json
rm -fv .changed
mv -v .changed.json .changed
rm -fv .changed.*
