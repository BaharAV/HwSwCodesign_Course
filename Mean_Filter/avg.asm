;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Sat Jun 12 21:40:40 2021
;--------------------------------------------------------
	.module avg
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _terminate
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_main_shared_1_2:
	.ds 3
_main_k_1_2:
	.ds 2
_main_i_1_2:
	.ds 2
_main_j_1_2:
	.ds 2
_main_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'terminate'
;------------------------------------------------------------
;	avg.c:6: void terminate(){
;	-----------------------------------------
;	 function terminate
;	-----------------------------------------
_terminate:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	avg.c:7: P3 = 0x55;
	mov	_P3,#0x55
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;shared                    Allocated with name '_main_shared_1_2'
;k                         Allocated with name '_main_k_1_2'
;i                         Allocated with name '_main_i_1_2'
;j                         Allocated with name '_main_j_1_2'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	avg.c:10: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	avg.c:28: for (k=0; k<8; k++){
	clr	a
	mov	_main_k_1_2,a
	mov	(_main_k_1_2 + 1),a
;	avg.c:30: for(i=0; i<10; i++){
00126$:
	clr	a
	mov	_main_i_1_2,a
	mov	(_main_i_1_2 + 1),a
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
;	avg.c:31: for(j=0; j<10; j++){
00124$:
	mov	a,#0x09
	cjne	a,_main_i_1_2,00157$
	clr	a
	cjne	a,(_main_i_1_2 + 1),00157$
	mov	a,#0x01
	sjmp	00158$
00157$:
	clr	a
00158$:
	mov	_main_sloc0_1_0,a
	clr	a
	mov	_main_j_1_2,a
	mov	(_main_j_1_2 + 1),a
00113$:
;	avg.c:32: if(i==0 || j==0 || i==9 || j==9){
	mov	a,_main_i_1_2
	orl	a,(_main_i_1_2 + 1)
	jz	00101$
	mov	a,_main_j_1_2
	orl	a,(_main_j_1_2 + 1)
	jz	00101$
	mov	a,_main_sloc0_1_0
	jnz	00101$
	mov	a,#0x09
	cjne	a,_main_j_1_2,00162$
	clr	a
	cjne	a,(_main_j_1_2 + 1),00162$
	sjmp	00163$
00162$:
	sjmp	00102$
00163$:
00101$:
;	avg.c:33: shared[(10*i)+j] = 0;
	mov	a,_main_j_1_2
	add	a,r0
	mov	r4,a
	mov	a,(_main_j_1_2 + 1)
	addc	a,r1
	add	a,#0x40
	mov	r5,a
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	clr	a
	lcall	__gptrput
	sjmp	00114$
00102$:
;	avg.c:37: shared[(10*i)+j] = k+(10*i)+j; //to make the pixels
	push	ar0
	push	ar1
	mov	a,_main_j_1_2
	add	a,r2
	mov	r6,a
	mov	a,(_main_j_1_2 + 1)
	addc	a,r3
	add	a,#0x40
	mov	r7,a
	mov	r5,#0x00
	mov	r4,_main_k_1_2
	mov	a,_main_i_1_2
	mov	b,#0x0A
	mul	ab
	add	a,r4
	mov	r4,a
	mov	a,_main_j_1_2
	add	a,r4
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrput
;	avg.c:45: terminate();
	pop	ar1
	pop	ar0
;	avg.c:37: shared[(10*i)+j] = k+(10*i)+j; //to make the pixels
00114$:
;	avg.c:31: for(j=0; j<10; j++){
	inc	_main_j_1_2
	clr	a
	cjne	a,_main_j_1_2,00164$
	inc	(_main_j_1_2 + 1)
00164$:
	clr	c
	mov	a,_main_j_1_2
	subb	a,#0x0A
	mov	a,(_main_j_1_2 + 1)
	subb	a,#0x00
	jc	00113$
;	avg.c:30: for(i=0; i<10; i++){
	mov	a,#0x0A
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,#0x0A
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	inc	_main_i_1_2
	clr	a
	cjne	a,_main_i_1_2,00166$
	inc	(_main_i_1_2 + 1)
00166$:
	clr	c
	mov	a,_main_i_1_2
	subb	a,#0x0A
	mov	a,(_main_i_1_2 + 1)
	subb	a,#0x00
	jnc	00167$
	ljmp	00124$
00167$:
;	avg.c:41: P1 = 1;
	mov	_P1,#0x01
;	avg.c:42: P1 = 0;
	mov	_P1,#0x00
;	avg.c:43: while(P2==1);
00109$:
	mov	a,#0x01
	cjne	a,_P2,00168$
	sjmp	00109$
00168$:
;	avg.c:28: for (k=0; k<8; k++){
	inc	_main_k_1_2
	clr	a
	cjne	a,_main_k_1_2,00169$
	inc	(_main_k_1_2 + 1)
00169$:
	clr	c
	mov	a,_main_k_1_2
	subb	a,#0x08
	mov	a,(_main_k_1_2 + 1)
	subb	a,#0x00
	jnc	00170$
	ljmp	00126$
00170$:
;	avg.c:45: terminate();
	ljmp	_terminate
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
