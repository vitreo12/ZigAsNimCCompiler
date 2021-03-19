#!/usr/bin/env nim
import os
putEnv("CC", (currentSourcePath.parentDir() & "/zigcc"))
exec "time omni OmniPulsar.omni -e:false -c:env --passNim:'--env.linkerExe:\"$CC\" --passC:\"-O3 -fPIC -flto -fno-ident\" --passL:\"-flto\"'"
