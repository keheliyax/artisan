chmod u+x _after_failure.shstrace -f -r bash -c './_after_failure.sh' >> strace_output.log 2>&1