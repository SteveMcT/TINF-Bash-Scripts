# get the last updated file in current directory
ls -lrt | grep ^- | awk 'END{print $NF}'