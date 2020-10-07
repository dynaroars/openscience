#!/bin/bash

set -e

run(){
	NAME=$1
	mkdir -p res/$NAME
	rm -rf 2/$NAME.cachedb
	./igen4 -J2 -crwx -GF 2/$NAME --rep 11 -O res/$NAME/a_{i}.txt -j64 --rep-para 11
	./igen4 -J2 -crwx -GF 2/$NAME          -O res/$NAME/full.txt --full -j16
}

run_nofull(){
	NAME=$1
	mkdir -p res/$NAME
	rm -rf 2/$NAME.cachedb
	./igen4 -J2 -crwx -GF 2/$NAME --rep 11 -O res/$NAME/a_{i}.txt -j64 --rep-para 11
	#./igen4 -J2 -crwx -GF 2/$NAME          -O res/$NAME/full.txt --full -j16
}

run_nofull pylint
run        grin
