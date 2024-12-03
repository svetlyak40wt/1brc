#!/bin/bash

for i in `seq 11`; do
    VERSION=2.4.$i
    BIN_FILE=src/main/lisp/svetlyak40wt/calculate-average
    VERSIONED_BIN=${BIN_FILE}-$VERSION
    echo "--== $VERSION ==--"
    hyperfine "$VERSIONED_BIN measurements.txt"
done
