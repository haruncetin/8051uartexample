;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _UART_RxChar
	.globl _UART_TxChar
	.globl _UART_Init
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
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
	.globl _A
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
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$A$0$0 == 0x00e0
_A	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$FL$0$0 == 0x00d1
_FL	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
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
Lmain.main$a$1$6==.
_main_a_1_6:
	.ds 58
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
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;baudrate                  Allocated to registers r6 r7 
;------------------------------------------------------------
	G$UART_Init$0$0 ==.
	C$main.c$2$0$0 ==.
;	main.c:2: void UART_Init(int baudrate){
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
	C$main.c$3$1$2 ==.
;	main.c:3: SCON = 0x50;
	mov	_SCON,#0x50
	C$main.c$4$1$2 ==.
;	main.c:4: TMOD = 0x20;
	mov	_TMOD,#0x20
	C$main.c$5$1$2 ==.
;	main.c:5: TH1 = 256 - (11059200)/(long)(32*12*baudrate);
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x0180
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	__divslong_PARM_2,r6
	mov	a,r7
	mov	(__divslong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dptr,#0xc000
	mov	b,#0xa8
	clr	a
	lcall	__divslong
	mov	r4,dpl
	clr	c
	clr	a
	subb	a,r4
	mov	_TH1,a
	C$main.c$6$1$2 ==.
;	main.c:6: TR1 = 1;
	setb	_TR1
	C$main.c$7$1$2 ==.
	XG$UART_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_TxChar'
;------------------------------------------------------------
;ch                        Allocated to registers 
;------------------------------------------------------------
	G$UART_TxChar$0$0 ==.
	C$main.c$9$1$2 ==.
;	main.c:9: void UART_TxChar(char ch){
;	-----------------------------------------
;	 function UART_TxChar
;	-----------------------------------------
_UART_TxChar:
	mov	_SBUF,dpl
	C$main.c$11$1$4 ==.
;	main.c:11: while(TI==0);
00101$:
	C$main.c$12$1$4 ==.
;	main.c:12: TI=0;
	jbc	_TI,00112$
	sjmp	00101$
00112$:
	C$main.c$13$1$4 ==.
	XG$UART_TxChar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_RxChar'
;------------------------------------------------------------
	G$UART_RxChar$0$0 ==.
	C$main.c$15$1$4 ==.
;	main.c:15: char UART_RxChar(){
;	-----------------------------------------
;	 function UART_RxChar
;	-----------------------------------------
_UART_RxChar:
	C$main.c$16$1$5 ==.
;	main.c:16: while(RI==0);
00101$:
	C$main.c$17$1$5 ==.
;	main.c:17: RI=0;
	jbc	_RI,00112$
	sjmp	00101$
00112$:
	C$main.c$18$1$5 ==.
;	main.c:18: return(SBUF);
	mov	dpl,_SBUF
	C$main.c$19$1$5 ==.
	XG$UART_RxChar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;a                         Allocated with name '_main_a_1_6'
;ch                        Allocated to registers 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$23$1$5 ==.
;	main.c:23: int main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$24$1$5 ==.
;	main.c:24: char i,a[]={"Welcome to 8051 Serial Comm, Type the char to be echoed: "};
	mov	_main_a_1_6,#0x57
	mov	(_main_a_1_6 + 0x0001),#0x65
	mov	(_main_a_1_6 + 0x0002),#0x6c
	mov	(_main_a_1_6 + 0x0003),#0x63
	mov	(_main_a_1_6 + 0x0004),#0x6f
	mov	(_main_a_1_6 + 0x0005),#0x6d
	mov	(_main_a_1_6 + 0x0006),#0x65
	mov	(_main_a_1_6 + 0x0007),#0x20
	mov	(_main_a_1_6 + 0x0008),#0x74
	mov	(_main_a_1_6 + 0x0009),#0x6f
	mov	(_main_a_1_6 + 0x000a),#0x20
	mov	(_main_a_1_6 + 0x000b),#0x38
	mov	(_main_a_1_6 + 0x000c),#0x30
	mov	(_main_a_1_6 + 0x000d),#0x35
	mov	(_main_a_1_6 + 0x000e),#0x31
	mov	(_main_a_1_6 + 0x000f),#0x20
	mov	(_main_a_1_6 + 0x0010),#0x53
	mov	(_main_a_1_6 + 0x0011),#0x65
	mov	(_main_a_1_6 + 0x0012),#0x72
	mov	(_main_a_1_6 + 0x0013),#0x69
	mov	(_main_a_1_6 + 0x0014),#0x61
	mov	(_main_a_1_6 + 0x0015),#0x6c
	mov	(_main_a_1_6 + 0x0016),#0x20
	mov	(_main_a_1_6 + 0x0017),#0x43
	mov	(_main_a_1_6 + 0x0018),#0x6f
	mov	(_main_a_1_6 + 0x0019),#0x6d
	mov	(_main_a_1_6 + 0x001a),#0x6d
	mov	(_main_a_1_6 + 0x001b),#0x2c
	mov	(_main_a_1_6 + 0x001c),#0x20
	mov	(_main_a_1_6 + 0x001d),#0x54
	mov	(_main_a_1_6 + 0x001e),#0x79
	mov	(_main_a_1_6 + 0x001f),#0x70
	mov	(_main_a_1_6 + 0x0020),#0x65
	mov	(_main_a_1_6 + 0x0021),#0x20
	mov	(_main_a_1_6 + 0x0022),#0x74
	mov	(_main_a_1_6 + 0x0023),#0x68
	mov	(_main_a_1_6 + 0x0024),#0x65
	mov	(_main_a_1_6 + 0x0025),#0x20
	mov	(_main_a_1_6 + 0x0026),#0x63
	mov	(_main_a_1_6 + 0x0027),#0x68
	mov	(_main_a_1_6 + 0x0028),#0x61
	mov	(_main_a_1_6 + 0x0029),#0x72
	mov	(_main_a_1_6 + 0x002a),#0x20
	mov	(_main_a_1_6 + 0x002b),#0x74
	mov	(_main_a_1_6 + 0x002c),#0x6f
	mov	(_main_a_1_6 + 0x002d),#0x20
	mov	(_main_a_1_6 + 0x002e),#0x62
	mov	(_main_a_1_6 + 0x002f),#0x65
	mov	(_main_a_1_6 + 0x0030),#0x20
	mov	(_main_a_1_6 + 0x0031),#0x65
	mov	(_main_a_1_6 + 0x0032),#0x63
	mov	(_main_a_1_6 + 0x0033),#0x68
	mov	(_main_a_1_6 + 0x0034),#0x6f
	mov	(_main_a_1_6 + 0x0035),#0x65
	mov	(_main_a_1_6 + 0x0036),#0x64
	mov	(_main_a_1_6 + 0x0037),#0x3a
	mov	(_main_a_1_6 + 0x0038),#0x20
	mov	(_main_a_1_6 + 0x0039),#0x00
	C$main.c$26$1$6 ==.
;	main.c:26: UART_Init(9600);
	mov	dptr,#0x2580
	lcall	_UART_Init
	C$main.c$27$1$6 ==.
;	main.c:27: for(i=0; a[i] != 0; i++){
	mov	r7,#0x00
00106$:
	mov	a,r7
	add	a,#_main_a_1_6
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	jz	00103$
	C$main.c$28$2$7 ==.
;	main.c:28: UART_TxChar(a[i]);
	mov	dpl,r6
	push	ar7
	lcall	_UART_TxChar
	pop	ar7
	C$main.c$27$1$6 ==.
;	main.c:27: for(i=0; a[i] != 0; i++){
	inc	r7
	C$main.c$31$1$6 ==.
;	main.c:31: while(1)
	sjmp	00106$
00103$:
	C$main.c$33$2$8 ==.
;	main.c:33: ch = UART_RxChar();
	lcall	_UART_RxChar
	C$main.c$34$2$8 ==.
;	main.c:34: UART_TxChar(ch);
	lcall	_UART_TxChar
	sjmp	00103$
	C$main.c$36$1$6 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
