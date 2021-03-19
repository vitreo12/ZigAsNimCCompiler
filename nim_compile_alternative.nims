#!/usr/bin/env nim
import os
let zig_path = currentSourcePath.parentDir() & "/zigcc"
exec "nim c --forceBuild:on --cc:clang --clang.exe:\"" & zig_path & "\" --clang.linkerExe:\"" & zig_path & "\" --passC:\"-fPIC -fno-ident\" -d:lto -d:release -d:danger -r test.nim"
