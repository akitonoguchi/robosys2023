#!/bin/bash

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

[ "${out}" = "${num}" ]
