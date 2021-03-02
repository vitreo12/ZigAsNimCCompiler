#!/usr/bin/env nim
import os
putEnv("CC", "~/OmniTests/zigcc".expandTilde())
exec "time omni OmniPulsar.omni -c:env --passNim:\"--env.options.speed='-O3 -fno-ident'\""
