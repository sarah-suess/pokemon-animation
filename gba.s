	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"gba.c"
	.text
	.align	2
	.global	drawRect
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ldrh	ip, [sp, #8]
	ble	.L1
	rsb	r1, r1, r1, lsl #4
	add	r3, r2, r1, lsl #4
	add	r3, r3, r0
	mov	r0, #0
	ldr	r4, .L10
	ldr	r1, [r4]
	rsb	r4, r2, r2, lsl #31
	add	r1, r1, r3, lsl #1
	lsl	r4, r4, #1
.L3:
	cmp	r2, #0
	addgt	r3, r1, r4
	ble	.L6
.L4:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L4
.L6:
	add	r0, r0, #1
	cmp	lr, r0
	add	r1, r1, #480
	bne	.L3
.L1:
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	ldr	r3, [r3]
	add	r2, r3, #76800
.L13:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L13
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L19:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L19
	mov	r2, #67108864
.L20:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L20
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	drawBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlank, %function
drawBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L29
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #4
	add	r2, r0, r1, lsl #4
	add	r3, r3, #34
	lsl	r0, r1, #4
	ldr	r1, .L29+4
	add	r2, r3, r2, lsl #1
	add	ip, r0, #4080
.L25:
	sub	r3, r2, #34
.L26:
	strh	r1, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L26
	add	r0, r0, #240
	cmp	r0, ip
	add	r2, r3, #480
	bne	.L25
	bx	lr
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.word	15855
	.size	drawBlank, .-drawBlank
	.align	2
	.global	drawBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBall, %function
drawBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r10, r0, #5
	mov	r5, #31
	mov	fp, r10
	sub	sp, sp, #44
	rsb	r7, r1, r1, lsl #4
	add	r1, r0, #6
	str	r1, [sp, #8]
	ldr	r3, .L33
	add	r1, r0, #2
	add	r9, r0, #4
	str	r1, [sp, #12]
	add	r1, r0, #10
	ldr	r3, [r3]
	str	r1, [sp, #32]
	add	r1, r9, r7, lsl #4
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r1, r10, r7, lsl #4
	add	r8, r0, #1
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	str	r8, [sp, #28]
	add	r1, r0, #6
	add	r8, r0, #7
	lsl	lr, r7, #4
	add	r10, r1, r7, lsl #4
	add	r7, r8, r7, lsl #4
	lsl	r10, r10, #1
	lsl	r7, r7, #1
	strh	r2, [r3, r10]	@ movhi
	add	r6, lr, #240
	strh	r2, [r3, r7]	@ movhi
	add	r7, r0, #2
	add	r7, r6, r7
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r0, #3
	add	r7, r6, r7
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r9, r6
	lsl	r7, r7, #1
	strh	r5, [r3, r7]	@ movhi
	add	r7, fp, r6
	lsl	r7, r7, #1
	strh	r5, [r3, r7]	@ movhi
	add	r7, r0, #6
	add	r7, r7, r6
	lsl	r7, r7, #1
	strh	r5, [r3, r7]	@ movhi
	add	r7, r8, r6
	lsl	r7, r7, #1
	strh	r5, [r3, r7]	@ movhi
	str	r8, [sp]
	add	r7, r0, #8
	add	r8, r0, #9
	add	r7, r6, r7
	add	r6, r6, r8
	add	ip, r0, #8
	lsl	r7, r7, #1
	lsl	r6, r6, #1
	strh	r2, [r3, r7]	@ movhi
	str	ip, [sp, #20]
	strh	r2, [r3, r6]	@ movhi
	add	ip, lr, #480
	add	r6, r0, #1
	add	r6, ip, r6
	lsl	r6, r6, #1
	strh	r2, [r3, r6]	@ movhi
	add	r6, r0, #2
	add	r6, r6, ip
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	add	r6, r0, #3
	add	r6, r6, ip
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	add	r6, r9, ip
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	add	r6, fp, ip
	add	r7, r0, #6
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	add	r6, r7, ip
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	ldr	r6, [sp]
	add	r8, r0, #11
	add	r6, r6, ip
	str	r8, [sp, #36]
	add	r7, r0, #8
	add	r8, r0, #9
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	add	r6, r7, ip
	add	r7, r8, ip
	add	r8, r0, #10
	add	ip, ip, r8
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	lsl	r6, ip, #1
	mov	ip, #21	@ movhi
	lsl	r7, r7, #1
	strh	ip, [r3, r7]	@ movhi
	mvn	r7, #32768
	mov	r10, fp
	add	r4, r0, #3
	str	r4, [sp, #24]
	add	r8, r0, #1
	add	r4, lr, #720
	strh	r2, [r3, r6]	@ movhi
	add	r6, r8, r4
	lsl	r6, r6, #1
	strh	r2, [r3, r6]	@ movhi
	mov	fp, ip	@ movhi
	add	r6, r0, #2
	add	r6, r6, r4
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	add	r6, r0, #3
	add	r6, r6, r4
	lsl	r6, r6, #1
	strh	r7, [r3, r6]	@ movhi
	add	r6, r9, r4
	lsl	r6, r6, #1
	strh	r7, [r3, r6]	@ movhi
	mov	r7, r10
	add	r6, r10, r4
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	add	r6, r0, #6
	ldr	r10, [sp]
	add	r6, r6, r4
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	add	r6, r10, r4
	lsl	r6, r6, #1
	add	r10, r0, #8
	strh	r5, [r3, r6]	@ movhi
	add	r6, r10, r4
	add	r8, r0, #9
	add	r10, r0, #10
	lsl	r6, r6, #1
	strh	r5, [r3, r6]	@ movhi
	add	r6, r8, r4
	add	r4, r10, r4
	add	r1, lr, #960
	lsl	r6, r6, #1
	lsl	r4, r4, #1
	strh	fp, [r3, r6]	@ movhi
	strh	r2, [r3, r4]	@ movhi
	add	r4, r1, r0
	lsl	r4, r4, #1
	strh	r2, [r3, r4]	@ movhi
	add	r4, r0, #1
	add	r4, r4, r1
	lsl	r4, r4, #1
	strh	r5, [r3, r4]	@ movhi
	add	r4, r0, #2
	add	r4, r4, r1
	lsl	r4, r4, #1
	strh	r5, [r3, r4]	@ movhi
	mov	r6, r7
	add	r4, r0, #3
	add	r4, r4, r1
	lsl	r4, r4, #1
	strh	r5, [r3, r4]	@ movhi
	add	r4, r9, r1
	lsl	r4, r4, #1
	strh	r5, [r3, r4]	@ movhi
	add	r4, r7, r1
	lsl	r4, r4, #1
	add	r7, r0, #6
	strh	r5, [r3, r4]	@ movhi
	add	r4, r7, r1
	lsl	r4, r4, #1
	strh	r5, [r3, r4]	@ movhi
	ldr	r4, [sp]
	add	r4, r4, r1
	add	r7, r0, #8
	lsl	r4, r4, #1
	strh	r5, [r3, r4]	@ movhi
	add	r4, r7, r1
	lsl	r4, r4, #1
	strh	r5, [r3, r4]	@ movhi
	add	r4, r8, r1
	str	r8, [sp, #16]
	add	r7, r0, #10
	add	r8, r0, #11
	lsl	r4, r4, #1
	strh	r5, [r3, r4]	@ movhi
	add	r4, r7, r1
	add	r1, r1, r8
	add	ip, lr, #1200
	lsl	r4, r4, #1
	lsl	r1, r1, #1
	strh	fp, [r3, r4]	@ movhi
	strh	r2, [r3, r1]	@ movhi
	add	r1, ip, r0
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r1, r0, #1
	add	r1, r1, ip
	lsl	r1, r1, #1
	strh	r5, [r3, r1]	@ movhi
	add	r1, r0, #2
	add	r1, r1, ip
	lsl	r1, r1, #1
	strh	r5, [r3, r1]	@ movhi
	add	r1, r0, #3
	add	r1, r1, ip
	lsl	r1, r1, #1
	strh	r5, [r3, r1]	@ movhi
	add	r1, r9, ip
	lsl	r1, r1, #1
	strh	r5, [r3, r1]	@ movhi
	add	r1, r6, ip
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r1, r0, #6
	add	r1, r1, ip
	lsl	r1, r1, #1
	str	r6, [sp, #4]
	strh	r2, [r3, r1]	@ movhi
	ldr	r4, [sp]
	add	r1, r4, ip
	add	r6, r0, #8
	lsl	r1, r1, #1
	strh	r5, [r3, r1]	@ movhi
	ldr	r8, [sp, #16]
	add	r1, r6, ip
	lsl	r1, r1, #1
	strh	r5, [r3, r1]	@ movhi
	add	r1, r8, ip
	add	r4, r0, #10
	add	r8, r0, #11
	lsl	r1, r1, #1
	strh	r5, [r3, r1]	@ movhi
	add	r1, r4, ip
	add	ip, r8, ip
	lsl	r1, r1, #1
	lsl	ip, ip, #1
	strh	fp, [r3, r1]	@ movhi
	strh	r2, [r3, ip]	@ movhi
	ldr	ip, [sp, #28]
	add	r10, lr, #1440
	add	r7, lr, #1680
	add	r1, r10, r0
	add	r6, r7, r0
	add	r0, ip, r10
	mvn	ip, #32768
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	ldr	fp, [sp, #24]
	ldr	r1, [sp, #12]
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	add	r1, r1, r10
	add	r0, fp, r10
	lsl	r1, r1, #1
	lsl	r0, r0, #1
	strh	r5, [r3, r1]	@ movhi
	strh	r5, [r3, r0]	@ movhi
	add	r1, r9, r10
	ldr	r0, [sp, #4]
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r0, r0, r10
	ldr	r1, [sp, #8]
	lsl	r0, r0, #1
	strh	ip, [r3, r0]	@ movhi
	add	r1, r1, r10
	ldr	ip, .L33+4
	ldr	r0, [sp]
	lsl	r1, r1, #1
	strh	ip, [r3, r1]	@ movhi
	add	r1, r0, r10
	ldr	r0, [sp, #20]
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	ldr	r8, [sp, #16]
	add	r1, r0, r10
	lsl	r1, r1, #1
	strh	r5, [r3, r1]	@ movhi
	add	r1, r8, r10
	lsl	r1, r1, #1
	strh	r5, [r3, r1]	@ movhi
	ldr	r5, [sp, #32]
	add	r0, r5, r10
	ldr	r5, [sp, #36]
	add	r10, r5, r10
	lsl	r6, r6, #1
	lsl	r0, r0, #1
	lsl	r10, r10, #1
	strh	r2, [r3, r0]	@ movhi
	strh	r2, [r3, r10]	@ movhi
	strh	r2, [r3, r6]	@ movhi
	mvn	r6, #32768
	add	r4, lr, #1920
	add	r1, lr, #2160
	add	r0, lr, #2400
	add	lr, lr, #2640
	str	lr, [sp, #36]
	ldr	lr, [sp, #28]
	add	lr, lr, r7
	lsl	lr, lr, #1
	strh	r6, [r3, lr]	@ movhi
	ldr	lr, [sp, #12]
	add	lr, lr, r7
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	add	lr, fp, r7
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	ldr	r10, [sp, #4]
	add	lr, r9, r7
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	add	lr, r10, r7
	lsl	lr, lr, #1
	strh	ip, [r3, lr]	@ movhi
	ldr	lr, [sp, #8]
	ldr	r6, [sp]
	add	lr, lr, r7
	lsl	lr, lr, #1
	strh	ip, [r3, lr]	@ movhi
	add	lr, r6, r7
	ldr	r6, [sp, #20]
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	add	lr, r6, r7
	lsl	lr, lr, #1
	ldr	r6, [sp, #32]
	strh	r2, [r3, lr]	@ movhi
	add	lr, r8, r7
	ldr	r8, [sp, #28]
	add	r5, r5, r7
	lsl	lr, lr, #1
	add	r7, r6, r7
	strh	r2, [r3, lr]	@ movhi
	lsl	r6, r7, #1
	add	lr, r8, r1
	add	r7, r8, r4
	mvn	r8, #32768
	lsl	r5, r5, #1
	strh	ip, [r3, r6]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	add	r5, fp, r4
	mov	fp, r8
	ldr	r6, [sp, #12]
	add	r6, r6, r4
	lsl	r7, r7, #1
	lsl	r6, r6, #1
	lsl	r5, r5, #1
	strh	r2, [r3, r7]	@ movhi
	strh	r8, [r3, r6]	@ movhi
	add	r7, r9, r4
	strh	r8, [r3, r5]	@ movhi
	ldr	r5, [sp, #8]
	lsl	r7, r7, #1
	strh	r8, [r3, r7]	@ movhi
	add	r6, r10, r4
	ldr	r8, [sp, #16]
	add	r5, r5, r4
	lsl	r6, r6, #1
	lsl	r5, r5, #1
	strh	r2, [r3, r6]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	add	r5, r8, r4
	ldr	r8, [sp, #32]
	ldr	r7, [sp]
	ldr	r6, [sp, #20]
	add	r10, r8, r1
	add	r7, r7, r4
	add	r6, r6, r4
	add	r4, r8, r4
	lsl	r8, r10, #1
	str	r8, [sp, #28]
	mov	r8, fp
	lsl	r7, r7, #1
	strh	fp, [r3, r7]	@ movhi
	ldr	r7, [sp, #12]
	ldr	r10, [sp, #12]
	add	r10, r10, r0
	lsl	fp, r10, #1
	str	fp, [sp, #32]
	ldr	fp, [sp, #24]
	lsl	r6, r6, #1
	strh	r8, [r3, r6]	@ movhi
	add	r7, r7, r1
	add	r6, fp, r1
	add	r10, fp, r0
	lsl	lr, lr, #1
	lsl	r5, r5, #1
	lsl	r4, r4, #1
	lsl	r7, r7, #1
	lsl	r6, r6, #1
	strh	ip, [r3, r5]	@ movhi
	lsl	fp, r10, #1
	strh	r2, [r3, r4]	@ movhi
	ldr	r10, [sp, #20]
	strh	r2, [r3, lr]	@ movhi
	ldr	r4, [sp, #4]
	strh	r8, [r3, r7]	@ movhi
	ldr	lr, [sp, #8]
	strh	r8, [r3, r6]	@ movhi
	ldr	r7, [sp]
	ldr	r6, [sp, #16]
	str	fp, [sp, #24]
	add	r5, r9, r1
	add	fp, r10, r1
	add	r4, r4, r1
	add	lr, lr, r1
	add	r7, r7, r1
	add	r1, r6, r1
	lsl	r1, r1, #1
	str	r1, [sp, #16]
	mov	r1, r8
	lsl	r5, r5, #1
	lsl	r4, r4, #1
	strh	r8, [r3, r5]	@ movhi
	add	r6, r6, r0
	strh	r1, [r3, r4]	@ movhi
	ldr	r8, [sp, #36]
	ldr	r4, [sp, #4]
	lsl	r6, r6, #1
	mov	r1, r8
	str	r6, [sp, #20]
	add	r5, r4, r8
	add	r6, r9, r8
	mvn	r8, #32768
	lsl	lr, lr, #1
	lsl	r7, r7, #1
	strh	r8, [r3, lr]	@ movhi
	str	r7, [sp, #12]
	ldr	lr, [sp, #8]
	add	r7, r10, r0
	add	r10, r9, r0
	add	r9, r4, r0
	ldr	r4, [sp]
	add	r8, lr, r0
	add	r0, r4, r0
	add	r4, lr, r1
	ldr	lr, [sp]
	add	lr, lr, r1
	ldr	r1, [sp, #12]
	strh	ip, [r3, r1]	@ movhi
	ldr	r1, [sp, #16]
	lsl	fp, fp, #1
	strh	ip, [r3, fp]	@ movhi
	strh	ip, [r3, r1]	@ movhi
	ldr	r1, [sp, #28]
	strh	r2, [r3, r1]	@ movhi
	ldr	fp, [sp, #32]
	ldr	r1, [sp, #20]
	strh	r2, [r3, fp]	@ movhi
	ldr	fp, [sp, #24]
	lsl	r7, r7, #1
	lsl	r10, r10, #1
	lsl	r6, r6, #1
	lsl	r9, r9, #1
	lsl	r5, r5, #1
	lsl	r8, r8, #1
	lsl	r0, r0, #1
	lsl	r4, r4, #1
	lsl	lr, lr, #1
	strh	r2, [r3, fp]	@ movhi
	strh	ip, [r3, r10]	@ movhi
	strh	ip, [r3, r9]	@ movhi
	strh	ip, [r3, r8]	@ movhi
	strh	ip, [r3, r0]	@ movhi
	strh	r2, [r3, r7]	@ movhi
	strh	r2, [r3, r1]	@ movhi
	strh	r2, [r3, r6]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	strh	r2, [r3, r4]	@ movhi
	strh	r2, [r3, lr]	@ movhi
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.word	15855
	.size	drawBall, .-drawBall
	.align	2
	.global	drawBallSquish
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBallSquish, %function
drawBallSquish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, r0, #9
	mov	r6, fp
	mov	r8, #31
	sub	sp, sp, #52
	add	ip, r0, #4
	str	ip, [sp, #4]
	add	ip, r0, #10
	str	ip, [sp, #20]
	ldr	r3, .L37
	add	ip, r0, #1
	rsb	r1, r1, r1, lsl #4
	str	ip, [sp, #32]
	add	lr, r0, #5
	add	ip, r0, #4
	ldr	r3, [r3]
	str	lr, [sp, #8]
	add	lr, ip, r1, lsl #4
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	add	lr, r0, #5
	add	lr, lr, r1, lsl #4
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	add	lr, r0, #6
	add	lr, lr, r1, lsl #4
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	add	lr, r0, #7
	add	lr, lr, r1, lsl #4
	add	r10, r0, #8
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	lsl	r9, r1, #4
	add	lr, r10, r1, lsl #4
	add	r1, r6, r1, lsl #4
	add	r5, r0, #7
	lsl	lr, lr, #1
	lsl	r1, r1, #1
	strh	r2, [r3, lr]	@ movhi
	str	r5, [sp, #16]
	strh	r2, [r3, r1]	@ movhi
	add	r5, r9, #240
	add	r1, r0, #2
	add	r1, r5, r1
	add	fp, r0, #3
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r1, r5, fp
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r1, r0, #4
	add	r1, r1, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	add	r1, r0, #5
	add	r1, r1, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	add	r1, r0, #6
	add	r1, r1, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	add	r1, r0, #7
	add	r1, r1, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	add	r1, r10, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	add	r1, r6, r5
	add	ip, r0, #12
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	str	ip, [sp, #36]
	add	r1, r0, #10
	add	ip, r0, #11
	add	r4, r0, #6
	add	r1, r5, r1
	add	r5, r5, ip
	str	r4, [sp, #12]
	lsl	r1, r1, #1
	add	r4, r0, #11
	lsl	r5, r5, #1
	strh	r2, [r3, r1]	@ movhi
	str	r4, [sp, #28]
	strh	r2, [r3, r5]	@ movhi
	add	r4, r9, #480
	add	r5, r0, #1
	add	r5, r4, r5
	str	r6, [sp]
	lsl	r5, r5, #1
	add	r6, r0, #2
	strh	r2, [r3, r5]	@ movhi
	add	r5, r6, r4
	lsl	r5, r5, #1
	strh	r8, [r3, r5]	@ movhi
	add	r5, fp, r4
	add	ip, r0, #4
	lsl	r5, r5, #1
	strh	r8, [r3, r5]	@ movhi
	add	r5, ip, r4
	lsl	r5, r5, #1
	strh	r8, [r3, r5]	@ movhi
	add	r5, r0, #5
	add	r5, r5, r4
	lsl	r5, r5, #1
	strh	r8, [r3, r5]	@ movhi
	add	r5, r0, #6
	add	r5, r5, r4
	lsl	r5, r5, #1
	strh	r8, [r3, r5]	@ movhi
	add	r5, r0, #7
	add	r5, r5, r4
	lsl	r5, r5, #1
	strh	r8, [r3, r5]	@ movhi
	mov	r7, #21
	ldr	ip, [sp]
	add	r5, r10, r4
	lsl	r5, r5, #1
	strh	r8, [r3, r5]	@ movhi
	add	r5, ip, r4
	lsl	r5, r5, #1
	add	ip, r0, #10
	strh	r8, [r3, r5]	@ movhi
	add	r5, ip, r4
	lsl	r5, r5, #1
	add	ip, r0, #11
	strh	r8, [r3, r5]	@ movhi
	add	r5, ip, r4
	add	ip, r0, #12
	add	r4, r4, ip
	mvn	ip, #32768
	lsl	r5, r5, #1
	lsl	r4, r4, #1
	strh	r7, [r3, r5]	@ movhi
	add	lr, r9, #720
	strh	r2, [r3, r4]	@ movhi
	add	r4, r0, #1
	add	r4, r4, lr
	lsl	r4, r4, #1
	strh	r2, [r3, r4]	@ movhi
	add	r4, r6, lr
	lsl	r4, r4, #1
	strh	r8, [r3, r4]	@ movhi
	add	r4, fp, lr
	lsl	r4, r4, #1
	strh	ip, [r3, r4]	@ movhi
	add	r4, r0, #4
	add	r5, r0, #13
	add	r4, r4, lr
	str	r5, [sp, #40]
	lsl	r4, r4, #1
	add	r5, r0, #5
	strh	ip, [r3, r4]	@ movhi
	add	r4, r5, lr
	lsl	r4, r4, #1
	strh	ip, [r3, r4]	@ movhi
	add	r4, r0, #6
	add	r4, r4, lr
	lsl	r4, r4, #1
	strh	r8, [r3, r4]	@ movhi
	add	r4, r0, #7
	add	r4, r4, lr
	lsl	r4, r4, #1
	strh	r8, [r3, r4]	@ movhi
	ldr	ip, [sp]
	add	r4, r10, lr
	lsl	r4, r4, #1
	strh	r8, [r3, r4]	@ movhi
	add	r4, ip, lr
	lsl	r4, r4, #1
	add	ip, r0, #10
	strh	r8, [r3, r4]	@ movhi
	add	r4, ip, lr
	lsl	r4, r4, #1
	add	ip, r0, #11
	strh	r8, [r3, r4]	@ movhi
	add	r4, ip, lr
	add	ip, r0, #12
	add	lr, ip, lr
	add	r1, r9, #960
	lsl	r4, r4, #1
	lsl	lr, lr, #1
	strh	r7, [r3, r4]	@ movhi
	strh	r2, [r3, lr]	@ movhi
	add	lr, r1, r0
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	add	lr, r0, #1
	add	lr, lr, r1
	lsl	lr, lr, #1
	strh	r8, [r3, lr]	@ movhi
	add	lr, r6, r1
	lsl	lr, lr, #1
	strh	r8, [r3, lr]	@ movhi
	add	lr, fp, r1
	add	ip, r0, #4
	lsl	lr, lr, #1
	strh	r8, [r3, lr]	@ movhi
	add	lr, ip, r1
	lsl	lr, lr, #1
	strh	r8, [r3, lr]	@ movhi
	add	lr, r0, #5
	add	lr, lr, r1
	add	r4, r0, #6
	lsl	lr, lr, #1
	strh	r8, [r3, lr]	@ movhi
	add	lr, r4, r1
	lsl	lr, lr, #1
	strh	r8, [r3, lr]	@ movhi
	add	lr, r0, #7
	add	lr, lr, r1
	lsl	lr, lr, #1
	strh	r8, [r3, lr]	@ movhi
	ldr	ip, [sp]
	add	lr, r10, r1
	lsl	lr, lr, #1
	strh	r8, [r3, lr]	@ movhi
	add	lr, ip, r1
	lsl	lr, lr, #1
	add	ip, r0, #10
	strh	r8, [r3, lr]	@ movhi
	add	lr, ip, r1
	lsl	lr, lr, #1
	add	ip, r0, #11
	strh	r8, [r3, lr]	@ movhi
	add	lr, ip, r1
	add	r4, r0, #12
	lsl	lr, lr, #1
	strh	r8, [r3, lr]	@ movhi
	add	lr, r4, r1
	add	r4, r0, #13
	add	r1, r1, r4
	add	r5, r9, #1200
	lsl	lr, lr, #1
	lsl	r1, r1, #1
	strh	r7, [r3, lr]	@ movhi
	strh	r2, [r3, r1]	@ movhi
	add	r1, r5, r0
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	ldr	r1, [sp, #32]
	add	r1, r1, r5
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r1, r6, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	add	r1, fp, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	ldr	r1, [sp, #4]
	add	r1, r1, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	ldr	r1, [sp, #8]
	add	r4, r9, #1440
	add	r7, r4, r0
	add	r1, r1, r5
	ldr	r0, [sp, #12]
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	add	r1, r0, r5
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	ldr	r1, [sp, #16]
	add	r1, r1, r5
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	str	r10, [sp, #24]
	add	r1, r10, r5
	mvn	r10, #32768
	ldr	ip, [sp]
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	add	r1, ip, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #28]
	add	r1, r1, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	add	r1, r0, r5
	lsl	r1, r1, #1
	strh	r8, [r3, r1]	@ movhi
	ldr	r8, [sp, #36]
	add	r1, r8, r5
	ldr	r8, [sp, #40]
	add	r5, r8, r5
	lsl	r1, r1, #1
	lsl	r5, r5, #1
	strh	r2, [r3, r1]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	ldr	r5, [sp, #32]
	add	r5, r5, r4
	add	lr, r9, #1680
	add	r0, r9, #1920
	add	r1, r9, #2160
	lsl	r7, r7, #1
	add	r9, r9, #2400
	lsl	r5, r5, #1
	str	r9, [sp, #44]
	strh	r2, [r3, r7]	@ movhi
	str	r6, [sp, #40]
	add	r7, r6, r4
	strh	r10, [r3, r5]	@ movhi
	ldr	r6, [sp, #4]
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	ldr	r9, [sp, #8]
	add	r5, fp, r4
	add	r7, r6, r4
	lsl	r5, r5, #1
	lsl	r7, r7, #1
	strh	r2, [r3, r5]	@ movhi
	strh	r2, [r3, r7]	@ movhi
	add	r5, r9, r4
	ldr	r7, [sp, #12]
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r7, r7, r4
	ldr	r5, [sp, #16]
	lsl	r7, r7, #1
	strh	r10, [r3, r7]	@ movhi
	add	r5, r5, r4
	ldr	r10, [sp, #24]
	ldr	r7, .L37+4
	lsl	r5, r5, #1
	strh	r7, [r3, r5]	@ movhi
	add	r5, r10, r4
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r5, ip, r4
	ldr	ip, [sp, #20]
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r5, ip, r4
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	ldr	ip, [sp, #36]
	ldr	r5, [sp, #28]
	add	r8, r8, r4
	add	r5, r5, r4
	add	r4, ip, r4
	mvn	ip, #32768
	lsl	r8, r8, #1
	lsl	r5, r5, #1
	lsl	r4, r4, #1
	strh	r2, [r3, r5]	@ movhi
	strh	r7, [r3, r4]	@ movhi
	strh	r2, [r3, r8]	@ movhi
	ldr	r4, [sp, #32]
	ldr	r8, [sp, #40]
	ldr	r6, [sp, #4]
	add	r5, r4, lr
	add	r8, r8, lr
	lsl	r5, r5, #1
	lsl	r8, r8, #1
	strh	r2, [r3, r5]	@ movhi
	strh	ip, [r3, r8]	@ movhi
	add	r8, r6, lr
	mov	r6, ip	@ movhi
	add	r5, fp, lr
	lsl	r5, r5, #1
	strh	ip, [r3, r5]	@ movhi
	add	r5, r9, lr
	lsl	r8, r8, #1
	lsl	r5, r5, #1
	strh	ip, [r3, r8]	@ movhi
	strh	ip, [r3, r5]	@ movhi
	ldr	r8, [sp, #12]
	ldr	r5, [sp, #16]
	add	r8, r8, lr
	add	r5, r5, lr
	lsl	r8, r8, #1
	lsl	r5, r5, #1
	strh	r2, [r3, r8]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	ldr	ip, [sp]
	add	r8, r10, lr
	add	r5, ip, lr
	ldr	ip, [sp, #20]
	lsl	r8, r8, #1
	strh	r6, [r3, r8]	@ movhi
	lsl	r5, r5, #1
	add	r8, ip, lr
	ldr	ip, [sp, #36]
	strh	r6, [r3, r5]	@ movhi
	ldr	r6, [sp, #28]
	add	r9, ip, r0
	add	r5, r6, lr
	add	lr, ip, lr
	lsl	ip, r9, #1
	str	ip, [sp, #28]
	mvn	ip, #32768
	lsl	r8, r8, #1
	strh	ip, [r3, r8]	@ movhi
	ldr	r8, [sp, #40]
	add	r4, r4, r0
	add	r9, r8, r0
	lsl	r4, r4, #1
	lsl	r5, r5, #1
	lsl	lr, lr, #1
	lsl	r9, r9, #1
	strh	r7, [r3, r5]	@ movhi
	strh	r2, [r3, lr]	@ movhi
	strh	r2, [r3, r4]	@ movhi
	strh	ip, [r3, r9]	@ movhi
	mov	r9, ip
	ldr	lr, [sp, #4]
	add	r8, r8, r1
	add	r5, fp, r1
	lsl	r8, r8, #1
	str	r8, [sp, #32]
	add	r8, fp, r0
	lsl	fp, r5, #1
	add	r5, lr, r0
	ldr	lr, [sp, #8]
	add	r4, lr, r0
	str	fp, [sp, #36]
	lsl	r8, r8, #1
	ldr	fp, [sp, #12]
	lsl	r5, r5, #1
	lsl	r4, r4, #1
	strh	ip, [r3, r8]	@ movhi
	strh	ip, [r3, r5]	@ movhi
	strh	ip, [r3, r4]	@ movhi
	ldr	ip, [sp]
	add	lr, fp, r0
	mov	fp, r6
	add	r4, ip, r0
	mov	ip, r9
	lsl	lr, lr, #1
	strh	r9, [r3, lr]	@ movhi
	ldr	r8, [sp, #16]
	ldr	lr, [sp, #20]
	add	r5, r10, r0
	add	r8, r8, r0
	add	lr, lr, r0
	add	r0, r6, r0
	ldr	r6, [sp, #20]
	add	r10, r6, r1
	add	r9, fp, r1
	lsl	r10, r10, #1
	str	r10, [sp, #20]
	lsl	r10, r9, #1
	mov	r9, ip
	lsl	r8, r8, #1
	strh	ip, [r3, r8]	@ movhi
	ldr	ip, [sp, #4]
	ldr	r6, [sp, #4]
	add	fp, ip, r1
	ldr	ip, [sp, #44]
	add	r6, r6, ip
	lsl	r5, r5, #1
	lsl	r6, r6, #1
	str	r10, [sp, #40]
	str	r6, [sp, #4]
	strh	r9, [r3, r5]	@ movhi
	ldr	r9, [sp, #8]
	add	r6, r9, ip
	add	r10, r9, r1
	mvn	r9, #32768
	lsl	r5, r6, #1
	mov	r6, r9
	lsl	r4, r4, #1
	lsl	lr, lr, #1
	strh	r9, [r3, r4]	@ movhi
	strh	r6, [r3, lr]	@ movhi
	mov	r6, ip
	ldr	r4, [sp, #12]
	ldr	lr, [sp, #16]
	lsl	r0, r0, #1
	strh	r7, [r3, r0]	@ movhi
	str	r5, [sp, #8]
	ldr	r0, [sp, #24]
	add	r9, r4, r1
	add	r5, r4, ip
	add	r4, lr, ip
	ldr	ip, [sp]
	add	r8, lr, r1
	add	r7, r0, r1
	add	lr, r0, r6
	add	r1, ip, r1
	add	r0, ip, r6
	ldr	ip, [sp, #28]
	strh	r2, [r3, ip]	@ movhi
	ldr	ip, [sp, #32]
	strh	r2, [r3, ip]	@ movhi
	ldr	ip, [sp, #36]
	strh	r2, [r3, ip]	@ movhi
	mvn	ip, #32768
	lsl	fp, fp, #1
	lsl	r10, r10, #1
	strh	ip, [r3, fp]	@ movhi
	strh	ip, [r3, r10]	@ movhi
	ldr	r10, [sp, #20]
	lsl	r9, r9, #1
	lsl	r8, r8, #1
	lsl	r7, r7, #1
	lsl	r1, r1, #1
	strh	ip, [r3, r9]	@ movhi
	strh	ip, [r3, r8]	@ movhi
	strh	ip, [r3, r7]	@ movhi
	strh	ip, [r3, r1]	@ movhi
	strh	r2, [r3, r10]	@ movhi
	ldr	r1, [sp, #4]
	ldr	r10, [sp, #40]
	strh	r2, [r3, r10]	@ movhi
	strh	r2, [r3, r1]	@ movhi
	ldr	r1, [sp, #8]
	lsl	r5, r5, #1
	lsl	r4, r4, #1
	lsl	lr, lr, #1
	lsl	r0, r0, #1
	strh	r2, [r3, r1]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	strh	r2, [r3, r4]	@ movhi
	strh	r2, [r3, lr]	@ movhi
	strh	r2, [r3, r0]	@ movhi
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.word	15855
	.size	drawBallSquish, .-drawBallSquish
	.align	2
	.global	drawBallFullOpen
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBallFullOpen, %function
drawBallFullOpen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #31
	mov	r2, #0
	mov	r7, #21
	sub	sp, sp, #44
	add	r8, r0, #5
	add	r4, r0, #8
	ldr	r3, .L41
	add	r6, r0, #4
	rsb	r1, r1, r1, lsl #4
	str	r8, [sp, #4]
	str	r4, [sp, #12]
	add	r8, r0, #9
	add	r4, r0, #1
	ldr	r3, [r3]
	str	r8, [sp, #16]
	str	r4, [sp, #20]
	add	r8, r0, #10
	add	r4, r6, r1, lsl #4
	str	r8, [sp, #24]
	lsl	r4, r4, #1
	add	r8, r0, #5
	strh	r9, [r3, r4]	@ movhi
	add	r4, r8, r1, lsl #4
	lsl	r4, r4, #1
	strh	r2, [r3, r4]	@ movhi
	add	r8, r0, #7
	add	r4, r0, #6
	lsl	lr, r1, #4
	add	r4, r4, r1, lsl #4
	add	r1, r8, r1, lsl #4
	add	r10, r0, #2
	add	fp, r0, #3
	add	ip, lr, #240
	lsl	r4, r4, #1
	lsl	r1, r1, #1
	strh	r2, [r3, r4]	@ movhi
	strh	r7, [r3, r1]	@ movhi
	add	r4, ip, r10
	add	r1, ip, fp
	add	r8, r0, #5
	lsl	r4, r4, #1
	lsl	r1, r1, #1
	strh	r9, [r3, r4]	@ movhi
	strh	r9, [r3, r1]	@ movhi
	add	r1, r8, ip
	mvn	r8, #32768
	add	r4, r6, ip
	lsl	r4, r4, #1
	strh	r2, [r3, r4]	@ movhi
	lsl	r1, r1, #1
	add	r4, r0, #6
	strh	r8, [r3, r1]	@ movhi
	add	r4, r4, ip
	ldr	r1, .L41+4
	add	r8, r0, #7
	lsl	r4, r4, #1
	strh	r1, [r3, r4]	@ movhi
	add	r4, r8, ip
	lsl	r4, r4, #1
	strh	r2, [r3, r4]	@ movhi
	add	r8, r0, #9
	add	r4, r0, #8
	add	r4, ip, r4
	add	ip, ip, r8
	add	r5, r0, #7
	lsl	r4, r4, #1
	lsl	ip, ip, #1
	strh	r7, [r3, r4]	@ movhi
	str	r5, [sp]
	strh	r7, [r3, ip]	@ movhi
	add	r5, lr, #480
	add	ip, r0, #1
	add	ip, r5, ip
	lsl	ip, ip, #1
	strh	r9, [r3, ip]	@ movhi
	add	r9, r10, r5
	lsl	r9, r9, #1
	strh	r2, [r3, r9]	@ movhi
	add	r9, fp, r5
	lsl	r9, r9, #1
	strh	r2, [r3, r9]	@ movhi
	add	r9, r6, r5
	add	r8, r0, #5
	lsl	r9, r9, #1
	strh	r1, [r3, r9]	@ movhi
	add	r9, r8, r5
	lsl	r9, r9, #1
	strh	r2, [r3, r9]	@ movhi
	add	r9, r0, #6
	add	r9, r9, r5
	add	r8, r0, #7
	lsl	r9, r9, #1
	strh	r2, [r3, r9]	@ movhi
	add	r9, r8, r5
	lsl	r9, r9, #1
	strh	r1, [r3, r9]	@ movhi
	add	r9, r0, #8
	add	r9, r9, r5
	add	r8, r0, #9
	lsl	r9, r9, #1
	strh	r2, [r3, r9]	@ movhi
	add	r9, r8, r5
	add	r8, r0, #10
	add	r5, r5, r8
	lsl	r9, r9, #1
	lsl	r5, r5, #1
	add	r4, lr, #720
	strh	r2, [r3, r9]	@ movhi
	strh	r7, [r3, r5]	@ movhi
	add	r5, r0, #1
	add	r5, r5, r4
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r5, r10, r4
	add	r9, r0, #11
	lsl	r5, r5, #1
	str	r9, [sp, #28]
	strh	r1, [r3, r5]	@ movhi
	add	r5, fp, r4
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r6, r4
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r0, #5
	add	r5, r5, r4
	add	r9, r0, #6
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r9, r4
	add	r8, r0, #7
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r8, r4
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r0, #8
	add	r5, r5, r4
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r8, r0, #10
	add	r5, r0, #9
	add	r9, r5, r4
	add	r4, r8, r4
	add	ip, lr, #960
	lsl	r5, r4, #1
	lsl	r9, r9, #1
	strh	r1, [r3, r9]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	add	r5, ip, r0
	add	r9, r0, #1
	lsl	r5, r5, #1
	strh	r7, [r3, r5]	@ movhi
	add	r5, r9, ip
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r10, ip
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, fp, ip
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r6, ip
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r0, #5
	add	r5, r5, ip
	add	r9, r0, #6
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r9, ip
	add	r8, r0, #7
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r8, ip
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r0, #8
	add	r5, r5, ip
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r0, #9
	add	r5, r5, ip
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r8, r0, #10
	add	r5, r0, #11
	add	r9, r8, ip
	add	ip, ip, r5
	add	r4, lr, #1200
	lsl	r5, ip, #1
	lsl	r9, r9, #1
	strh	r1, [r3, r9]	@ movhi
	strh	r7, [r3, r5]	@ movhi
	add	r5, r4, r0
	add	r9, r0, #1
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r5, r9, r4
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r10, r4
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, fp, r4
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r6, r4
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r0, #5
	add	r5, r5, r4
	add	r9, r0, #6
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r9, r4
	add	r8, r0, #7
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r8, r4
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r0, #8
	add	r5, r5, r4
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r0, #9
	add	r5, r5, r4
	add	r8, r0, #10
	lsl	r5, r5, #1
	strh	r1, [r3, r5]	@ movhi
	add	r5, r8, r4
	add	r8, r0, #11
	add	r4, r8, r4
	add	ip, lr, #1440
	lsl	r5, r5, #1
	lsl	r4, r4, #1
	strh	r1, [r3, r5]	@ movhi
	strh	r2, [r3, r4]	@ movhi
	add	r4, ip, r0
	lsl	r4, r4, #1
	strh	r2, [r3, r4]	@ movhi
	add	r4, r0, #1
	add	r4, r4, ip
	lsl	r4, r4, #1
	strh	r1, [r3, r4]	@ movhi
	add	r4, r10, ip
	lsl	r4, r4, #1
	strh	r1, [r3, r4]	@ movhi
	add	r4, fp, ip
	lsl	r4, r4, #1
	strh	r1, [r3, r4]	@ movhi
	add	r4, r6, ip
	lsl	r4, r4, #1
	strh	r1, [r3, r4]	@ movhi
	add	r4, r0, #5
	add	r4, r4, ip
	lsl	r4, r4, #1
	strh	r1, [r3, r4]	@ movhi
	add	r4, r9, ip
	add	r8, r0, #7
	lsl	r4, r4, #1
	strh	r1, [r3, r4]	@ movhi
	add	r4, r8, ip
	lsl	r4, r4, #1
	strh	r1, [r3, r4]	@ movhi
	add	r4, r0, #8
	add	r4, r4, ip
	lsl	r4, r4, #1
	strh	r1, [r3, r4]	@ movhi
	add	r4, r0, #9
	add	r4, r4, ip
	add	r8, r0, #10
	lsl	r4, r4, #1
	strh	r1, [r3, r4]	@ movhi
	add	r4, r8, ip
	add	r8, r0, #11
	add	ip, r8, ip
	lsl	r4, r4, #1
	lsl	ip, ip, #1
	strh	r1, [r3, r4]	@ movhi
	add	r7, lr, #1680
	strh	r2, [r3, ip]	@ movhi
	add	ip, r0, #1
	add	ip, ip, r7
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, r10, r7
	lsl	ip, ip, #1
	strh	r1, [r3, ip]	@ movhi
	add	ip, fp, r7
	lsl	ip, ip, #1
	strh	r1, [r3, ip]	@ movhi
	add	ip, r6, r7
	lsl	ip, ip, #1
	strh	r1, [r3, ip]	@ movhi
	add	ip, r0, #5
	add	ip, ip, r7
	lsl	ip, ip, #1
	strh	r1, [r3, ip]	@ movhi
	add	ip, r9, r7
	add	r8, r0, #7
	lsl	ip, ip, #1
	strh	r1, [r3, ip]	@ movhi
	add	ip, r8, r7
	lsl	ip, ip, #1
	strh	r1, [r3, ip]	@ movhi
	add	ip, r0, #8
	add	ip, ip, r7
	lsl	ip, ip, #1
	strh	r1, [r3, ip]	@ movhi
	add	r8, r0, #10
	add	ip, r0, #9
	add	ip, ip, r7
	add	r7, r8, r7
	add	r5, lr, #1920
	lsl	ip, ip, #1
	lsl	r7, r7, #1
	strh	r1, [r3, ip]	@ movhi
	strh	r2, [r3, r7]	@ movhi
	add	r7, r10, r5
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, fp, r5
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r6, r5
	lsl	r7, r7, #1
	strh	r1, [r3, r7]	@ movhi
	add	r7, r0, #5
	add	r7, r7, r5
	lsl	r7, r7, #1
	strh	r1, [r3, r7]	@ movhi
	add	r7, r9, r5
	add	r8, r0, #7
	lsl	r7, r7, #1
	strh	r1, [r3, r7]	@ movhi
	add	r7, r8, r5
	lsl	r7, r7, #1
	strh	r1, [r3, r7]	@ movhi
	add	r8, r0, #9
	add	r7, r0, #8
	add	r7, r7, r5
	add	r5, r8, r5
	mvn	r8, #32768
	lsl	r7, r7, #1
	lsl	r5, r5, #1
	add	r4, lr, #2160
	strh	r2, [r3, r7]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	add	r5, r0, #1
	add	r5, r5, r4
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r5, r10, r4
	lsl	r5, r5, #1
	strh	r8, [r3, r5]	@ movhi
	add	r5, fp, r4
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r5, r6, r4
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r5, r0, #5
	add	r5, r5, r4
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r5, r9, r4
	add	r8, r0, #7
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r5, r8, r4
	mvn	r8, #32768
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	add	r5, r0, #8
	add	r5, r5, r4
	lsl	r5, r5, #1
	strh	r2, [r3, r5]	@ movhi
	str	r9, [sp, #8]
	add	r5, r0, #9
	add	r9, r0, #10
	add	ip, lr, #2400
	add	r7, lr, #2640
	add	r5, r5, r4
	add	r4, r9, r4
	lsl	r5, r5, #1
	add	r9, ip, r0
	lsl	r4, r4, #1
	add	r0, r7, r0
	strh	r1, [r3, r5]	@ movhi
	strh	r2, [r3, r4]	@ movhi
	lsl	r4, r0, #1
	ldr	r0, [sp, #20]
	add	r0, r0, ip
	lsl	r9, r9, #1
	lsl	r0, r0, #1
	strh	r2, [r3, r9]	@ movhi
	strh	r8, [r3, r0]	@ movhi
	add	r0, r10, ip
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	add	r0, fp, ip
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	add	r0, r6, ip
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	ldr	r0, [sp, #4]
	ldr	r9, [sp, #8]
	add	r0, r0, ip
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	ldr	r8, [sp]
	add	r0, r9, ip
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	add	r0, r8, ip
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	ldr	r0, [sp, #12]
	add	r0, r0, ip
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	ldr	r0, [sp, #16]
	ldr	r9, [sp, #24]
	add	r0, r0, ip
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	add	r0, r9, ip
	ldr	r9, [sp, #28]
	add	ip, r9, ip
	lsl	r0, r0, #1
	lsl	ip, ip, #1
	strh	r1, [r3, r0]	@ movhi
	strh	r2, [r3, ip]	@ movhi
	strh	r2, [r3, r4]	@ movhi
	ldr	r4, [sp, #20]
	add	r5, lr, #2880
	add	r0, lr, #3120
	add	ip, lr, #3360
	add	lr, lr, #3600
	str	lr, [sp, #28]
	add	lr, r4, r7
	mvn	r4, #32768
	lsl	lr, lr, #1
	strh	r4, [r3, lr]	@ movhi
	add	lr, r10, r7
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	add	lr, fp, r7
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	add	lr, r6, r7
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	ldr	lr, [sp, #4]
	add	lr, lr, r7
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	ldr	lr, [sp, #8]
	add	lr, lr, r7
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	ldr	r4, [sp, #12]
	add	lr, r8, r7
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	ldr	r8, [sp, #24]
	add	lr, r4, r7
	ldr	r4, [sp, #16]
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	add	r9, r9, r7
	add	lr, r4, r7
	add	r7, r8, r7
	lsl	r9, r9, #1
	lsl	lr, lr, #1
	lsl	r7, r7, #1
	strh	r2, [r3, lr]	@ movhi
	strh	r1, [r3, r7]	@ movhi
	strh	r2, [r3, r9]	@ movhi
	mvn	r9, #32768
	ldr	r4, [sp, #20]
	add	r7, r4, r5
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	lr, r10, r5
	add	r7, fp, r5
	lsl	lr, lr, #1
	lsl	r7, r7, #1
	strh	r9, [r3, lr]	@ movhi
	strh	r2, [r3, r7]	@ movhi
	add	lr, r6, r5
	ldr	r7, [sp, #4]
	lsl	lr, lr, #1
	strh	r2, [r3, lr]	@ movhi
	ldr	r8, [sp]
	ldr	lr, [sp, #8]
	add	r7, r7, r5
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	ldr	r9, [sp, #12]
	add	r7, r8, r5
	add	lr, lr, r5
	lsl	lr, lr, #1
	lsl	r7, r7, #1
	strh	r2, [r3, lr]	@ movhi
	strh	r2, [r3, r7]	@ movhi
	add	lr, r9, r5
	ldr	r7, [sp, #16]
	ldr	r9, [sp, #24]
	add	r7, r7, r5
	add	r5, r9, r5
	add	r9, r9, r0
	lsl	r9, r9, #1
	str	r9, [sp, #24]
	lsl	lr, lr, #1
	add	r9, r10, ip
	strh	r2, [r3, lr]	@ movhi
	add	lr, r10, r0
	lsl	r10, r9, #1
	str	r10, [sp, #32]
	mvn	r10, #32768
	add	r9, fp, ip
	lsl	r7, r7, #1
	strh	r1, [r3, r7]	@ movhi
	add	r4, r4, r0
	add	r7, fp, r0
	lsl	r5, r5, #1
	lsl	fp, r9, #1
	str	fp, [sp, #36]
	lsl	r4, r4, #1
	strh	r2, [r3, r5]	@ movhi
	lsl	lr, lr, #1
	add	r5, r6, r0
	lsl	r7, r7, #1
	strh	r2, [r3, r4]	@ movhi
	lsl	r5, r5, #1
	strh	r10, [r3, lr]	@ movhi
	strh	r10, [r3, r7]	@ movhi
	add	r7, r8, r0
	strh	r10, [r3, r5]	@ movhi
	ldr	r4, [sp, #4]
	ldr	r5, [sp, #16]
	ldr	lr, [sp, #8]
	lsl	fp, r7, #1
	ldr	r7, [sp, #12]
	ldr	r8, [sp, #28]
	str	fp, [sp, #20]
	add	r4, r4, r0
	add	fp, r7, r0
	add	lr, lr, r0
	add	r0, r5, r0
	lsl	r0, r0, #1
	str	r0, [sp, #12]
	mov	r0, r8
	add	r5, r5, ip
	lsl	r4, r4, #1
	lsl	lr, lr, #1
	lsl	r5, r5, #1
	strh	r1, [r3, r4]	@ movhi
	str	r5, [sp, #16]
	strh	r1, [r3, lr]	@ movhi
	ldr	r5, [sp, #4]
	ldr	lr, [sp, #8]
	ldr	r4, [sp]
	add	r10, r6, ip
	add	r9, r5, ip
	add	r7, r7, ip
	add	r6, r6, r8
	add	r5, r5, r8
	add	r8, lr, ip
	add	ip, r4, ip
	add	r4, lr, r0
	ldr	lr, [sp]
	add	lr, lr, r0
	ldr	r0, [sp, #20]
	strh	r1, [r3, r0]	@ movhi
	ldr	r0, [sp, #12]
	lsl	fp, fp, #1
	strh	r1, [r3, fp]	@ movhi
	strh	r1, [r3, r0]	@ movhi
	ldr	r0, [sp, #24]
	ldr	fp, [sp, #36]
	strh	r2, [r3, r0]	@ movhi
	ldr	r0, [sp, #32]
	lsl	r10, r10, #1
	lsl	r9, r9, #1
	lsl	r8, r8, #1
	lsl	ip, ip, #1
	strh	r2, [r3, r0]	@ movhi
	strh	r2, [r3, fp]	@ movhi
	strh	r1, [r3, r10]	@ movhi
	strh	r1, [r3, r9]	@ movhi
	strh	r1, [r3, r8]	@ movhi
	strh	r1, [r3, ip]	@ movhi
	ldr	r1, [sp, #16]
	lsl	r7, r7, #1
	lsl	r6, r6, #1
	lsl	r5, r5, #1
	lsl	r4, r4, #1
	lsl	lr, lr, #1
	strh	r2, [r3, r7]	@ movhi
	strh	r2, [r3, r1]	@ movhi
	strh	r2, [r3, r6]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	strh	r2, [r3, r4]	@ movhi
	strh	r2, [r3, lr]	@ movhi
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	.LANCHOR0
	.word	15855
	.size	drawBallFullOpen, .-drawBallFullOpen
	.align	2
	.global	drawBallSemiOpen
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBallSemiOpen, %function
drawBallSemiOpen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #7
	mov	r8, r5
	mvn	fp, #32768
	mov	r4, #21
	sub	sp, sp, #44
	rsb	r10, r1, r1, lsl #4
	add	r1, r0, #5
	str	r1, [sp, #12]
	ldr	r3, .L45
	add	r1, r0, #2
	add	r9, r0, #4
	str	r1, [sp, #16]
	add	r1, r0, #1
	ldr	r3, [r3]
	str	r1, [sp, #24]
	add	r1, r9, r10, lsl #4
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r1, r0, #5
	add	r1, r1, r10, lsl #4
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r1, r0, #6
	lsl	lr, r10, #4
	add	r1, r1, r10, lsl #4
	add	r10, r8, r10, lsl #4
	lsl	r1, r1, #1
	lsl	r10, r10, #1
	strh	r2, [r3, r1]	@ movhi
	add	r7, lr, #240
	strh	r2, [r3, r10]	@ movhi
	add	r10, r0, #2
	add	r10, r7, r10
	lsl	r10, r10, #1
	strh	r2, [r3, r10]	@ movhi
	add	r10, r0, #3
	add	r10, r7, r10
	lsl	r10, r10, #1
	strh	r2, [r3, r10]	@ movhi
	add	r10, r9, r7
	lsl	r10, r10, #1
	strh	fp, [r3, r10]	@ movhi
	add	r10, r0, #5
	add	r10, r10, r7
	lsl	r10, r10, #1
	strh	fp, [r3, r10]	@ movhi
	add	r10, r0, #6
	add	r10, r10, r7
	lsl	r10, r10, #1
	strh	r4, [r3, r10]	@ movhi
	add	r10, r8, r7
	add	fp, r0, #8
	lsl	r10, r10, #1
	strh	r4, [r3, r10]	@ movhi
	add	r10, r7, fp
	lsl	r10, r10, #1
	strh	r2, [r3, r10]	@ movhi
	add	r10, r0, #11
	str	r10, [sp, #36]
	mvn	r10, #32768
	mov	r6, #31
	str	r8, [sp, #4]
	add	r8, r0, #9
	add	ip, r0, #6
	add	r7, r7, r8
	str	ip, [sp, #28]
	lsl	r7, r7, #1
	add	ip, r0, #8
	strh	r2, [r3, r7]	@ movhi
	str	ip, [sp, #20]
	add	r7, r0, #1
	add	ip, lr, #480
	add	r7, ip, r7
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r0, #2
	add	r7, r7, ip
	lsl	r7, r7, #1
	strh	r10, [r3, r7]	@ movhi
	add	r7, r0, #3
	add	r7, r7, ip
	lsl	r7, r7, #1
	strh	r10, [r3, r7]	@ movhi
	add	r7, r9, ip
	add	r10, r0, #5
	lsl	r7, r7, #1
	strh	r6, [r3, r7]	@ movhi
	add	r7, r10, ip
	lsl	r7, r7, #1
	strh	r4, [r3, r7]	@ movhi
	add	r7, r0, #6
	ldr	fp, [sp, #4]
	add	r7, r7, ip
	lsl	r7, r7, #1
	strh	r4, [r3, r7]	@ movhi
	add	r7, fp, ip
	lsl	r7, r7, #1
	add	fp, r0, #8
	strh	r4, [r3, r7]	@ movhi
	str	r8, [sp, #8]
	add	r7, fp, ip
	add	r10, r8, ip
	add	r8, r0, #10
	add	ip, ip, r8
	lsl	r7, r7, #1
	strh	r4, [r3, r7]	@ movhi
	lsl	r10, r10, #1
	lsl	r7, ip, #1
	add	r5, lr, #720
	strh	r4, [r3, r10]	@ movhi
	strh	r2, [r3, r7]	@ movhi
	add	r7, r0, #1
	add	r7, r7, r5
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r0, #2
	add	r7, r7, r5
	lsl	r7, r7, #1
	strh	r6, [r3, r7]	@ movhi
	add	r7, r0, #3
	add	r7, r7, r5
	lsl	r7, r7, #1
	strh	r6, [r3, r7]	@ movhi
	add	r7, r9, r5
	add	r10, r0, #5
	lsl	r7, r7, #1
	strh	r6, [r3, r7]	@ movhi
	add	r7, r10, r5
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r0, #6
	ldr	fp, [sp, #4]
	add	r7, r7, r5
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, fp, r5
	ldr	r10, [sp, #8]
	add	fp, r0, #8
	lsl	r7, r7, #1
	strh	r4, [r3, r7]	@ movhi
	add	r7, fp, r5
	lsl	r7, r7, #1
	add	r10, r10, r5
	add	r5, r8, r5
	strh	r4, [r3, r7]	@ movhi
	add	r1, lr, #960
	lsl	r7, r5, #1
	lsl	r10, r10, #1
	strh	r4, [r3, r10]	@ movhi
	strh	r2, [r3, r7]	@ movhi
	add	r7, r1, r0
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r0, #1
	add	r7, r7, r1
	lsl	r7, r7, #1
	strh	r6, [r3, r7]	@ movhi
	add	r7, r0, #2
	add	r7, r7, r1
	lsl	r7, r7, #1
	strh	r6, [r3, r7]	@ movhi
	add	r7, r0, #3
	add	r7, r7, r1
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r9, r1
	add	r10, r0, #5
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r10, r1
	mvn	r10, #32768
	lsl	r7, r7, #1
	strh	r10, [r3, r7]	@ movhi
	add	r7, r0, #6
	ldr	fp, [sp, #4]
	add	r7, r7, r1
	lsl	r7, r7, #1
	strh	r10, [r3, r7]	@ movhi
	add	r7, fp, r1
	add	r10, r0, #8
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r10, r1
	ldr	r10, [sp, #8]
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, r10, r1
	lsl	r7, r7, #1
	add	r10, r0, #11
	strh	r4, [r3, r7]	@ movhi
	add	r7, r8, r1
	add	r1, r1, r10
	add	ip, lr, #1200
	lsl	r7, r7, #1
	lsl	r1, r1, #1
	strh	r4, [r3, r7]	@ movhi
	strh	r2, [r3, r1]	@ movhi
	add	r1, ip, r0
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r1, r0, #1
	add	r1, r1, ip
	lsl	r1, r1, #1
	strh	r6, [r3, r1]	@ movhi
	add	r1, r0, #2
	add	r1, r1, ip
	add	r6, r0, #3
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	add	r6, r6, ip
	ldr	r1, .L45+4
	lsl	r6, r6, #1
	strh	r1, [r3, r6]	@ movhi
	add	r6, r9, ip
	lsl	r6, r6, #1
	strh	r1, [r3, r6]	@ movhi
	add	r6, r0, #5
	add	r6, r6, ip
	add	r7, r0, #6
	lsl	r6, r6, #1
	strh	r2, [r3, r6]	@ movhi
	add	r6, r7, ip
	lsl	r6, r6, #1
	strh	r2, [r3, r6]	@ movhi
	ldr	fp, [sp, #4]
	add	r6, fp, ip
	mov	fp, r1
	lsl	r6, r6, #1
	strh	r1, [r3, r6]	@ movhi
	add	r1, r0, #8
	ldr	r7, [sp, #8]
	add	r6, r1, ip
	lsl	r6, r6, #1
	strh	fp, [r3, r6]	@ movhi
	add	r6, r7, ip
	add	r1, r0, #11
	lsl	r6, r6, #1
	strh	r2, [r3, r6]	@ movhi
	add	r6, r8, ip
	add	ip, r1, ip
	lsl	r6, r6, #1
	lsl	ip, ip, #1
	strh	r4, [r3, r6]	@ movhi
	add	r5, lr, #1440
	strh	r2, [r3, ip]	@ movhi
	add	ip, r0, #1
	add	ip, ip, r5
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, r0, #2
	ldr	fp, .L45+4
	add	ip, ip, r5
	add	r1, r0, #3
	lsl	ip, ip, #1
	strh	fp, [r3, ip]	@ movhi
	add	ip, r1, r5
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, r9, r5
	add	r6, r0, #5
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, r6, r5
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, r0, #6
	ldr	fp, [sp, #4]
	add	ip, ip, r5
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, fp, r5
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, r0, #8
	ldr	r6, [sp, #8]
	add	ip, ip, r5
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	ldr	fp, .L45+4
	add	ip, r6, r5
	add	r5, r8, r5
	add	r10, lr, #1680
	lsl	ip, ip, #1
	lsl	r5, r5, #1
	strh	fp, [r3, ip]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	add	ip, r10, r0
	ldr	r5, [sp, #24]
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, r5, r10
	lsl	ip, ip, #1
	strh	fp, [r3, ip]	@ movhi
	ldr	ip, [sp, #16]
	add	ip, ip, r10
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, r1, r10
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, r9, r10
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	ldr	ip, [sp, #12]
	ldr	r5, [sp, #28]
	add	ip, ip, r10
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	ldr	fp, [sp, #4]
	add	ip, r5, r10
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, fp, r10
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	ldr	ip, [sp, #20]
	ldr	r5, [sp, #8]
	add	ip, ip, r10
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	add	ip, r5, r10
	ldr	r5, [sp, #36]
	add	r7, lr, #1920
	lsl	ip, ip, #1
	strh	r2, [r3, ip]	@ movhi
	ldr	fp, .L45+4
	add	ip, r8, r10
	add	r0, r7, r0
	add	r10, r5, r10
	lsl	r0, r0, #1
	lsl	ip, ip, #1
	lsl	r10, r10, #1
	strh	fp, [r3, ip]	@ movhi
	strh	r2, [r3, r10]	@ movhi
	strh	r2, [r3, r0]	@ movhi
	ldr	r0, [sp, #24]
	add	r0, r0, r7
	lsl	r0, r0, #1
	strh	fp, [r3, r0]	@ movhi
	ldr	r0, [sp, #16]
	add	r0, r0, r7
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	add	r0, r1, r7
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	add	r0, r9, r7
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	ldr	r0, [sp, #12]
	str	r8, [sp, #32]
	add	r0, r0, r7
	ldr	r8, [sp, #28]
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	ldr	fp, [sp, #4]
	add	r0, r8, r7
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	ldr	r10, [sp, #20]
	add	r0, fp, r7
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	add	r0, r10, r7
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	ldr	fp, [sp, #32]
	ldr	r0, [sp, #8]
	add	r5, r5, r7
	add	r10, r0, r7
	add	r7, fp, r7
	mvn	fp, #32768
	lsl	r0, r7, #1
	lsl	r10, r10, #1
	strh	r2, [r3, r10]	@ movhi
	strh	fp, [r3, r0]	@ movhi
	ldr	r10, [sp, #24]
	ldr	r0, [sp, #16]
	add	r4, lr, #2160
	add	r7, r10, r4
	add	r0, r0, r4
	lsl	r5, r5, #1
	lsl	r7, r7, #1
	lsl	r0, r0, #1
	strh	r2, [r3, r5]	@ movhi
	strh	r2, [r3, r7]	@ movhi
	add	r5, r1, r4
	strh	fp, [r3, r0]	@ movhi
	ldr	r0, [sp, #12]
	lsl	r5, r5, #1
	strh	fp, [r3, r5]	@ movhi
	add	r7, r9, r4
	ldr	fp, [sp, #4]
	add	r5, r8, r4
	add	r0, r0, r4
	lsl	r7, r7, #1
	lsl	r0, r0, #1
	lsl	r5, r5, #1
	strh	r2, [r3, r7]	@ movhi
	strh	r2, [r3, r0]	@ movhi
	add	r7, fp, r4
	strh	r2, [r3, r5]	@ movhi
	ldr	fp, [sp, #32]
	ldr	r5, [sp, #8]
	ldr	r0, [sp, #20]
	add	r6, lr, #2400
	add	r0, r0, r4
	add	r5, r5, r4
	add	r4, fp, r4
	add	fp, fp, r6
	lsl	fp, fp, #1
	str	fp, [sp, #28]
	ldr	fp, [sp, #16]
	add	ip, lr, #2640
	lsl	r7, r7, #1
	strh	r2, [r3, r7]	@ movhi
	add	r7, fp, r6
	add	fp, fp, ip
	lsl	fp, fp, #1
	str	fp, [sp, #32]
	mvn	fp, #32768
	lsl	r0, r0, #1
	strh	fp, [r3, r0]	@ movhi
	add	fp, r1, ip
	add	r0, r1, r6
	lsl	r1, fp, #1
	str	r1, [sp, #36]
	mvn	r1, #32768
	ldr	fp, .L45+4
	lsl	r5, r5, #1
	strh	fp, [r3, r5]	@ movhi
	add	r10, r10, r6
	ldr	fp, [sp, #4]
	lsl	r10, r10, #1
	lsl	r4, r4, #1
	lsl	r7, r7, #1
	strh	r2, [r3, r4]	@ movhi
	strh	r2, [r3, r10]	@ movhi
	strh	r1, [r3, r7]	@ movhi
	add	r7, fp, r6
	lsl	r0, r0, #1
	lsl	r7, r7, #1
	strh	r1, [r3, r0]	@ movhi
	ldr	r4, [sp, #12]
	ldr	r1, [sp, #8]
	str	r7, [sp, #24]
	ldr	r7, [sp, #20]
	add	r5, r9, r6
	add	r10, r8, r6
	add	fp, r7, r6
	add	r0, r1, r6
	add	r4, r4, r6
	add	r6, r1, ip
	mvn	r1, #32768
	lsl	r5, r5, #1
	lsl	r4, r4, #1
	strh	r1, [r3, r5]	@ movhi
	strh	r1, [r3, r4]	@ movhi
	ldr	r4, [sp, #12]
	add	lr, lr, #2880
	lsl	r10, r10, #1
	lsl	r6, r6, #1
	str	r10, [sp, #16]
	str	r6, [sp, #8]
	add	r10, r9, ip
	add	r6, r9, lr
	add	r5, r4, lr
	add	r9, r4, ip
	mov	r4, r8
	ldr	r1, [sp, #4]
	add	r7, r7, ip
	add	r8, r8, ip
	add	ip, r1, ip
	add	r4, r4, lr
	add	lr, r1, lr
	lsl	r1, ip, #1
	str	r1, [sp, #4]
	ldr	ip, .L45+4
	ldr	r1, [sp, #16]
	strh	ip, [r3, r1]	@ movhi
	ldr	r1, [sp, #24]
	lsl	fp, fp, #1
	strh	ip, [r3, r1]	@ movhi
	strh	ip, [r3, fp]	@ movhi
	ldr	fp, [sp, #28]
	lsl	r0, r0, #1
	strh	ip, [r3, r0]	@ movhi
	ldr	r1, [sp, #36]
	strh	r2, [r3, fp]	@ movhi
	ldr	fp, [sp, #32]
	ldr	r0, [sp, #4]
	strh	r2, [r3, fp]	@ movhi
	strh	r2, [r3, r1]	@ movhi
	ldr	r1, .L45+4
	lsl	r10, r10, #1
	lsl	r9, r9, #1
	lsl	r8, r8, #1
	strh	r1, [r3, r10]	@ movhi
	strh	r1, [r3, r9]	@ movhi
	strh	r1, [r3, r8]	@ movhi
	strh	r1, [r3, r0]	@ movhi
	ldr	r1, [sp, #8]
	lsl	r7, r7, #1
	lsl	r6, r6, #1
	lsl	r5, r5, #1
	lsl	r4, r4, #1
	lsl	lr, lr, #1
	strh	r2, [r3, r7]	@ movhi
	strh	r2, [r3, r1]	@ movhi
	strh	r2, [r3, r6]	@ movhi
	strh	r2, [r3, r5]	@ movhi
	strh	r2, [r3, r4]	@ movhi
	strh	r2, [r3, lr]	@ movhi
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
	.word	15855
	.size	drawBallSemiOpen, .-drawBallSemiOpen
	.align	2
	.global	drawExpMini
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawExpMini, %function
drawExpMini:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mvn	lr, #64512
	ldr	r3, .L69
	add	ip, r1, #3
	ldr	r3, [r3]
	rsb	ip, ip, ip, lsl #4
	add	r5, r0, #5
	add	r2, r5, ip, lsl #4
	add	r1, r0, ip, lsl #4
	add	r4, r3, #18
	add	r2, r3, r2, lsl #1
	lsl	ip, ip, #4
	add	r1, r4, r1, lsl #1
.L48:
	strh	lr, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L48
	mvn	r7, #64512
	add	lr, ip, #240
	add	r2, r0, #3
	add	r1, r2, lr
	add	r6, r3, #22
	add	lr, lr, r0
	add	r1, r3, r1, lsl #1
	add	lr, r6, lr, lsl #1
.L49:
	strh	r7, [r1], #2	@ movhi
	cmp	r1, lr
	bne	.L49
	mvn	r7, #64512
	add	lr, ip, #480
	add	r2, r2, lr
	add	r1, lr, r0
	add	r2, r3, r2, lsl #1
	add	r1, r6, r1, lsl #1
.L50:
	strh	r7, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L50
	mvn	r9, #32768
	mvn	fp, #64512
	add	r6, r0, #6
	add	r7, r0, #7
	add	r8, r6, lr
	add	lr, lr, r7
	lsl	r8, r8, #1
	lsl	lr, lr, #1
	add	r1, ip, #720
	add	r2, r0, #2
	strh	r9, [r3, r8]	@ movhi
	add	r10, r1, r0
	strh	r9, [r3, lr]	@ movhi
	add	r8, r2, r1
	add	lr, r3, #24
	lsl	r9, r10, #1
	add	r8, r3, r8, lsl #1
	add	r10, lr, r10, lsl #1
.L51:
	strh	fp, [r8], #2	@ movhi
	cmp	r8, r10
	bne	.L51
	mvn	r8, #32768
	add	r1, r5, r1
	add	r1, r3, r1, lsl #1
	add	r9, r4, r9
.L52:
	strh	r8, [r1], #2	@ movhi
	cmp	r1, r9
	bne	.L52
	mvn	fp, #64512
	add	r1, ip, #960
	add	r10, r1, r0
	add	r8, r2, r1
	lsl	r9, r10, #1
	add	r8, r3, r8, lsl #1
	add	r10, lr, r10, lsl #1
.L53:
	strh	fp, [r8], #2	@ movhi
	cmp	r8, r10
	bne	.L53
	mvn	r8, #32768
	add	r1, r5, r1
	add	r1, r3, r1, lsl #1
	add	r9, r4, r9
.L54:
	strh	r8, [r1], #2	@ movhi
	cmp	r1, r9
	bne	.L54
	mvn	r9, #64512
	add	r8, ip, #1200
	add	r1, r2, r8
	add	r10, r8, r0
	add	r1, r3, r1, lsl #1
	add	lr, lr, r10, lsl #1
.L55:
	strh	r9, [r1], #2	@ movhi
	cmp	lr, r1
	bne	.L55
	mvn	r9, #32768
	mvn	lr, #64512
	add	r6, r6, r8
	add	r7, r8, r7
	add	r1, ip, #1440
	lsl	r6, r6, #1
	lsl	r7, r7, #1
	strh	r9, [r3, r6]	@ movhi
	add	r2, r2, r1
	add	r6, r1, r0
	strh	r9, [r3, r7]	@ movhi
	add	r1, r3, #20
	add	r2, r3, r2, lsl #1
	add	r1, r1, r6, lsl #1
.L56:
	strh	lr, [r2], #2	@ movhi
	cmp	r1, r2
	bne	.L56
	mvn	r2, #64512
	add	ip, ip, #1680
	add	r5, r5, ip
	add	ip, ip, r0
	add	r3, r3, r5, lsl #1
	add	r4, r4, ip, lsl #1
.L57:
	strh	r2, [r3], #2	@ movhi
	cmp	r4, r3
	bne	.L57
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.size	drawExpMini, .-drawExpMini
	.align	2
	.global	drawExpFull
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawExpFull, %function
drawExpFull:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mvn	lr, #65024
	ldr	r3, .L137
	ldr	r3, [r3]
	rsb	r4, r1, r1, lsl #4
	add	r5, r3, #20
	sub	sp, sp, #28
	add	r2, r0, #4
	add	r1, r2, r4, lsl #4
	add	ip, r0, r4, lsl #4
	str	r5, [sp, #20]
	add	r1, r3, r1, lsl #1
	add	ip, r5, ip, lsl #1
	lsl	r4, r4, #4
.L72:
	strh	lr, [r1], #2	@ movhi
	cmp	r1, ip
	bne	.L72
	add	r1, r0, #3
	mov	ip, r1
	mvn	r7, #65024
	str	r1, [sp, #12]
	add	r1, r4, #240
	add	r5, r1, r0
	add	ip, ip, r1
	add	r6, r3, #22
	lsl	lr, r5, #1
	add	ip, r3, ip, lsl #1
	add	r5, r6, r5, lsl #1
.L73:
	strh	r7, [ip], #2	@ movhi
	cmp	ip, r5
	bne	.L73
	mvn	ip, #54272
	add	r5, r0, #5
	add	r1, r5, r1
	str	r5, [sp]
	add	r5, r3, #18
	add	r1, r3, r1, lsl #1
	add	lr, r5, lr
.L74:
	strh	ip, [r1], #2	@ movhi
	cmp	r1, lr
	bne	.L74
	mvn	r9, #65024
	add	ip, r4, #480
	add	r1, r0, #2
	add	r8, ip, r0
	add	lr, r1, ip
	add	r7, r3, #26
	lsl	r10, r8, #1
	add	lr, r3, lr, lsl #1
	add	r8, r7, r8, lsl #1
.L75:
	strh	r9, [lr], #2	@ movhi
	cmp	lr, r8
	bne	.L75
	mvn	lr, #54272
	add	ip, r2, ip
	add	ip, r3, ip, lsl #1
	add	r6, r6, r10
.L76:
	strh	lr, [ip], #2	@ movhi
	cmp	ip, r6
	bne	.L76
	mvn	r10, #65024
	add	ip, r0, #1
	add	r9, r4, #720
	add	lr, r9, r0
	str	ip, [sp, #4]
	add	r6, r3, #28
	add	ip, ip, r9
	lsl	r8, lr, #1
	add	ip, r3, ip, lsl #1
	add	lr, r6, lr, lsl #1
.L77:
	strh	r10, [ip], #2	@ movhi
	cmp	ip, lr
	bne	.L77
	mvn	lr, #64512
	add	r10, r3, #24
	add	ip, r2, r9
	str	r10, [sp, #8]
	add	ip, r3, ip, lsl #1
	add	r8, r10, r8
.L78:
	strh	lr, [ip], #2	@ movhi
	cmp	ip, r8
	bne	.L78
	mvn	lr, #32768
	mvn	r10, #65024
	add	ip, r0, #6
	add	r9, ip, r9
	str	ip, [sp, #16]
	add	ip, r4, #960
	add	r8, r0, ip
	lsl	r9, r9, #1
	strh	lr, [r3, r9]	@ movhi
	lsl	r9, r8, #1
	add	lr, r3, r8, lsl #1
	add	r8, r6, r8, lsl #1
.L79:
	strh	r10, [lr], #2	@ movhi
	cmp	lr, r8
	bne	.L79
	mvn	r10, #54272
	ldr	lr, [sp, #12]
	add	lr, lr, ip
	add	lr, r3, lr, lsl #1
	add	r8, r7, r9
.L80:
	strh	r10, [lr], #2	@ movhi
	cmp	lr, r8
	bne	.L80
	mvn	lr, #32768
	ldr	r8, [sp]
	add	ip, r8, ip
	add	r8, r3, #16
	add	ip, r3, ip, lsl #1
	add	r9, r8, r9
.L81:
	strh	lr, [ip], #2	@ movhi
	cmp	ip, r9
	bne	.L81
	mvn	fp, #65024
	add	ip, r4, #1200
	add	r9, r0, ip
	add	r8, r3, #30
	lsl	r10, r9, #1
	add	lr, r3, r9, lsl #1
	add	r9, r8, r9, lsl #1
.L82:
	strh	fp, [lr], #2	@ movhi
	cmp	lr, r9
	bne	.L82
	mvn	fp, #54272
	add	lr, r1, ip
	add	lr, r3, lr, lsl #1
	add	r9, r7, r10
.L83:
	strh	fp, [lr], #2	@ movhi
	cmp	lr, r9
	bne	.L83
	mvn	lr, #32768
	ldr	r9, [sp]
	add	ip, r9, ip
	add	ip, r3, ip, lsl #1
	add	r10, r5, r10
.L84:
	strh	lr, [ip], #2	@ movhi
	cmp	ip, r10
	bne	.L84
	mvn	fp, #65024
	add	ip, r4, #1440
	add	r9, r0, ip
	lsl	r10, r9, #1
	add	lr, r3, r9, lsl #1
	add	r9, r8, r9, lsl #1
.L85:
	strh	fp, [lr], #2	@ movhi
	cmp	lr, r9
	bne	.L85
	mvn	fp, #54272
	add	lr, r1, ip
	add	lr, r3, lr, lsl #1
	add	r9, r6, r10
.L86:
	strh	fp, [lr], #2	@ movhi
	cmp	lr, r9
	bne	.L86
	mvn	lr, #32768
	add	ip, r2, ip
	add	ip, r3, ip, lsl #1
	add	r10, r5, r10
.L87:
	strh	lr, [ip], #2	@ movhi
	cmp	ip, r10
	bne	.L87
	mvn	fp, #65024
	add	ip, r4, #1680
	add	r9, r0, ip
	lsl	r10, r9, #1
	add	lr, r3, r9, lsl #1
	add	r9, r8, r9, lsl #1
.L88:
	strh	fp, [lr], #2	@ movhi
	cmp	lr, r9
	bne	.L88
	mvn	fp, #54272
	ldr	lr, [sp, #4]
	add	lr, lr, ip
	add	lr, r3, lr, lsl #1
	add	r9, r6, r10
.L89:
	strh	fp, [lr], #2	@ movhi
	cmp	r9, lr
	bne	.L89
	mvn	lr, #32768
	ldr	r9, [sp, #20]
	add	ip, r2, ip
	add	ip, r3, ip, lsl #1
	add	r10, r9, r10
.L90:
	strh	lr, [ip], #2	@ movhi
	cmp	r10, ip
	bne	.L90
	mvn	fp, #65024
	add	ip, r4, #1920
	add	r9, r0, ip
	lsl	r10, r9, #1
	add	lr, r3, r9, lsl #1
	add	r9, r8, r9, lsl #1
.L91:
	strh	fp, [lr], #2	@ movhi
	cmp	r9, lr
	bne	.L91
	mvn	fp, #54272
	ldr	lr, [sp, #4]
	add	lr, lr, ip
	add	lr, r3, lr, lsl #1
	add	r9, r7, r10
.L92:
	strh	fp, [lr], #2	@ movhi
	cmp	r9, lr
	bne	.L92
	mvn	lr, #32768
	add	ip, r2, ip
	add	ip, r3, ip, lsl #1
	add	r10, r5, r10
.L93:
	strh	lr, [ip], #2	@ movhi
	cmp	ip, r10
	bne	.L93
	mvn	r10, #65024
	add	ip, r4, #2160
	add	lr, r0, ip
	add	r8, r8, lr, lsl #1
	lsl	r9, lr, #1
	add	lr, r3, lr, lsl #1
.L94:
	strh	r10, [lr], #2	@ movhi
	cmp	r8, lr
	bne	.L94
	mvn	r10, #54272
	ldr	r8, [sp, #8]
	add	lr, r1, ip
	add	lr, r3, lr, lsl #1
	add	r8, r8, r9
.L95:
	strh	r10, [lr], #2	@ movhi
	cmp	r8, lr
	bne	.L95
	mvn	lr, #32768
	ldr	r8, [sp]
	add	ip, r8, ip
	add	ip, r3, ip, lsl #1
	add	r9, r5, r9
.L96:
	strh	lr, [ip], #2	@ movhi
	cmp	r9, ip
	bne	.L96
	mvn	r9, #65024
	add	r10, r4, #2400
	add	lr, r0, r10
	lsl	r8, lr, #1
	add	ip, r3, lr, lsl #1
	add	lr, r6, lr, lsl #1
.L97:
	strh	r9, [ip], #2	@ movhi
	cmp	lr, ip
	bne	.L97
	mvn	ip, #54272
	ldr	lr, [sp, #8]
	add	r1, r1, r10
	add	r1, r3, r1, lsl #1
	add	r8, lr, r8
.L98:
	strh	ip, [r1], #2	@ movhi
	cmp	r8, r1
	bne	.L98
	mvn	lr, #32768
	mvn	r1, #65024
	ldr	r8, [sp, #16]
	add	ip, r0, #7
	add	ip, ip, r10
	add	r10, r8, r10
	lsl	ip, ip, #1
	lsl	r10, r10, #1
	strh	lr, [r3, r10]	@ movhi
	strh	lr, [r3, ip]	@ movhi
	ldr	ip, [sp, #4]
	add	r8, r4, #2640
	add	lr, r8, r0
	add	ip, ip, r8
	add	r6, r6, lr, lsl #1
	add	ip, r3, ip, lsl #1
	lsl	lr, lr, #1
.L99:
	strh	r1, [ip], #2	@ movhi
	cmp	r6, ip
	bne	.L99
	mvn	r1, #54272
	ldr	ip, [sp, #20]
	add	r2, r2, r8
	add	r2, r3, r2, lsl #1
	add	lr, lr, ip
.L100:
	strh	r1, [r2], #2	@ movhi
	cmp	lr, r2
	bne	.L100
	mvn	ip, #65024
	ldr	r1, [sp, #12]
	add	r2, r4, #2880
	add	lr, r2, r0
	add	r1, r1, r2
	add	r7, r7, lr, lsl #1
	add	r1, r3, r1, lsl #1
	lsl	lr, lr, #1
.L101:
	strh	ip, [r1], #2	@ movhi
	cmp	r7, r1
	bne	.L101
	mvn	r1, #54272
	ldr	ip, [sp, #16]
	add	r2, ip, r2
	add	r2, r3, r2, lsl #1
	add	r5, r5, lr
.L102:
	strh	r1, [r2], #2	@ movhi
	cmp	r5, r2
	bne	.L102
	mvn	r2, #65024
	ldr	r1, [sp]
	add	r4, r4, #3120
	add	r1, r1, r4
	add	r3, r3, r1, lsl #1
	ldr	r1, [sp, #8]
	add	r4, r4, r0
	add	r4, r1, r4, lsl #1
.L103:
	strh	r2, [r3], #2	@ movhi
	cmp	r4, r3
	bne	.L103
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L138:
	.align	2
.L137:
	.word	.LANCHOR0
	.size	drawExpFull, .-drawExpFull
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
