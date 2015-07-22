#include <stdint.h>
#include <stdio.h>
extern void L3(void);
uint32_t i1;
int main() {
	i1 = 0;
	L3();
	printf("i1=%d\n",i1);
	return 0;
}
