
#include <Gigatron.h>
#include <stdio.h>

int putc(int c)
{
        if (c == '\n') {
                Newline();
        } else {
                unsigned char* bitmap;
                unsigned i = c - 32;
                if (i < 50) {
                        bitmap = font32up;
                } else {
                        i -= 50;
                        bitmap = font82up;
                }
                bitmap = &bitmap[(i << 2) + i];

                sysArgs[0] = BgColor;
                sysArgs[1] = Color;
                *(int*)(sysArgs+4) = _ScreenPos;
                sysFn = SYS_VDrawBits_134;

                for (i = 5; i > 0; --i, bitmap++) {
                        sysArgs[2] = __lookup(0, bitmap);
                        __syscall(203);
                        sysArgs[4]++;
                }
                sysArgs[2] = 0;
                __syscall(203);

                _ScreenPos += 6;
        }

        return 0;
}

