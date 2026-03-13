	.text
	.intel_syntax noprefix
	.file	"main.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.quad	0x4018000000000000              # double 6
.LCPI0_1:
	.quad	0x4010000000000000              # double 4
.LCPI0_2:
	.quad	0x4008000000000000              # double 3
.LCPI0_3:
	.quad	0x4014000000000000              # double 5
.LCPI0_4:
	.quad	0x4024000000000000              # double 10
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	dword ptr [rbp - 4], 0
	movsd	xmm0, qword ptr [rip + .LCPI0_4] # xmm0 = [1.0E+1,0.0E+0]
	movsd	qword ptr [rbp - 16], xmm0
	movsd	xmm0, qword ptr [rip + .LCPI0_3] # xmm0 = [5.0E+0,0.0E+0]
	movsd	qword ptr [rbp - 24], xmm0
	movsd	xmm0, qword ptr [rip + .LCPI0_2] # xmm0 = [3.0E+0,0.0E+0]
	movsd	qword ptr [rbp - 32], xmm0
	movsd	xmm0, qword ptr [rip + .LCPI0_1] # xmm0 = [4.0E+0,0.0E+0]
	movsd	qword ptr [rbp - 40], xmm0
	movsd	xmm0, qword ptr [rip + .LCPI0_0] # xmm0 = [6.0E+0,0.0E+0]
	movsd	qword ptr [rbp - 48], xmm0
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 96], xmm0      # 8-byte Spill
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	call	circle_area@PLT
	movaps	xmm1, xmm0
	movsd	xmm0, qword ptr [rbp - 96]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	lea	rdi, [rip + .L.str]
	mov	al, 2
	call	printf@PLT
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 88], xmm0      # 8-byte Spill
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	call	square_area@PLT
	movaps	xmm1, xmm0
	movsd	xmm0, qword ptr [rbp - 88]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	lea	rdi, [rip + .L.str.1]
	mov	al, 2
	call	printf@PLT
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 72], xmm0      # 8-byte Spill
	movsd	xmm0, qword ptr [rbp - 32]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 80], xmm0      # 8-byte Spill
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 32]      # xmm1 = mem[0],zero
	call	rectangle_area@PLT
	movsd	xmm1, qword ptr [rbp - 80]      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movaps	xmm2, xmm0
	movsd	xmm0, qword ptr [rbp - 72]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	lea	rdi, [rip + .L.str.2]
	mov	al, 3
	call	printf@PLT
	movsd	xmm0, qword ptr [rbp - 40]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 56], xmm0      # 8-byte Spill
	movsd	xmm0, qword ptr [rbp - 48]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 64], xmm0      # 8-byte Spill
	movsd	xmm0, qword ptr [rbp - 40]      # xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 48]      # xmm1 = mem[0],zero
	call	triangle_area@PLT
	movsd	xmm1, qword ptr [rbp - 64]      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movaps	xmm2, xmm0
	movsd	xmm0, qword ptr [rbp - 56]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	lea	rdi, [rip + .L.str.3]
	mov	al, 3
	call	printf@PLT
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Area of circle with diameter %.2f: %.2f\n"
	.size	.L.str, 41

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Area of square with length %.2f: %.2f\n"
	.size	.L.str.1, 39

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Area of rectangle with length %.2f and width %.2f: %.2f\n"
	.size	.L.str.2, 57

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Area of triangle with base %.2f and height %.2f: %.2f\n"
	.size	.L.str.3, 55

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym circle_area
	.addrsig_sym square_area
	.addrsig_sym rectangle_area
	.addrsig_sym triangle_area
