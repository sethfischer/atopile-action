#! /bin/bash -l

set -e

ato_project_path=$1

git config --global --add safe.directory /github/workspace

cd "$ato_project_path"
ato install
ato build
