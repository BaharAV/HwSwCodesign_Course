                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Sat Jun 12 21:40:40 2021
                                      5 ;--------------------------------------------------------
                                      6 	.module avg
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _terminate
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 ;--------------------------------------------------------
                                    111 ; special function registers
                                    112 ;--------------------------------------------------------
                                    113 	.area RSEG    (ABS,DATA)
      000000                        114 	.org 0x0000
                           000080   115 _P0	=	0x0080
                           000081   116 _SP	=	0x0081
                           000082   117 _DPL	=	0x0082
                           000083   118 _DPH	=	0x0083
                           000087   119 _PCON	=	0x0087
                           000088   120 _TCON	=	0x0088
                           000089   121 _TMOD	=	0x0089
                           00008A   122 _TL0	=	0x008a
                           00008B   123 _TL1	=	0x008b
                           00008C   124 _TH0	=	0x008c
                           00008D   125 _TH1	=	0x008d
                           000090   126 _P1	=	0x0090
                           000098   127 _SCON	=	0x0098
                           000099   128 _SBUF	=	0x0099
                           0000A0   129 _P2	=	0x00a0
                           0000A8   130 _IE	=	0x00a8
                           0000B0   131 _P3	=	0x00b0
                           0000B8   132 _IP	=	0x00b8
                           0000D0   133 _PSW	=	0x00d0
                           0000E0   134 _ACC	=	0x00e0
                           0000F0   135 _B	=	0x00f0
                                    136 ;--------------------------------------------------------
                                    137 ; special function bits
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0_0	=	0x0080
                           000081   142 _P0_1	=	0x0081
                           000082   143 _P0_2	=	0x0082
                           000083   144 _P0_3	=	0x0083
                           000084   145 _P0_4	=	0x0084
                           000085   146 _P0_5	=	0x0085
                           000086   147 _P0_6	=	0x0086
                           000087   148 _P0_7	=	0x0087
                           000088   149 _IT0	=	0x0088
                           000089   150 _IE0	=	0x0089
                           00008A   151 _IT1	=	0x008a
                           00008B   152 _IE1	=	0x008b
                           00008C   153 _TR0	=	0x008c
                           00008D   154 _TF0	=	0x008d
                           00008E   155 _TR1	=	0x008e
                           00008F   156 _TF1	=	0x008f
                           000090   157 _P1_0	=	0x0090
                           000091   158 _P1_1	=	0x0091
                           000092   159 _P1_2	=	0x0092
                           000093   160 _P1_3	=	0x0093
                           000094   161 _P1_4	=	0x0094
                           000095   162 _P1_5	=	0x0095
                           000096   163 _P1_6	=	0x0096
                           000097   164 _P1_7	=	0x0097
                           000098   165 _RI	=	0x0098
                           000099   166 _TI	=	0x0099
                           00009A   167 _RB8	=	0x009a
                           00009B   168 _TB8	=	0x009b
                           00009C   169 _REN	=	0x009c
                           00009D   170 _SM2	=	0x009d
                           00009E   171 _SM1	=	0x009e
                           00009F   172 _SM0	=	0x009f
                           0000A0   173 _P2_0	=	0x00a0
                           0000A1   174 _P2_1	=	0x00a1
                           0000A2   175 _P2_2	=	0x00a2
                           0000A3   176 _P2_3	=	0x00a3
                           0000A4   177 _P2_4	=	0x00a4
                           0000A5   178 _P2_5	=	0x00a5
                           0000A6   179 _P2_6	=	0x00a6
                           0000A7   180 _P2_7	=	0x00a7
                           0000A8   181 _EX0	=	0x00a8
                           0000A9   182 _ET0	=	0x00a9
                           0000AA   183 _EX1	=	0x00aa
                           0000AB   184 _ET1	=	0x00ab
                           0000AC   185 _ES	=	0x00ac
                           0000AF   186 _EA	=	0x00af
                           0000B0   187 _P3_0	=	0x00b0
                           0000B1   188 _P3_1	=	0x00b1
                           0000B2   189 _P3_2	=	0x00b2
                           0000B3   190 _P3_3	=	0x00b3
                           0000B4   191 _P3_4	=	0x00b4
                           0000B5   192 _P3_5	=	0x00b5
                           0000B6   193 _P3_6	=	0x00b6
                           0000B7   194 _P3_7	=	0x00b7
                           0000B0   195 _RXD	=	0x00b0
                           0000B1   196 _TXD	=	0x00b1
                           0000B2   197 _INT0	=	0x00b2
                           0000B3   198 _INT1	=	0x00b3
                           0000B4   199 _T0	=	0x00b4
                           0000B5   200 _T1	=	0x00b5
                           0000B6   201 _WR	=	0x00b6
                           0000B7   202 _RD	=	0x00b7
                           0000B8   203 _PX0	=	0x00b8
                           0000B9   204 _PT0	=	0x00b9
                           0000BA   205 _PX1	=	0x00ba
                           0000BB   206 _PT1	=	0x00bb
                           0000BC   207 _PS	=	0x00bc
                           0000D0   208 _P	=	0x00d0
                           0000D1   209 _F1	=	0x00d1
                           0000D2   210 _OV	=	0x00d2
                           0000D3   211 _RS0	=	0x00d3
                           0000D4   212 _RS1	=	0x00d4
                           0000D5   213 _F0	=	0x00d5
                           0000D6   214 _AC	=	0x00d6
                           0000D7   215 _CY	=	0x00d7
                                    216 ;--------------------------------------------------------
                                    217 ; overlayable register banks
                                    218 ;--------------------------------------------------------
                                    219 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        220 	.ds 8
                                    221 ;--------------------------------------------------------
                                    222 ; internal ram data
                                    223 ;--------------------------------------------------------
                                    224 	.area DSEG    (DATA)
      000008                        225 _main_shared_1_2:
      000008                        226 	.ds 3
      00000B                        227 _main_k_1_2:
      00000B                        228 	.ds 2
      00000D                        229 _main_i_1_2:
      00000D                        230 	.ds 2
      00000F                        231 _main_j_1_2:
      00000F                        232 	.ds 2
      000011                        233 _main_sloc0_1_0:
      000011                        234 	.ds 1
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable items in internal ram 
                                    237 ;--------------------------------------------------------
                                    238 ;--------------------------------------------------------
                                    239 ; Stack segment in internal ram 
                                    240 ;--------------------------------------------------------
                                    241 	.area	SSEG
      000013                        242 __start__stack:
      000013                        243 	.ds	1
                                    244 
                                    245 ;--------------------------------------------------------
                                    246 ; indirectly addressable internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area ISEG    (DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; absolute internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area IABS    (ABS,DATA)
                                    253 	.area IABS    (ABS,DATA)
                                    254 ;--------------------------------------------------------
                                    255 ; bit data
                                    256 ;--------------------------------------------------------
                                    257 	.area BSEG    (BIT)
                                    258 ;--------------------------------------------------------
                                    259 ; paged external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area PSEG    (PAG,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XSEG    (XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; absolute external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XABS    (ABS,XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; external initialized ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XISEG   (XDATA)
                                    274 	.area HOME    (CODE)
                                    275 	.area GSINIT0 (CODE)
                                    276 	.area GSINIT1 (CODE)
                                    277 	.area GSINIT2 (CODE)
                                    278 	.area GSINIT3 (CODE)
                                    279 	.area GSINIT4 (CODE)
                                    280 	.area GSINIT5 (CODE)
                                    281 	.area GSINIT  (CODE)
                                    282 	.area GSFINAL (CODE)
                                    283 	.area CSEG    (CODE)
                                    284 ;--------------------------------------------------------
                                    285 ; interrupt vector 
                                    286 ;--------------------------------------------------------
                                    287 	.area HOME    (CODE)
      000000                        288 __interrupt_vect:
      000000 02 00 06         [24]  289 	ljmp	__sdcc_gsinit_startup
                                    290 ;--------------------------------------------------------
                                    291 ; global & static initialisations
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.area GSFINAL (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.globl __sdcc_gsinit_startup
                                    298 	.globl __sdcc_program_startup
                                    299 	.globl __start__stack
                                    300 	.globl __mcs51_genXINIT
                                    301 	.globl __mcs51_genXRAMCLEAR
                                    302 	.globl __mcs51_genRAMCLEAR
                                    303 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  304 	ljmp	__sdcc_program_startup
                                    305 ;--------------------------------------------------------
                                    306 ; Home
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
                                    309 	.area HOME    (CODE)
      000003                        310 __sdcc_program_startup:
      000003 02 00 66         [24]  311 	ljmp	_main
                                    312 ;	return from main will return to caller
                                    313 ;--------------------------------------------------------
                                    314 ; code
                                    315 ;--------------------------------------------------------
                                    316 	.area CSEG    (CODE)
                                    317 ;------------------------------------------------------------
                                    318 ;Allocation info for local variables in function 'terminate'
                                    319 ;------------------------------------------------------------
                                    320 ;	avg.c:6: void terminate(){
                                    321 ;	-----------------------------------------
                                    322 ;	 function terminate
                                    323 ;	-----------------------------------------
      000062                        324 _terminate:
                           000007   325 	ar7 = 0x07
                           000006   326 	ar6 = 0x06
                           000005   327 	ar5 = 0x05
                           000004   328 	ar4 = 0x04
                           000003   329 	ar3 = 0x03
                           000002   330 	ar2 = 0x02
                           000001   331 	ar1 = 0x01
                           000000   332 	ar0 = 0x00
                                    333 ;	avg.c:7: P3 = 0x55;
      000062 75 B0 55         [24]  334 	mov	_P3,#0x55
      000065 22               [24]  335 	ret
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'main'
                                    338 ;------------------------------------------------------------
                                    339 ;shared                    Allocated with name '_main_shared_1_2'
                                    340 ;k                         Allocated with name '_main_k_1_2'
                                    341 ;i                         Allocated with name '_main_i_1_2'
                                    342 ;j                         Allocated with name '_main_j_1_2'
                                    343 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                    344 ;------------------------------------------------------------
                                    345 ;	avg.c:10: void main()
                                    346 ;	-----------------------------------------
                                    347 ;	 function main
                                    348 ;	-----------------------------------------
      000066                        349 _main:
                                    350 ;	avg.c:28: for (k=0; k<8; k++){
      000066 E4               [12]  351 	clr	a
      000067 F5 0B            [12]  352 	mov	_main_k_1_2,a
      000069 F5 0C            [12]  353 	mov	(_main_k_1_2 + 1),a
                                    354 ;	avg.c:30: for(i=0; i<10; i++){
      00006B                        355 00126$:
      00006B E4               [12]  356 	clr	a
      00006C F5 0D            [12]  357 	mov	_main_i_1_2,a
      00006E F5 0E            [12]  358 	mov	(_main_i_1_2 + 1),a
      000070 7A 00            [12]  359 	mov	r2,#0x00
      000072 7B 00            [12]  360 	mov	r3,#0x00
      000074 78 00            [12]  361 	mov	r0,#0x00
      000076 79 00            [12]  362 	mov	r1,#0x00
                                    363 ;	avg.c:31: for(j=0; j<10; j++){
      000078                        364 00124$:
      000078 74 09            [12]  365 	mov	a,#0x09
      00007A B5 0D 08         [24]  366 	cjne	a,_main_i_1_2,00157$
      00007D E4               [12]  367 	clr	a
      00007E B5 0E 04         [24]  368 	cjne	a,(_main_i_1_2 + 1),00157$
      000081 74 01            [12]  369 	mov	a,#0x01
      000083 80 01            [24]  370 	sjmp	00158$
      000085                        371 00157$:
      000085 E4               [12]  372 	clr	a
      000086                        373 00158$:
      000086 F5 11            [12]  374 	mov	_main_sloc0_1_0,a
      000088 E4               [12]  375 	clr	a
      000089 F5 0F            [12]  376 	mov	_main_j_1_2,a
      00008B F5 10            [12]  377 	mov	(_main_j_1_2 + 1),a
      00008D                        378 00113$:
                                    379 ;	avg.c:32: if(i==0 || j==0 || i==9 || j==9){
      00008D E5 0D            [12]  380 	mov	a,_main_i_1_2
      00008F 45 0E            [12]  381 	orl	a,(_main_i_1_2 + 1)
      000091 60 17            [24]  382 	jz	00101$
      000093 E5 0F            [12]  383 	mov	a,_main_j_1_2
      000095 45 10            [12]  384 	orl	a,(_main_j_1_2 + 1)
      000097 60 11            [24]  385 	jz	00101$
      000099 E5 11            [12]  386 	mov	a,_main_sloc0_1_0
      00009B 70 0D            [24]  387 	jnz	00101$
      00009D 74 09            [12]  388 	mov	a,#0x09
      00009F B5 0F 06         [24]  389 	cjne	a,_main_j_1_2,00162$
      0000A2 E4               [12]  390 	clr	a
      0000A3 B5 10 02         [24]  391 	cjne	a,(_main_j_1_2 + 1),00162$
      0000A6 80 02            [24]  392 	sjmp	00163$
      0000A8                        393 00162$:
      0000A8 80 18            [24]  394 	sjmp	00102$
      0000AA                        395 00163$:
      0000AA                        396 00101$:
                                    397 ;	avg.c:33: shared[(10*i)+j] = 0;
      0000AA E5 0F            [12]  398 	mov	a,_main_j_1_2
      0000AC 28               [12]  399 	add	a,r0
      0000AD FC               [12]  400 	mov	r4,a
      0000AE E5 10            [12]  401 	mov	a,(_main_j_1_2 + 1)
      0000B0 39               [12]  402 	addc	a,r1
      0000B1 24 40            [12]  403 	add	a,#0x40
      0000B3 FD               [12]  404 	mov	r5,a
      0000B4 7F 00            [12]  405 	mov	r7,#0x00
      0000B6 8C 82            [24]  406 	mov	dpl,r4
      0000B8 8D 83            [24]  407 	mov	dph,r5
      0000BA 8F F0            [24]  408 	mov	b,r7
      0000BC E4               [12]  409 	clr	a
      0000BD 12 01 4A         [24]  410 	lcall	__gptrput
      0000C0 80 2B            [24]  411 	sjmp	00114$
      0000C2                        412 00102$:
                                    413 ;	avg.c:37: shared[(10*i)+j] = k+(10*i)+j; //to make the pixels
      0000C2 C0 00            [24]  414 	push	ar0
      0000C4 C0 01            [24]  415 	push	ar1
      0000C6 E5 0F            [12]  416 	mov	a,_main_j_1_2
      0000C8 2A               [12]  417 	add	a,r2
      0000C9 FE               [12]  418 	mov	r6,a
      0000CA E5 10            [12]  419 	mov	a,(_main_j_1_2 + 1)
      0000CC 3B               [12]  420 	addc	a,r3
      0000CD 24 40            [12]  421 	add	a,#0x40
      0000CF FF               [12]  422 	mov	r7,a
      0000D0 7D 00            [12]  423 	mov	r5,#0x00
      0000D2 AC 0B            [24]  424 	mov	r4,_main_k_1_2
      0000D4 E5 0D            [12]  425 	mov	a,_main_i_1_2
      0000D6 75 F0 0A         [24]  426 	mov	b,#0x0A
      0000D9 A4               [48]  427 	mul	ab
      0000DA 2C               [12]  428 	add	a,r4
      0000DB FC               [12]  429 	mov	r4,a
      0000DC E5 0F            [12]  430 	mov	a,_main_j_1_2
      0000DE 2C               [12]  431 	add	a,r4
      0000DF FC               [12]  432 	mov	r4,a
      0000E0 8E 82            [24]  433 	mov	dpl,r6
      0000E2 8F 83            [24]  434 	mov	dph,r7
      0000E4 8D F0            [24]  435 	mov	b,r5
      0000E6 12 01 4A         [24]  436 	lcall	__gptrput
                                    437 ;	avg.c:45: terminate();
      0000E9 D0 01            [24]  438 	pop	ar1
      0000EB D0 00            [24]  439 	pop	ar0
                                    440 ;	avg.c:37: shared[(10*i)+j] = k+(10*i)+j; //to make the pixels
      0000ED                        441 00114$:
                                    442 ;	avg.c:31: for(j=0; j<10; j++){
      0000ED 05 0F            [12]  443 	inc	_main_j_1_2
      0000EF E4               [12]  444 	clr	a
      0000F0 B5 0F 02         [24]  445 	cjne	a,_main_j_1_2,00164$
      0000F3 05 10            [12]  446 	inc	(_main_j_1_2 + 1)
      0000F5                        447 00164$:
      0000F5 C3               [12]  448 	clr	c
      0000F6 E5 0F            [12]  449 	mov	a,_main_j_1_2
      0000F8 94 0A            [12]  450 	subb	a,#0x0A
      0000FA E5 10            [12]  451 	mov	a,(_main_j_1_2 + 1)
      0000FC 94 00            [12]  452 	subb	a,#0x00
      0000FE 40 8D            [24]  453 	jc	00113$
                                    454 ;	avg.c:30: for(i=0; i<10; i++){
      000100 74 0A            [12]  455 	mov	a,#0x0A
      000102 2A               [12]  456 	add	a,r2
      000103 FA               [12]  457 	mov	r2,a
      000104 E4               [12]  458 	clr	a
      000105 3B               [12]  459 	addc	a,r3
      000106 FB               [12]  460 	mov	r3,a
      000107 74 0A            [12]  461 	mov	a,#0x0A
      000109 28               [12]  462 	add	a,r0
      00010A F8               [12]  463 	mov	r0,a
      00010B E4               [12]  464 	clr	a
      00010C 39               [12]  465 	addc	a,r1
      00010D F9               [12]  466 	mov	r1,a
      00010E 05 0D            [12]  467 	inc	_main_i_1_2
      000110 E4               [12]  468 	clr	a
      000111 B5 0D 02         [24]  469 	cjne	a,_main_i_1_2,00166$
      000114 05 0E            [12]  470 	inc	(_main_i_1_2 + 1)
      000116                        471 00166$:
      000116 C3               [12]  472 	clr	c
      000117 E5 0D            [12]  473 	mov	a,_main_i_1_2
      000119 94 0A            [12]  474 	subb	a,#0x0A
      00011B E5 0E            [12]  475 	mov	a,(_main_i_1_2 + 1)
      00011D 94 00            [12]  476 	subb	a,#0x00
      00011F 50 03            [24]  477 	jnc	00167$
      000121 02 00 78         [24]  478 	ljmp	00124$
      000124                        479 00167$:
                                    480 ;	avg.c:41: P1 = 1;
      000124 75 90 01         [24]  481 	mov	_P1,#0x01
                                    482 ;	avg.c:42: P1 = 0;
      000127 75 90 00         [24]  483 	mov	_P1,#0x00
                                    484 ;	avg.c:43: while(P2==1);
      00012A                        485 00109$:
      00012A 74 01            [12]  486 	mov	a,#0x01
      00012C B5 A0 02         [24]  487 	cjne	a,_P2,00168$
      00012F 80 F9            [24]  488 	sjmp	00109$
      000131                        489 00168$:
                                    490 ;	avg.c:28: for (k=0; k<8; k++){
      000131 05 0B            [12]  491 	inc	_main_k_1_2
      000133 E4               [12]  492 	clr	a
      000134 B5 0B 02         [24]  493 	cjne	a,_main_k_1_2,00169$
      000137 05 0C            [12]  494 	inc	(_main_k_1_2 + 1)
      000139                        495 00169$:
      000139 C3               [12]  496 	clr	c
      00013A E5 0B            [12]  497 	mov	a,_main_k_1_2
      00013C 94 08            [12]  498 	subb	a,#0x08
      00013E E5 0C            [12]  499 	mov	a,(_main_k_1_2 + 1)
      000140 94 00            [12]  500 	subb	a,#0x00
      000142 50 03            [24]  501 	jnc	00170$
      000144 02 00 6B         [24]  502 	ljmp	00126$
      000147                        503 00170$:
                                    504 ;	avg.c:45: terminate();
      000147 02 00 62         [24]  505 	ljmp	_terminate
                                    506 	.area CSEG    (CODE)
                                    507 	.area CONST   (CODE)
                                    508 	.area XINIT   (CODE)
                                    509 	.area CABS    (ABS,CODE)
