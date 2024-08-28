#include "../h/syscallC.hpp"

void printInt(uint64 num) {
    putc('\n');
    if (!num) putc('0');
    uint64 num2 = 0, zero_count = 0;
    while (num) {
        num2 *= 10;
        num2 += num%10;
        if(!num2) ++zero_count;
        num/=10;
    }
    while (num2) {
        putc(num2%10+'0');
        num2/=10;
    }
    while (zero_count--) putc('0');
}

void printStr(char const* string) {
    while (*string != '\0') {
        putc(*string);
        string++;
    }
}