#include <stdio.h>
#include "lib.h"

void test()
{
    if(libFunc0()) {
        printf("do this!\n");
    }
    else {
        printf("do that!\n");
    }
}

int main(void)
{
    test();
    return 0;
}