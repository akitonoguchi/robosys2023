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

[ "$res" = 0 ] && echo OK
exit $res
