format PE GUI 4.0
entry start
include "win32a.inc"

section '.data' data readable writeable
szWindows db 'Windows',0

section '.code' code readable executable
start:
  invoke ShellAboutA, 0, szWindows, 0, 0
  invoke ExitProcess, 0

section '.idata' import data readable
library kernel32, "KERNEL32.DLL",\
        shell32, "SHELL32.DLL"

import kernel32, ExitProcess, "ExitProcess"

import shell32, ShellAboutA, "ShellAboutA"