#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Ryuichi Ueda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

### I/O TEST ###
out=$(seq 1 | ./power)

num="1
1
1
1
1
1
1
1
1
10"

[ "${out}" = "${num}" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
