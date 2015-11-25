#!/bin/sh
# @Author: marie-_j
# @Date:   10-04-2015 13:47:51
# @Last Modified by:   marie-_j
# @Last Modified time: 10-04-2015 13:47:51

read sr

if [ "$sr" = "y" ]
then
    echo $sr
elif [ "$sr" = "n" ]
then
    echo 'YOLO'
fi
