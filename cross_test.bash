#!/bin/bash

out=$(seq 5 | ./cross)

[ "${out}" = 121 ]
