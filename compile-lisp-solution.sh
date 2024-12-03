#!/bin/bash

for i in `seq 11`; do
    BIN_FILE=src/main/lisp/svetlyak40wt/calculate-average
    ROS_FILE=${BIN_FILE}.ros
    VERSIONED_BIN=${BIN_FILE}-2.4.$i
    ros -L sbcl-bin/2.4.$i build $ROS_FILE && mv $BIN_FILE $VERSIONED_BIN 
done
