#!/usr/bin/env nim
import os
putEnv("CC", (currentSourcePath.parentDir() & "/zigcc"))
#--noLinking should be passed too, but does not work with nm check for perform in omni yet!
exec "time omni OmniPulsar.omni -e:false -c:env --passNim:'--env.linkerExe:\"$CC\" --passC:\"-O3 -fPIC -flto -fno-ident\" --passL:\"-flto\"'"
exec "zig ar rcs libOmniPulsar.a $HOME/.cache/nim/OmniPulsar_r/*.o"
