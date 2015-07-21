#include <stdint.h>
#include <stdio.h>
extern __attribute__((fastcall,noinline)) uint32_t L3(uint32_t a, uint32_t b, uint32_t c, uint32_t d);
int main() {
	uint32_t a,b,c,d;
	d = (c = (b = (a = 1) + 1) + 1) + 1;
	uint32_t f = L3(a,b,c,d);
	printf("%d+%d+%d+%d=%d\n",a,b,c,d,f);
	return 0;
}
