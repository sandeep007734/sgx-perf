#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Need the folder name"
	exit 1
fi

DIR=$1

mkdir -p $DIR-plots
find $DIR -iname "*.dat" -printf "%f\n" | sed 's/\.[^.]*$//' | xargs -i gnuplot -e "dir='$DIR';filename='{}'" hist.plot
find $DIR -iname "*.dat" -printf "%f\n" | sed 's/\.[^.]*$//' | xargs -i bash -c "sort $DIR/{}.dat > $DIR/{}.dat.sorted"
find $DIR -iname "*.dat" -printf "%f\n" | sed 's/\.[^.]*$//' | xargs -i gnuplot -e "dir='$DIR';filename='{}'" scatter.plot
