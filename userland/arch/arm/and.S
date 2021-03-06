/* https://github.com/cirosantilli/linux-kernel-module-cheat#arm-bitwise-instructions */

#include "common.h"

ENTRY

    /* 0x00 && 0xFF == 0x00 */
    mov r0, 0x00
    and r0, 0xFF
    ASSERT_EQ(r0, 0x00)

    /* 0x0F && 0xF0 == 0x00 */
    mov r0, 0x0F
    and r0, 0xF0
    ASSERT_EQ(r0, 0x00)

    /* 0x0F && 0xFF == 0x0F */
    mov r0, 0x0F
    and r0, 0xFF
    ASSERT_EQ(r0, 0x0F)

    /* 0xF0 && 0xFF == 0xF0 */
    mov r0, 0xF0
    and r0, 0xFF
    ASSERT_EQ(r0, 0xF0)

EXIT
