#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Akito Noguchi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

### I/O TEST ###
out=$(seq 2 | ./power)

num=" 
1
1
1
1
1
1
1
1
1
1
 
2
4
8
16
32
64
128
256
512
1024"

[ "${out}" = "${num}" ] || ng ${LINENO}
[ "$res" = 0 ] && echo OK
exit $res

