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
	.file	"main.c"
	.text
	.global	__aeabi_idivmod
	.align	2
	.global	update
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L129
	ldrh	r3, [r3, #48]
	ands	r3, r3, #1
	push	{r4, r5, r6, lr}
	bne	.L2
	ldr	r2, .L129+4
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L124
.L2:
	ldr	r3, .L129
	ldrh	r3, [r3, #48]
	tst	r3, #2
	bne	.L4
	ldr	r3, .L129+4
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L125
.L4:
	ldr	r3, .L129
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	bne	.L6
	ldr	r2, .L129+4
	ldrh	r2, [r2]
	tst	r2, #32
	ldrne	r2, .L129+8
	strne	r3, [r2]
.L6:
	ldr	r3, .L129
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L7
	ldr	r3, .L129+4
	ldrh	r3, [r3]
	tst	r3, #16
	movne	r2, #86
	ldrne	r3, .L129+8
	strne	r2, [r3]
.L7:
	ldr	r3, .L129
	ldrh	r3, [r3, #48]
	tst	r3, #8
	bne	.L8
	ldr	r3, .L129+4
	ldrh	r3, [r3]
	tst	r3, #8
	ldrne	r2, .L129+12
	ldrbne	r3, [r2]	@ zero_extendqisi2
	eorne	r3, r3, #1
	strbne	r3, [r2]
.L8:
	ldr	r3, .L129
	ldrh	r3, [r3, #48]
	tst	r3, #4
	bne	.L9
	ldr	r3, .L129+4
	ldrh	r3, [r3]
	tst	r3, #4
	ldrne	r2, .L129+16
	ldrne	r3, [r2]
	rsbne	r3, r3, #0
	strne	r3, [r2]
.L9:
	ldr	r3, .L129
	ldrh	r2, [r3, #48]
	ldr	r3, .L129+20
	tst	r2, #128
	ldr	r1, [r3]
	bne	.L10
	ldr	r2, .L129+4
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L126
.L10:
	ldr	r2, .L129
	ldrh	r2, [r2, #48]
	tst	r2, #64
	bne	.L11
	ldr	r2, .L129+4
	ldrh	r2, [r2]
	tst	r2, #64
	bne	.L127
.L11:
	ldr	r6, .L129+24
	ldr	r2, .L129+28
	ldr	r0, [r6]
	ldr	r3, .L129+32
	ldr	r5, .L129+36
	str	r0, [r3]
	ldr	r4, [r2]
	ldr	r3, .L129+40
	ldr	r2, [r5]
	mov	r0, r4
	str	r2, [r3]
	ldr	r3, .L129+44
	mov	lr, pc
	bx	r3
	subs	r4, r4, #0
	movne	r4, #1
	cmp	r1, #0
	movne	r4, #0
	cmp	r4, #0
	bne	.L128
.L1:
	pop	{r4, r5, r6, lr}
	bx	lr
.L127:
	cmp	r1, #0
	subgt	r1, r1, #1
	strgt	r1, [r3]
	b	.L11
.L126:
	cmp	r1, #5
	addle	r1, r1, #1
	strle	r1, [r3]
	b	.L10
.L125:
	ldr	r2, .L129+8
	ldr	r3, [r2]
	cmp	r3, #0
	moveq	r3, #86
	subne	r3, r3, #1
	str	r3, [r2]
	b	.L4
.L124:
	ldr	r1, .L129+8
	ldr	r2, [r1]
	cmp	r2, #86
	addne	r2, r2, #1
	streq	r3, [r1]
	strne	r2, [r1]
	b	.L2
.L128:
	ldr	r3, .L129+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, .L129+8
	cmp	r3, #0
	ldr	r3, [r2]
	beq	.L13
	ldr	r1, .L129+16
	ldr	r1, [r1]
	add	r3, r3, r1
	cmp	r3, #87
	moveq	r3, #0
	streq	r3, [r2]
	beq	.L15
	cmn	r3, #1
	moveq	r3, #86
	strne	r3, [r2]
	streq	r3, [r2]
	beq	.L17
.L13:
	cmp	r3, #86
	ldrls	pc, [pc, r3, asl #2]
	b	.L18
.L19:
	.word	.L15
	.word	.L91
	.word	.L90
	.word	.L89
	.word	.L88
	.word	.L87
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L78
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L71
	.word	.L70
	.word	.L69
	.word	.L68
	.word	.L68
	.word	.L67
	.word	.L66
	.word	.L65
	.word	.L48
	.word	.L32
	.word	.L62
	.word	.L30
	.word	.L29
	.word	.L53
	.word	.L27
	.word	.L26
	.word	.L56
	.word	.L24
	.word	.L23
	.word	.L57
	.word	.L56
	.word	.L26
	.word	.L54
	.word	.L53
	.word	.L29
	.word	.L51
	.word	.L50
	.word	.L49
	.word	.L48
	.word	.L47
	.word	.L46
	.word	.L45
	.word	.L44
	.word	.L43
	.word	.L42
	.word	.L41
	.word	.L40
	.word	.L39
	.word	.L38
	.word	.L37
	.word	.L36
	.word	.L35
	.word	.L34
	.word	.L33
	.word	.L32
	.word	.L31
	.word	.L30
	.word	.L29
	.word	.L28
	.word	.L27
	.word	.L26
	.word	.L25
	.word	.L24
	.word	.L23
	.word	.L22
	.word	.L21
	.word	.L21
	.word	.L20
	.word	.L17
	.word	.L17
	.word	.L17
	.word	.L17
	.word	.L17
	.word	.L17
	.word	.L17
	.word	.L17
.L17:
	mov	r2, #94
	mov	r3, #69
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L26:
	mov	r3, #68
	str	r3, [r5]
	b	.L1
.L29:
	mov	r3, #62
	str	r3, [r5]
	b	.L1
.L24:
	mov	r3, #72
	str	r3, [r5]
	b	.L1
.L56:
	mov	r3, #70
	str	r3, [r5]
	b	.L1
.L48:
	mov	r3, #54
	str	r3, [r5]
	b	.L1
.L21:
	mov	r2, #94
	mov	r3, #73
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L53:
	mov	r3, #64
	str	r3, [r5]
	b	.L1
.L23:
	mov	r3, #74
	str	r3, [r5]
	b	.L1
.L68:
	mov	r2, #42
	mov	r3, #46
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L27:
	mov	r3, #66
	str	r3, [r5]
	b	.L1
.L32:
	mov	r3, #56
	str	r3, [r5]
	b	.L1
.L30:
	mov	r3, #60
	str	r3, [r5]
	b	.L1
.L15:
	mov	r2, #0
	mov	r3, #14
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L69:
	mov	r3, #44
	str	r3, [r5]
	b	.L1
.L65:
	mov	r3, #52
	str	r3, [r5]
	b	.L1
.L20:
	mov	r2, #94
	mov	r3, #72
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L62:
	mov	r2, #46
	mov	r3, #58
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L43:
	mov	r2, #64
	mov	r3, #46
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L42:
	mov	r3, #66
	str	r3, [r6]
	b	.L1
.L41:
	mov	r3, #68
	str	r3, [r6]
	b	.L1
.L40:
	mov	r3, #70
	str	r3, [r6]
	b	.L1
.L39:
	mov	r3, #72
	str	r3, [r6]
	b	.L1
.L38:
	mov	r3, #74
	str	r3, [r6]
	b	.L1
.L37:
	mov	r2, #78
	mov	r3, #48
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L36:
	mov	r3, #80
	str	r3, [r6]
	b	.L1
.L35:
	mov	r2, #82
	mov	r3, #50
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L34:
	mov	r2, #84
	mov	r3, #52
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L25:
	mov	r2, #92
	mov	r3, #70
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L28:
	mov	r2, #90
	mov	r3, #64
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L33:
	mov	r2, #86
	mov	r3, #54
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L31:
	mov	r2, #88
	mov	r3, #58
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L67:
	mov	r3, #48
	str	r3, [r5]
	b	.L1
.L66:
	mov	r2, #44
	mov	r3, #50
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L91:
	mov	r3, #2
	str	r3, [r6]
	b	.L1
.L90:
	mov	r3, #4
	str	r3, [r6]
	b	.L1
.L89:
	mov	r3, #6
	str	r3, [r6]
	b	.L1
.L88:
	mov	r3, #8
	str	r3, [r6]
	b	.L1
.L87:
	mov	r3, #10
	str	r3, [r6]
	b	.L1
.L86:
	mov	r2, #12
	mov	r3, #16
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L85:
	mov	r3, #14
	str	r3, [r6]
	b	.L1
.L84:
	mov	r2, #16
	mov	r3, #18
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L83:
	mov	r3, #18
	str	r3, [r6]
	b	.L1
.L82:
	mov	r3, #20
	str	r3, [r6]
	str	r3, [r5]
	b	.L1
.L81:
	mov	r3, #22
	str	r3, [r6]
	str	r3, [r5]
	b	.L1
.L80:
	mov	r3, #24
	str	r3, [r6]
	b	.L1
.L79:
	mov	r2, #26
	mov	r3, #24
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L78:
	mov	r2, #28
	mov	r3, #26
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L77:
	mov	r2, #30
	mov	r3, #28
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L76:
	mov	r2, #32
	mov	r3, #30
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L75:
	mov	r2, #34
	mov	r3, #32
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L74:
	mov	r3, #34
	str	r3, [r5]
	b	.L1
.L73:
	mov	r3, #36
	str	r3, [r6]
	str	r3, [r5]
	b	.L1
.L72:
	mov	r3, #38
	str	r3, [r6]
	str	r3, [r5]
	b	.L1
.L71:
	mov	r3, #40
	str	r3, [r5]
	b	.L1
.L70:
	mov	r2, #40
	mov	r3, #42
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L57:
	mov	r2, #48
	mov	r3, #72
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L54:
	mov	r2, #50
	mov	r3, #66
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L51:
	mov	r2, #52
	mov	r3, #60
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L50:
	mov	r3, #58
	str	r3, [r5]
	b	.L1
.L47:
	mov	r2, #56
	mov	r3, #52
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L46:
	mov	r2, #58
	mov	r3, #50
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L49:
	mov	r2, #54
	mov	r3, #56
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L22:
	mov	r2, #92
	mov	r3, #74
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L45:
	mov	r2, #60
	mov	r3, #48
	str	r2, [r6]
	str	r3, [r5]
	b	.L1
.L44:
	mov	r3, #62
	str	r3, [r6]
	b	.L1
.L18:
	mov	r3, #0
	mov	r1, #14
	str	r3, [r2]
	str	r3, [r6]
	str	r1, [r5]
	b	.L1
.L130:
	.align	2
.L129:
	.word	67109120
	.word	oldButtons
	.word	frame
	.word	play
	.word	direction
	.word	timestep
	.word	bX
	.word	time
	.word	bOldX
	.word	bY
	.word	bOldY
	.word	__aeabi_idivmod
	.size	update, .-update
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L141
	ldr	r3, .L141+4
	ldr	r1, [r2]
	ldr	r0, [r3]
	push	{r4, lr}
	ldr	r3, .L141+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L141+12
	ldr	r3, [r3]
	sub	r3, r3, #38
	ldr	r2, .L141+16
	cmp	r3, #48
	ldrls	pc, [pc, r3, asl #2]
	b	.L132
.L134:
	.word	.L138
	.word	.L138
	.word	.L138
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L138
	.word	.L138
	.word	.L138
	.word	.L132
	.word	.L132
	.word	.L137
	.word	.L136
	.word	.L136
	.word	.L136
	.word	.L135
	.word	.L135
	.word	.L133
	.word	.L133
	.word	.L133
.L132:
	ldr	r3, .L141+20
	ldr	r1, [r2]
	ldr	r0, [r3]
	ldr	r3, .L141+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L138:
	ldr	r3, .L141+20
	ldr	r1, [r2]
	ldr	r0, [r3]
	ldr	r3, .L141+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L133:
	ldr	r3, .L141+20
	ldr	r1, [r2]
	ldr	r0, [r3]
	ldr	r3, .L141+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L136:
	ldr	r3, .L141+20
	ldr	r1, [r2]
	ldr	r0, [r3]
	ldr	r3, .L141+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L135:
	ldr	r3, .L141+20
	ldr	r1, [r2]
	ldr	r0, [r3]
	ldr	r3, .L141+40
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L137:
	ldr	r3, .L141+20
	ldr	r1, [r2]
	ldr	r0, [r3]
	ldr	r3, .L141+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L142:
	.align	2
.L141:
	.word	bOldY
	.word	bOldX
	.word	drawBlank
	.word	frame
	.word	bY
	.word	bX
	.word	drawBall
	.word	drawBallSquish
	.word	drawExpFull
	.word	drawBallFullOpen
	.word	drawExpMini
	.word	drawBallSemiOpen
	.size	draw, .-draw
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	ip, #67108864
	mov	r2, #14
	mov	r0, #3
	mov	r1, #1
	push	{r7, lr}
	ldr	r6, .L146
	ldr	lr, .L146+4
	ldr	r5, .L146+8
	strh	lr, [ip]	@ movhi
	strh	r3, [r6]	@ movhi
	ldr	r10, .L146+12
	ldrh	ip, [r5, #48]
	strh	ip, [r10]	@ movhi
	ldr	ip, .L146+16
	str	r3, [ip]
	ldr	ip, .L146+20
	ldr	r4, .L146+24
	str	r3, [ip]
	ldr	ip, .L146+28
	str	r3, [r4]
	strb	r3, [ip]
	ldr	r3, .L146+32
	str	r2, [r3]
	ldr	r3, .L146+36
	ldr	r2, .L146+40
	str	r0, [r3]
	ldr	r0, .L146+44
	ldr	r3, .L146+48
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r9, .L146+52
	ldr	r8, .L146+56
	ldr	r7, .L146+60
.L144:
	ldrh	r3, [r10]
	strh	r3, [r6]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r10]	@ movhi
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	b	.L144
.L147:
	.align	2
.L146:
	.word	oldButtons
	.word	1027
	.word	67109120
	.word	buttons
	.word	bX
	.word	frame
	.word	time
	.word	play
	.word	bY
	.word	timestep
	.word	direction
	.word	15855
	.word	fillScreen
	.word	update
	.word	waitForVBlank
	.word	draw
	.size	main, .-main
	.comm	play,1,1
	.comm	direction,4,4
	.comm	timestep,4,4
	.comm	time,4,4
	.comm	frame,4,4
	.comm	bOldY,4,4
	.comm	bOldX,4,4
	.comm	bY,4,4
	.comm	bX,4,4
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
