# Collection of rotation examples
#
# Shows how to bit-rotate registers in the absence of RISC-V Bitmanip ("B")
# extension.
#
# cf. https://stackoverflow.com/a/60138854/427158
#
# 2024, Saxo Cats

    .text
    .balign 4
    .global rotl3
rotl3:
    slli a2, a0,  3
    srli a3, a0, (-3 & 63) # & 31 for RV32G
    or   a0, a2, a3
    ret
    .global rotr3
rotr3:
    srli a2, a0,  3
    slli a3, a0, (-3 & 63) # & 31 for RV32G
    or   a0, a2, a3
    ret
    .global rotl
rotl:
    sll  a2,   a0, a1
    sub  a4, zero, a1
    srl  a3,   a0, a4
    or   a0,   a2, a3
    ret
    .global rotr
rotr:
    srl  a2,   a0, a1
    sub  a4, zero, a1
    sll  a3,   a0, a4
    or   a0,   a2, a3
    ret
