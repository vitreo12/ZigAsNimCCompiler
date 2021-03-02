#!/usr/bin/env nim
import os
putEnv("CC", (currentSourcePath.parentDir() & "/zigcc"))
exec "time omni OmniPulsar.omni -c:env --passNim:\"--env.options.speed='-O3 -fno-ident'\""
