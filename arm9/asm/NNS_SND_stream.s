	.include "asm/macros.inc"
	.include "global.inc"

	.section .bss

	.global bInitialized$7761
bInitialized$7761: ; 0x021D26D4
	.space 0x4

	.global sStrmList
sStrmList: ; 0x021D26D8
	.space 0xc

	.global buffer$7877
buffer$7877: ; 0x021D26E4
	.space 0x40

	.global sStrmChannel
sStrmChannel: ; 0x021D2724
	.space 0x80

	.section .text

	local_arm_func_start EndSleep
EndSleep: ; 0x020C1198
	stmdb sp!, {r4-r6,lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	ldmeqia sp!, {r4-r6,pc}
	ldr r0, [r4, #0x38]
	cmp r0, #0x0
	beq _020C11E8
	mov r5, #0x1
_020C11C0:
	bl OS_DisableInterrupts
	mov r6, r0
	mov r0, r4
	mov r1, r5
	bl StrmCallback
	mov r0, r6
	bl OS_RestoreInterrupts
	ldr r0, [r4, #0x38]
	cmp r0, #0x0
	bne _020C11C0
_020C11E8:
	ldr r0, [r4, #0x40]
	mov r2, #0x1
	mov r1, #0x0
	mov r2, r2, lsl r0
	ldr r0, [r4, #0x44]
	mov r3, r1
	bl SND_StartTimer
	ldmia sp!, {r4-r6,pc}

	local_arm_func_start BeginSleep
BeginSleep: ; 0x020C1208
	stmdb sp!, {r4,lr}
	ldr r1, [r0, #0x24]
	mov r1, r1, lsl #0x1e
	movs r1, r1, asr #0x1f
	ldmeqia sp!, {r4,pc}
	ldr r2, [r0, #0x40]
	mov r3, #0x1
	mov r1, #0x0
	mov r2, r3, lsl r2
	ldr r0, [r0, #0x44]
	mov r3, r1
	bl SND_StopTimer
	bl SND_GetCurrentCommandTag
	mov r4, r0
	mov r0, #0x1
	bl SND_FlushCommand
	mov r0, r4
	bl SND_WaitForCommandProc
	ldmia sp!, {r4,pc}

	arm_func_start StrmCallback
StrmCallback: ; 0x020C1254
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r1
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl _u32_div_f
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x38]
	mov r3, r0
	mul lr, r3, r2
	cmp r1, #0x0
	mov r12, #0x0
	ble _020C12B8
	ldr r2, _020C1300 ; =sStrmChannel
	ldr r0, _020C1304 ; =buffer$7877
_020C1294:
	add r1, r5, r12
	ldrb r1, [r1, #0x4c]
	ldr r1, [r2, r1, lsl #0x3]
	add r1, r1, lr
	str r1, [r0, r12, lsl #0x2]
	ldr r1, [r5, #0x48]
	add r12, r12, #0x1
	cmp r12, r1
	blt _020C1294
_020C12B8:
	ldr r0, [r5, #0x20]
	ldr r2, _020C1304 ; =buffer$7877
	str r0, [sp, #0x0]
	ldr r12, [r5, #0x34]
	mov r0, r4
	str r12, [sp, #0x4]
	ldr r4, [r5, #0x30]
	blx r4
	ldr r0, [r5, #0x38]
	add r0, r0, #0x1
	str r0, [r5, #0x38]
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	movge r0, #0x0
	strge r0, [r5, #0x38]
	add sp, sp, #0xc
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020C1300: .word sStrmChannel
_020C1304: .word buffer$7877

	local_arm_func_start AlarmCallback
AlarmCallback: ; 0x020C1308
	ldr ip, _020C1314 ; =StrmCallback
	mov r1, #0x1
	bx r12
	.balign 4
_020C1314: .word StrmCallback

	arm_func_start ShutdownStrm
ShutdownStrm: ; 0x020C1318
	stmdb sp!, {r4,lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	bl NNS_SndFreeAlarm
	ldr r0, _020C1344 ; =sStrmList
	mov r1, r4
	bl NNS_FndRemoveListObject
	ldr r0, [r4, #0x24]
	bic r0, r0, #0x1
	str r0, [r4, #0x24]
	ldmia sp!, {r4,pc}
	.balign 4
_020C1344: .word sStrmList

	local_arm_func_start ForceStopStrm
ForceStopStrm: ; 0x020C1348
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r4, r0
	ldr r0, [r4, #0x24]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	beq _020C13B4
	ldr r0, [r4, #0x40]
	mov r2, #0x1
	mov r1, #0x0
	mov r2, r2, lsl r0
	ldr r0, [r4, #0x44]
	mov r3, r1
	bl SND_StopTimer
	add r0, r4, #0x8
	bl PM_DeletePreSleepCallback
	add r0, r4, #0x14
	bl PM_DeletePostSleepCallback
	ldr r0, [r4, #0x24]
	bic r0, r0, #0x2
	str r0, [r4, #0x24]
	bl SND_GetCurrentCommandTag
	mov r5, r0
	mov r0, #0x1
	bl SND_FlushCommand
	mov r0, r5
	bl SND_WaitForCommandProc
_020C13B4:
	mov r0, r4
	bl ShutdownStrm
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}

	arm_func_start NNS_SndStrmSetVolume
NNS_SndStrmSetVolume: ; 0x020C13C4
	stmdb sp!, {r4-r8,lr}
	mov r7, r0
	str r1, [r7, #0x3c]
	ldr r0, [r7, #0x48]
	mov r5, #0x0
	cmp r0, #0x0
	ldmleia sp!, {r4-r8,pc}
	ldr r4, _020C142C ; =sStrmChannel
	mov r8, #0x1
_020C13E8:
	add r0, r7, r5
	ldrb r6, [r0, #0x4c]
	ldr r1, [r7, #0x3c]
	add r0, r4, r6, lsl #0x3
	ldr r0, [r0, #0x4]
	add r0, r1, r0
	bl SND_CalcChannelVolume
	mov r2, r0
	mov r0, r8, lsl r6
	and r1, r2, #0xff
	mov r2, r2, asr #0x8
	bl SND_SetChannelVolume
	ldr r0, [r7, #0x48]
	add r5, r5, #0x1
	cmp r5, r0
	blt _020C13E8
	ldmia sp!, {r4-r8,pc}
	.balign 4
_020C142C: .word sStrmChannel

	arm_func_start NNS_SndStrmStop
NNS_SndStrmStop: ; 0x020C1430
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r1, [r0, #0x24]
	mov r1, r1, lsl #0x1f
	movs r1, r1, asr #0x1f
	addeq sp, sp, #0x4
	ldmeqia sp!, {pc}
	bl ForceStopStrm
	add sp, sp, #0x4
	ldmia sp!, {pc}

	arm_func_start NNS_SndStrmStart
NNS_SndStrmStart: ; 0x020C1458
	stmdb sp!, {r4,lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	mov r2, #0x1
	mov r1, #0x0
	mov r2, r2, lsl r0
	ldr r0, [r4, #0x44]
	mov r3, r1
	bl SND_StartTimer
	ldr r0, [r4, #0x24]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	ldmneia sp!, {r4,pc}
	add r0, r4, #0x8
	bl PM_PrependPreSleepCallback
	add r0, r4, #0x14
	bl PM_AppendPostSleepCallback
	ldr r0, [r4, #0x24]
	orr r0, r0, #0x2
	str r0, [r4, #0x24]
	ldmia sp!, {r4,pc}

	arm_func_start NNS_SndStrmSetup
NNS_SndStrmSetup: ; 0x020C14AC
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x24
	mov r10, r0
	ldr r4, [r10, #0x24]
	mov r9, r1
	mov r1, r4, lsl #0x1f
	movs r1, r1, asr #0x1f
	ldr r1, [sp, #0x4c]
	str r2, [sp, #0x18]
	mov r4, r3
	str r1, [sp, #0x4c]
	beq _020C14E0
	bl NNS_SndStrmStop
_020C14E0:
	ldr r0, [sp, #0x4c]
	ldr r2, [r10, #0x48]
	mov r0, r0, lsl #0x5
	mul r1, r2, r0
	mov r0, r4
	bl _u32_div_f
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x48]
	mul r1, r0, r1
	mov r0, r1, lsl #0x5
	str r0, [r10, #0x28]
	ldr r0, [r10, #0x28]
	cmp r9, #0x1
	moveq r0, r0, lsr #0x1
	mul r0, r2, r0
	ldr r1, [sp, #0x4c]
	bl _u32_div_f
	str r0, [sp, #0x1c]
	bl NNS_SndAllocAlarm
	str r0, [r10, #0x40]
	ldr r0, [r10, #0x40]
	cmp r0, #0x0
	addlt sp, sp, #0x24
	movlt r0, #0x0
	ldmltia sp!, {r4-r11,pc}
	ldr r0, [r10, #0x48]
	mov r8, #0x0
	cmp r0, #0x0
	ble _020C15D4
	ldr r0, [sp, #0x48]
	mov r7, r0, lsl #0x5
	ldr r6, _020C1668 ; =sStrmChannel
	mov r5, r8
	mov r4, #0x7f
	mov r11, #0x40
	mov r0, #0x1
	str r0, [sp, #0x20]
_020C1574:
	ldr r2, [r10, #0x28]
	ldr r1, [sp, #0x18]
	add r0, r10, r8
	mla r1, r2, r8, r1
	ldrb r0, [r0, #0x4c]
	ldr r3, [sp, #0x20]
	str r1, [r6, r0, lsl #0x3]
	add r1, r6, r0, lsl #0x3
	str r5, [r1, #0x4]
	str r5, [sp, #0x0]
	ldr r2, [r10, #0x28]
	mov r1, r9
	mov r2, r2, lsr #0x2
	str r2, [sp, #0x4]
	str r4, [sp, #0x8]
	str r5, [sp, #0xc]
	str r7, [sp, #0x10]
	str r11, [sp, #0x14]
	ldr r2, [r6, r0, lsl #0x3]
	bl SND_SetupChannelPcm
	ldr r0, [r10, #0x48]
	add r8, r8, #0x1
	cmp r8, r0
	blt _020C1574
_020C15D4:
	str r10, [sp, #0x0]
	ldr r1, [sp, #0x1c]
	ldr r0, [r10, #0x40]
	ldr r3, _020C166C ; =AlarmCallback
	mov r2, r1
	bl SND_SetupAlarm
	ldr r0, _020C1670 ; =sStrmList
	mov r1, r10
	bl NNS_FndAppendListObject
	ldr r0, [sp, #0x4c]
	str r9, [r10, #0x20]
	str r0, [r10, #0x2c]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r1, [r10, #0x30]
	str r0, [r10, #0x34]
	mov r0, #0x0
	str r0, [r10, #0x38]
	str r0, [r10, #0x3c]
	ldr r0, [r10, #0x24]
	bic r0, r0, #0x1
	orr r0, r0, #0x1
	str r0, [r10, #0x24]
	bl OS_DisableInterrupts
	mov r4, r0
	mov r2, #0x1
	mov r0, r10
	mov r1, #0x0
	str r2, [r10, #0x2c]
	bl StrmCallback
	ldr r1, [sp, #0x4c]
	mov r0, r4
	str r1, [r10, #0x2c]
	bl OS_RestoreInterrupts
	mov r0, #0x1
	add sp, sp, #0x24
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020C1668: .word sStrmChannel
_020C166C: .word AlarmCallback
_020C1670: .word sStrmList

	arm_func_start NNS_SndStrmFreeChannel
NNS_SndStrmFreeChannel: ; 0x020C1674
	stmdb sp!, {r4,lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	cmp r0, #0x0
	ldmeqia sp!, {r4,pc}
	bl NNS_SndUnlockChannel
	mov r0, #0x0
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	ldmia sp!, {r4,pc}

	arm_func_start NNS_SndStrmAllocChannel
NNS_SndStrmAllocChannel: ; 0x020C169C
	stmdb sp!, {r4-r6,lr}
	mov r5, r1
	mov r4, #0x0
	mov r6, r0
	mov r12, r4
	cmp r5, #0x0
	ble _020C16DC
	mov r1, #0x1
_020C16BC:
	ldrb r3, [r2, r12]
	add r0, r6, r12
	strb r3, [r0, #0x4c]
	ldrb r0, [r2, r12]
	add r12, r12, #0x1
	cmp r12, r5
	orr r4, r4, r1, lsl r0
	blt _020C16BC
_020C16DC:
	mov r0, r4
	bl NNS_SndLockChannel
	cmp r0, #0x0
	moveq r0, #0x0
	strne r5, [r6, #0x48]
	strne r4, [r6, #0x44]
	movne r0, #0x1
	ldmia sp!, {r4-r6,pc}

	arm_func_start NNS_SndStrmInit
NNS_SndStrmInit: ; 0x020C16FC
	stmdb sp!, {r4,lr}
	ldr r1, _020C176C ; =bInitialized$7761
	mov r4, r0
	ldr r0, [r1, #0x0]
	cmp r0, #0x0
	bne _020C172C
	ldr r0, _020C1770 ; =sStrmList
	mov r1, #0x0
	bl NNS_FndInitList
	ldr r0, _020C176C ; =bInitialized$7761
	mov r1, #0x1
	str r1, [r0, #0x0]
_020C172C:
	ldr r1, _020C1774 ; =BeginSleep
	ldr r0, _020C1778 ; =EndSleep
	str r1, [r4, #0x8]
	str r4, [r4, #0xc]
	str r0, [r4, #0x14]
	str r4, [r4, #0x18]
	mov r0, #0x0
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x24]
	bic r0, r0, #0x1
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x24]
	bic r0, r0, #0x2
	str r0, [r4, #0x24]
	ldmia sp!, {r4,pc}
	.balign 4
_020C176C: .word bInitialized$7761
_020C1770: .word sStrmList
_020C1774: .word BeginSleep
_020C1778: .word EndSleep
