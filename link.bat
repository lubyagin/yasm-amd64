
@C:\TDM-GCC-64\bin\gcc.exe -c -o link.obj link.c
@D:\UTILS\yasm.exe -f coff -m amd64 -o link-addon.obj link-addon.asm
@C:\TDM-GCC-64\bin\gcc.exe link.obj link-addon.obj -o link.exe
@C:\TDM-GCC-64\bin\strip.exe --strip-all link.exe
@D:\UTILS\upx.exe -q -9 link.exe
