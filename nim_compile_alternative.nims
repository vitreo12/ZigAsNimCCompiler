#!/usr/bin/env nim
import os
let zig_path = currentSourcePath.parentDir() & "/zigcc"
exec "nim c --forceBuild:on --cc:gcc --gcc.exe:\"" & zig_path & "\" --gcc.linkerExe:\"" & zig_path & "\" --passC:\"-fPIC -fno-ident\" -d:lto -d:release -d:danger -r test.nim"
