#!/bin/bash

rm jpeg
wget http://www.ijg.org/files/jpegsrc.v9f.tar.gz
tar -xzvf jpegsrc.v9f.tar.gz
rm jpegsrc.v9f.tar.gz
cd jpeg-9f/
./configure --host=mips-linux-gnu CC=../../Cross-Compiler-mips/bin/mips-linux-gnu-gcc --prefix=/
make
make install DESTDIR=$PWD..
cd ../
rm -rf jpeg-9f
mv jpeg-9f.. jpeg

