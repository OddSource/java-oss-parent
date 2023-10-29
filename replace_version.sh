#!/usr/bin/env bash
# Copyright © 2010-2023 OddSource Code (license@oddsource.io)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
