#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Akito Noguchi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(seq 5 | sed 's/$/.1/' | ./plus)
[ "${out}" = 15.5 ] || ng ${LINENO}

out=$(seq 7 | sed 's/$/.2/' | ./plus)
[ "${out}" = 29.4 ] || ng ${LINENO}

out=$(seq 5 10 | ./plus)
[ "${out}" = 45 ] || ng ${LINENO}

out=$(seq 0 3 12 | ./plus)
[ "${out}" = 30 ] || ng ${LINENO}

out=$(seq 20 -2 1 | ./plus)
[ "${out}" = 110 ] || ng ${LINENO}

out=$(echo 1 2 3 4 5 6 7 8 9 10 | tr ' ' '\n' | ./plus)
[ "${out}" = 55 ] || ng ${LINENO}

out=$(echo 2 4 6 8 10 12 | tr ' ' '\n' | ./plus)
[ "${out}" = 42 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus) 
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo akito | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo seq 5 | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo @ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $[res]

