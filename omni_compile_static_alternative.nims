#!/usr/bin/env nim
import os
let zig_path = currentSourcePath.parentDir() & "/zigcc"
#remove -fno-strict-aliasing from gcc.options.speed
exec "time omni OmniPulsar.omni -c:gcc --passNim:'--compileOnly:on --noLinking:on --gcc.options.speed:\"-O3 -fno-ident\" --gcc.exe:\"" & zig_path & "\" --gcc.linkerExe:\"" & zig_path & "\"'"
exec "ar rcs libOmniPulsar.a $HOME/.cache/nim/OmniPulsar_r/*.o"
