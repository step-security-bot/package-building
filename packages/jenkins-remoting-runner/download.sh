#!/usr/bin/env bash
set -euo pipefail

python3 -m venv .venv
# shellcheck disable=SC1091
source .venv/bin/activate
pip install --upgrade yq

PKG_VER="$(
    # https://kislyuk.github.io/yq/
    curl -sSL https://repo.jenkins-ci.org/artifactory/public/org/jenkins-ci/main/remoting/maven-metadata.xml |
        xq -Mr '.metadata.versioning.latest'
)"

curl -sSL "https://repo.jenkins-ci.org/artifactory/public/org/jenkins-ci/main/remoting/${PKG_VER}/remoting-${PKG_VER}.jar" \
    --output /usr/local/bin/jenkins-remoting-runner.jar
