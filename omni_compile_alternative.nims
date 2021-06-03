#!/usr/bin/env nim
import os
let zig_path = currentSourcePath.parentDir() & "/zigcc"
#remove -fno-strict-aliasing from gcc.options.speed
exec "time omni OmniPulsar.omni -c:gcc --passNim:'--gcc.options.speed:\"-O3 -fno-ident\" --gcc.exe:\"" & zig_path & "\" --gcc.linkerExe:\"" & zig_path & "\"'"
