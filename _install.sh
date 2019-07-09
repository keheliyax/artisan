# !/bin/bash

set -e
source ~/virtualenv/python3.7/bin/activate
export GIT_VERSION=`git rev-parse --verify --short HEAD 2>/dev/null|| echo "???"`
sed -i'' -e "s/__revision__ = '0'/__revision__ = '$GIT_VERSION'/" src/artisanlib/__init__.py
.travis/install-${ARTISAN_OS}.sh
