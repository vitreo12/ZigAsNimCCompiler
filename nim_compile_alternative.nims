#!/usr/bin/env nim
import os
let zig_path = currentSourcePath.parentDir() & "/zigcc"
exec "nim c --cc:clang --clang.exe:\"" & zig_path & "\" --clang.linkerExe:\"" & zig_path & "\" --passC:\"-O3 -fPIC -flto -fno-ident\" --passL:\"-flto\" -d:release -d:danger -r test.nim"
