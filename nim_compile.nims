#!/usr/bin/env nim
import os
putEnv("CC", (currentSourcePath.parentDir() & "/zigcc"))
exec "nim c --cc:env --env.linkerExe=\"$CC\" --passC=\"-O3 -fPIC -flto -fno-ident\" -d:release -d:danger -r test.nim"
