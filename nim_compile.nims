#!/usr/bin/env nim
import os
putEnv("CC", (currentSourcePath.parentDir() & "/zigcc"))
exec "nim c --forceBuild --cc:env --env.linkerExe=\"$CC\" --passC=\"-O3 -fPIC -flto -fno-ident\" --passL:\"-flto\" -d:release -d:danger -r test.nim"
