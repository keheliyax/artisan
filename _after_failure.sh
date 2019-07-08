# !/bin/sh
set -e
find .  -name "core*"
file src/core
gdb -c src/core `which python3` -ex "thread apply all bt" -ex "set pagination 0" -batch
