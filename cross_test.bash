#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Akito Noguchi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}
res=0

### I/O TEST ###
out=$(seq 5 | ./cross)
[ "${out}" = 120 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./cross)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}    　

out=$(echo | ./cross)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}　

[ "$res" = 0 ] && echo OK
exit $res
