#!/bin/bash

LINE_NUMBER=$2
COLUMN_NUMBER=$3
STDIN=$(cat -)

echo "hello"
echo "world"
echo $LINE_NUMBER
echo $COLUMN_NUMBER
echo $STDIN
