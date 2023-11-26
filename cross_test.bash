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

out=$(seq 5 | sed 's/$/.1/' | ./cross)
[ "${out}" = 149.73651 ] || ng ${LINENO}

out=$(seq 10 | ./cross)
[ "${out}" = 3628800 ] || ng ${LINENO}

out=$(seq 3  10 | ./cross)
[ "${out}" = 1814400 ] || ng ${LINENO}

out=$(seq 1 2 15 | ./cross)
[ "${out}" = 2027025 ] || ng ${LINENO}

out=$(seq 10 -3 -2 | ./cross)
[ "${out}" = -560 ] || ng ${LINENO}

out=$(echo 1 2 3 4 5 6 | tr ' ' '\n' | ./cross)
[ "${out}" = 720 ] || ng ${LINENO}

out=$(echo 1 3 5 7 9 11 | tr ' ' '\n' | ./cross)
[ "${out}" = 10395 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./cross)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}    　

out=$(echo | ./cross)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}　

out=$(echo akito | ./cross)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo seq 5 | ./cross)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo @ | ./cross)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
