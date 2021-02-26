#!/bin/sh
export CC='{$BASEDIR}/zigcc'
nim c -r --cc:env --env.options.speed='-O3 -fno-ident' -d:release -d:danger test.nim
