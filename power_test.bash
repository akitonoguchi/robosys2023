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

out=$(seq 3 | ./power)

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
1024
 
3
9
27
81
243
729
2187
6561
19683
59049"

[ "${out}" = "${num}" ] || ng ${LINENO}

out=$(seq 1 | sed 's/$/.1/' | ./power)

num=" 
1.1
1.2100000000000002
1.3310000000000004
1.4641000000000004
1.6105100000000006
1.7715610000000008
1.9487171000000012
2.1435888100000016
2.357947691000002
2.5937424601000023"

[ "${out}" = "${num}" ] || ng ${LINENO}

out=$(seq 2 4 | ./power)

num=" 
2
4
8
16
32
64
128
256
512
1024
 
3
9
27
81
243
729
2187
6561
19683
59049
 
4
16
64
256
1024
4096
16384
65536
262144
1048576"

[ "${out}" = "${num}" ] || ng ${LINENO}

out=$(seq 1 2 3 | ./power)

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
 
3
9
27
81
243
729
2187
6561
19683
59049"

[ "${out}" = "${num}" ] || ng ${LINENO}

out=$(echo 1 2 3 | tr ' ' '\n' | ./power)

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
1024
 
3
9
27
81
243
729
2187
6561
19683
59049"

[ "${out}" = "${num}" ] || ng ${LINENO}

out=$(echo 1 3 5 | tr ' ' '\n' | ./power)

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
 
3
9
27
81
243
729
2187
6561
19683
59049
 
5
25
125
625
3125
15625
78125
390625
1953125
9765625"

[ "${out}" = "${num}" ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./power)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./power)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo akito | ./power)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo seq 5 | ./power)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo @ | ./power)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

