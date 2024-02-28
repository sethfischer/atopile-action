#! /bin/bash -l

set -e

ato_project_path=$1

git config --global --add safe.directory /github/workspace

ato_version=$(ato --version)
echo "::notice:: ato version: ${ato_version}"

cd "$ato_project_path"
ato install
ato build
