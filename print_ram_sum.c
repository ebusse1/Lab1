#include <stdio.h>
extern unsigned char ram[]; // RAM declared in assembly
extern void load_sum(void); // Assembly function
int main()
{load_sum(); // Run assembly code
    printf("RAM contents at 50H:\n");
    printf("%02X ", ram[0x50]);
    printf("\n");
    return 0;
}
