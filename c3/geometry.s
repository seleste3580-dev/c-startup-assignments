	.text
	.intel_syntax noprefix
	.file	"geometry.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function circle_area
.LCPI0_0:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI0_1:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	circle_area
	.p2align	4, 0x90
	.type	circle_area,@function
circle_area:                            # @circle_area
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 8], xmm0
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rip + .LCPI0_1] # xmm1 = [2.0E+0,0.0E+0]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 16], xmm0
	movsd	xmm0, qword ptr [rip + .LCPI0_0] # xmm0 = [3.1415926535897931E+0,0.0E+0]
	mulsd	xmm0, qword ptr [rbp - 16]
	mulsd	xmm0, qword ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end0:
	.size	circle_area, .Lfunc_end0-circle_area
	.cfi_endproc
                                        # -- End function
	.globl	square_area                     # -- Begin function square_area
	.p2align	4, 0x90
	.type	square_area,@function
square_area:                            # @square_area
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 8], xmm0
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end1:
	.size	square_area, .Lfunc_end1-square_area
	.cfi_endproc
                                        # -- End function
	.globl	rectangle_area                  # -- Begin function rectangle_area
	.p2align	4, 0x90
	.type	rectangle_area,@function
rectangle_area:                         # @rectangle_area
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 8], xmm0
	movsd	qword ptr [rbp - 16], xmm1
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end2:
	.size	rectangle_area, .Lfunc_end2-rectangle_area
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function triangle_area
.LCPI3_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	triangle_area
	.p2align	4, 0x90
	.type	triangle_area,@function
triangle_area:                          # @triangle_area
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 8], xmm0
	movsd	qword ptr [rbp - 16], xmm1
	movsd	xmm0, qword ptr [rip + .LCPI3_0] # xmm0 = [5.0E-1,0.0E+0]
	mulsd	xmm0, qword ptr [rbp - 8]
	mulsd	xmm0, qword ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end3:
	.size	triangle_area, .Lfunc_end3-triangle_area
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
