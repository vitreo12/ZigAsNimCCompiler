#!/usr/bin/env nim
import os
putEnv("CC", "~/Sources/ZigAsNimCCompiler/zigcc".expandTilde())
exec "nim c --forceBuild:on --cc:env --env.options.speed=\"-O3 -fno-ident\" -d:release -d:danger -r test.nim"
