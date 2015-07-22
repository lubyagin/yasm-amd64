/usr/bin/gcc -c -o vars.o vars.c
/usr/bin/yasm -f elf -m amd64 -o vars-addon.o vars-addon.asm
/usr/bin/gcc -o vars vars-addon.o vars.o
/usr/bin/strip vars
/usr/bin/upx -q -9 vars
