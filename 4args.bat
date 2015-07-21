
@C:\TDM-GCC-64\bin\gcc.exe -c -o 4args.obj 4args.c
@D:\UTILS\yasm.exe -f coff -m amd64 -o addon.obj addon.asm
@C:\TDM-GCC-64\bin\gcc.exe 4args.obj addon.obj -o 4args.exe
@C:\TDM-GCC-64\bin\strip.exe --strip-all 4args.exe
@D:\UTILS\upx.exe -q -9 4args.exe

@D:\UTILS\yasm.exe -f bin -m amd64 -o addon.bin addon.asm
@D:\UTILS\ndisasm.exe addon.bin > addon.S

@C:\TDM-GCC-64\bin\gcc.exe -S -c -o 4args.S 4args.c
