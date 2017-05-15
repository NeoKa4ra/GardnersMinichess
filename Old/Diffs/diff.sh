#!/bin/bash

diff others/Stockfish-master/src/Makefile src/Makefile > diff.txt

for filename in 'ucioption' 'main' 'bitbase' 'benchmark'
do
	echo "****************************************************************" >> diff.txt
	echo $filename >> diff.txt
	echo "****************************************************************" >> diff.txt
	diff others/Stockfish-master/src/$filename.cpp src/$filename.cpp >> diff.txt
done

for filename in 'types'
do
	echo "****************************************************************" >> diff.txt
	echo $filename >> diff.txt
	echo "****************************************************************" >> diff.txt
	diff others/Stockfish-master/src/$filename.h src/$filename.h >> diff.txt
done

for filename in 'syzygy/tbprobe' 'uci' 'tt' 'timeman' 'thread' 'search' 'position' 'pawns' 'movepick' 'movegen' 'misc' 'material' 'evaluate' 'endgame' 'bitboard'
do
	echo "****************************************************************" >> diff.txt
	echo $filename >> diff.txt
	echo "****************************************************************" >> diff.txt
	diff others/Stockfish-master/src/$filename.cpp src/$filename.cpp >> diff.txt
	diff others/Stockfish-master/src/$filename.h src/$filename.h >> diff.txt
done

