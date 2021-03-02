#!/usr/bin/env nim
import os
putEnv("CC", (currentSourcePath.parentDir() & "/zigcc"))
exec "nim c --forceBuild:on --cc:env --env.options.speed=\"-O3 -fno-ident\" -d:release -d:danger -r test.nim"
