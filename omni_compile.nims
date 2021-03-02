#!/usr/bin/env nim
import os
putEnv("CC", (currentSourcePath.parentDir() & "/zigcc"))
exec "time omni OmniPulsar.omni -e:false -c:env --passNim:\"--env.options.speed='-O3 -fno-ident'\""
