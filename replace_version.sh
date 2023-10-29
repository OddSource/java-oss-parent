#!/usr/bin/env bash

CURRENT_VERSION=$(mvn -q -Dexec.executable="echo" -Dexec.args='${project.version}' --non-recursive exec:exec)
NEXT_VERSION=$1

echo "CURRENT_VERSION=${CURRENT_VERSION}"
echo "NEXT_VERSION=${NEXT_VERSION}"

if [ -z "${NEXT_VERSION}" ] || [ -z "${CURRENT_VERSION}" ]
then
  echo 'Either $CURRENT_VERSION or $NEXT_VERSION is unset. Usage problem.'
  exit 1
fi

grep -rl "<version>${CURRENT_VERSION}</version>" | \
  grep -v "/target/" | \
  xargs sed -i '' -e "s@<version>${CURRENT_VERSION}</version>@<version>${NEXT_VERSION}</version>@g"
git diff
