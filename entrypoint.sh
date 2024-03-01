#! /bin/bash -l

set -e

ato_project_path=$1

git config --global --add safe.directory /github/workspace

ato_version=$(ato --version)
kicad_version=$(kicad-cli --version)
echo "::notice:: ato version: ${ato_version}"
echo "::notice:: kicad-cli version: ${kicad_version}"

cd "$ato_project_path"
echo "::notice:: starting ato install"
ato install
echo "::notice:: starting ato build"
ato build
