	.include "asm/macros.inc"
	.include "global.inc"

	.section .data

	.global tex4x4SearchArray_
tex4x4SearchArray_: ; 0x021064C8
	.word vramRegions_
	.word vramRegions_ + 0x48

	.global texNrmSearchArray_
texNrmSearchArray_: ; 0x021064D0
	.word vramRegions_ + 0x60
	.word vramRegions_ + 0x48
	.word vramRegions_
	.word vramRegions_ + 0x30
	.word vramRegions_ + 0x18

	.global vramRegions_
vramRegions_: ; 0x021064E4
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x02, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x03, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x04, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x06, 0x00

	.section .bss

	.global frmExVramMan_
frmExVramMan_: ; 0x021CCD48
	.space 0x4

	.section .text

	arm_func_start NNS_GfdSetFrmTexVramState
NNS_GfdSetFrmTexVramState: ; 0x020AE8CC
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	mov lr, #0x0
	ldr r3, _020AE914 ; =vramRegions_
	mov r12, lr
	mov r2, #0x1
_020AE8E4:
	ldr r1, [r0, r12, lsl #0x2]
	add lr, lr, #0x1
	str r1, [r3, #0x0]
	ldr r1, [r0, r2, lsl #0x2]
	cmp lr, #0x5
	str r1, [r3, #0x4]
	add r12, r12, #0x2
	add r3, r3, #0x18
	add r2, r2, #0x2
	blt _020AE8E4
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020AE914: .word vramRegions_
	arm_func_end NNS_GfdSetFrmTexVramState

	arm_func_start NNS_GfdGetFrmTexVramState
NNS_GfdGetFrmTexVramState: ; 0x020AE918
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	mov lr, #0x0
	ldr ip, _020AE960 ; =vramRegions_
	mov r3, lr
	mov r2, #0x1
_020AE930:
	ldr r1, [r12, #0x0]
	add lr, lr, #0x1
	str r1, [r0, r3, lsl #0x2]
	ldr r1, [r12, #0x4]
	cmp lr, #0x5
	str r1, [r0, r2, lsl #0x2]
	add r12, r12, #0x18
	add r3, r3, #0x2
	add r2, r2, #0x2
	blt _020AE930
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020AE960: .word vramRegions_
	arm_func_end NNS_GfdGetFrmTexVramState

	arm_func_start NNS_GfdFreeFrmTexVram
NNS_GfdFreeFrmTexVram: ; 0x020AE964
	mov r0, #0x0
	bx lr
	arm_func_end NNS_GfdFreeFrmTexVram

	arm_func_start NNS_GfdAllocFrmTexVram
NNS_GfdAllocFrmTexVram: ; 0x020AE96C
	stmdb sp!, {r4-r10,lr}
	cmp r0, #0x0
	moveq r7, #0x10
	addne r0, r0, #0xf
	bicne r7, r0, #0xf
	ldr r0, _020AEADC ; =0x0007FFF0
	cmp r7, r0
	movcs r0, #0x0
	ldmcsia sp!, {r4-r10,pc}
	cmp r1, #0x0
	beq _020AEA5C
	mov lr, r7, lsr #0x1
	mov r6, #0x0
	ldr r2, _020AEAE0 ; =vramRegions_ + 0x30
	ldr r3, _020AEAE4 ; =vramRegions_ + 0x18
	ldr ip, _020AEAE8 ; =tex4x4SearchArray_
	mov r0, r6
_020AE9B0:
	ldr r5, [r12, r6, lsl #0x2]
	ldr r4, [r5, #0x8]
	cmp r4, #0x0
	beq _020AEA48
	ldr r9, [r5, #0x4]
	ldr r4, [r5, #0x0]
	sub r4, r9, r4
	cmp r4, r7
	blo _020AEA48
	ldrh r4, [r5, #0x10]
	cmp r4, #0x0
	beq _020AE9EC
	cmp r4, #0x3
	beq _020AE9F4
	b _020AE9FC
_020AE9EC:
	mov r4, r3
	b _020AEA00
_020AE9F4:
	mov r4, r2
	b _020AEA00
_020AE9FC:
	mov r4, r0
_020AEA00:
	ldr r9, [r4, #0x8]
	cmp r9, #0x0
	beq _020AEA48
	ldr r10, [r4, #0x4]
	ldr r9, [r4, #0x0]
	sub r9, r10, r9
	cmp r9, lr
	blo _020AEA48
	ldr r3, [r5, #0x0]
	mov r0, #0x1
	add r2, r3, r7
	str r2, [r5, #0x0]
	ldr r2, [r4, #0x0]
	add r2, r2, lr
	str r2, [r4, #0x0]
	ldr r2, [r5, #0x14]
	add r8, r3, r2
	b _020AEAB8
_020AEA48:
	add r6, r6, #0x1
	cmp r6, #0x2
	blt _020AE9B0
	mov r0, #0x0
	b _020AEAB8
_020AEA5C:
	ldr r3, _020AEAEC ; =texNrmSearchArray_
	mov r5, #0x0
_020AEA64:
	ldr r4, [r3, r5, lsl #0x2]
	ldr r0, [r4, #0x8]
	cmp r0, #0x0
	beq _020AEAA8
	ldr r2, [r4, #0x4]
	ldr r0, [r4, #0x0]
	sub r0, r2, r0
	cmp r0, r7
	blo _020AEAA8
	ldr r2, [r4, #0x4]
	mov r0, #0x1
	sub r2, r2, r7
	str r2, [r4, #0x4]
	ldr r3, [r4, #0x4]
	ldr r2, [r4, #0x14]
	add r8, r3, r2
	b _020AEAB8
_020AEAA8:
	add r5, r5, #0x1
	cmp r5, #0x5
	blt _020AEA64
	mov r0, #0x0
_020AEAB8:
	cmp r0, #0x0
	moveq r0, #0x0
	ldmeqia sp!, {r4-r10,pc}
	ldr r0, _020AEAF0 ; =0x0000FFFF
	mov r2, r7, lsr #0x4
	and r0, r0, r8, lsr #0x3
	orr r0, r0, r2, lsl #0x10
	orr r0, r0, r1, lsl #0x1f
	ldmia sp!, {r4-r10,pc}
	.balign 4
_020AEADC: .word 0x0007FFF0
_020AEAE0: .word vramRegions_ + 0x30
_020AEAE4: .word vramRegions_ + 0x18
_020AEAE8: .word tex4x4SearchArray_
_020AEAEC: .word texNrmSearchArray_
_020AEAF0: .word 0x0000FFFF
	arm_func_end NNS_GfdAllocFrmTexVram

	arm_func_start NNS_GfdResetFrmTexVramState
NNS_GfdResetFrmTexVramState: ; 0x020AEAF4
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldr r0, _020AEB68 ; =frmExVramMan_
	mov r6, #0x0
	ldrh r7, [r0, #0x0]
	ldr r5, _020AEB6C ; =vramRegions_
	mov lr, r6
	cmp r7, #0x1
	addhi r7, r7, #0x1
	mov r1, r6
	mov r3, r6
	mov r4, #0x1
	mov r0, #0x20000
	mov r2, #0x10000
_020AEB2C:
	cmp r6, r7
	strlt r4, [r5, #0x8]
	strge lr, [r5, #0x8]
	ldr r12, [r5, #0xc]
	add r6, r6, #0x1
	cmp r12, #0x0
	strne r3, [r5, #0x0]
	strne r2, [r5, #0x4]
	streq r1, [r5, #0x0]
	streq r0, [r5, #0x4]
	cmp r6, #0x5
	add r5, r5, #0x18
	blt _020AEB2C
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020AEB68: .word frmExVramMan_
_020AEB6C: .word vramRegions_
	arm_func_end NNS_GfdResetFrmTexVramState

	arm_func_start NNS_GfdInitFrmTexVramManager
NNS_GfdInitFrmTexVramManager: ; 0x020AEB70
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	mov r4, r1
	cmp r5, #0x2
	bhi _020AEBA8
	mov r12, #0x1
	mov r0, #0x4
	mov r1, #0x3
	mov r2, #0x2
	mov r3, #0x0
	str r12, [sp, #0x0]
	bl NNSi_GfdSetTexNrmSearchArray
	b _020AEBC4
_020AEBA8:
	mov r12, #0x1
	mov r0, #0x4
	mov r1, #0x3
	mov r2, #0x0
	mov r3, #0x2
	str r12, [sp, #0x0]
	bl NNSi_GfdSetTexNrmSearchArray
_020AEBC4:
	ldr r0, _020AEBFC ; =frmExVramMan_
	strh r5, [r0, #0x0]
	bl NNS_GfdResetFrmTexVramState
	cmp r4, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r5,pc}
	ldr r3, _020AEC00 ; =NNS_GfdAllocFrmTexVram
	ldr r1, _020AEC04 ; =NNS_GfdDefaultFuncAllocTexVram
	ldr r2, _020AEC08 ; =NNS_GfdFreeFrmTexVram
	ldr r0, _020AEC0C ; =NNS_GfdDefaultFuncFreeTexVram
	str r3, [r1, #0x0]
	str r2, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020AEBFC: .word frmExVramMan_
_020AEC00: .word NNS_GfdAllocFrmTexVram
_020AEC04: .word NNS_GfdDefaultFuncAllocTexVram
_020AEC08: .word NNS_GfdFreeFrmTexVram
_020AEC0C: .word NNS_GfdDefaultFuncFreeTexVram
	arm_func_end NNS_GfdInitFrmTexVramManager

	arm_func_start NNSi_GfdSetTexNrmSearchArray
NNSi_GfdSetTexNrmSearchArray: ; 0x020AEC10
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldr lr, [sp, #0x18]
	ldr r6, _020AEC58 ; =vramRegions_
	mov r12, #0x18
	mla r7, r0, r12, r6
	ldr r0, _020AEC5C ; =texNrmSearchArray_
	mla r5, r1, r12, r6
	mla r4, r2, r12, r6
	mla r2, r3, r12, r6
	mla r1, lr, r12, r6
	str r7, [r0, #0x0]
	str r5, [r0, #0x4]
	str r4, [r0, #0x8]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020AEC58: .word vramRegions_
_020AEC5C: .word texNrmSearchArray_
	arm_func_end NNSi_GfdSetTexNrmSearchArray
