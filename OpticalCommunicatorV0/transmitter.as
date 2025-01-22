subtitle "Microchip MPLAB XC8 C Compiler v2.45 (Free license) build 20230818022343 Og9 "

pagewidth 120

	opt flic

	processor	18F2550
include "/opt/microchip/xc8/v2.45/pic/include/proc/18f2550.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UFRM equ 0F66h ;# 
# 61 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UFRML equ 0F66h ;# 
# 139 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UFRMH equ 0F67h ;# 
# 179 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UIR equ 0F68h ;# 
# 235 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UIE equ 0F69h ;# 
# 291 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEIR equ 0F6Ah ;# 
# 342 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEIE equ 0F6Bh ;# 
# 393 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
USTAT equ 0F6Ch ;# 
# 453 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UCON equ 0F6Dh ;# 
# 504 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UADDR equ 0F6Eh ;# 
# 568 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UCFG equ 0F6Fh ;# 
# 647 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP0 equ 0F70h ;# 
# 755 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP1 equ 0F71h ;# 
# 863 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP2 equ 0F72h ;# 
# 971 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP3 equ 0F73h ;# 
# 1079 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP4 equ 0F74h ;# 
# 1187 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP5 equ 0F75h ;# 
# 1295 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP6 equ 0F76h ;# 
# 1403 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP7 equ 0F77h ;# 
# 1511 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP8 equ 0F78h ;# 
# 1587 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP9 equ 0F79h ;# 
# 1663 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP10 equ 0F7Ah ;# 
# 1739 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP11 equ 0F7Bh ;# 
# 1815 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP12 equ 0F7Ch ;# 
# 1891 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP13 equ 0F7Dh ;# 
# 1967 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP14 equ 0F7Eh ;# 
# 2043 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
UEP15 equ 0F7Fh ;# 
# 2119 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PORTA equ 0F80h ;# 
# 2258 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PORTB equ 0F81h ;# 
# 2368 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PORTC equ 0F82h ;# 
# 2510 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PORTE equ 0F84h ;# 
# 2549 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
LATA equ 0F89h ;# 
# 2649 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
LATB equ 0F8Ah ;# 
# 2761 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
LATC equ 0F8Bh ;# 
# 2839 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TRISA equ 0F92h ;# 
# 2844 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
DDRA equ 0F92h ;# 
# 3037 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TRISB equ 0F93h ;# 
# 3042 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
DDRB equ 0F93h ;# 
# 3259 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TRISC equ 0F94h ;# 
# 3264 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
DDRC equ 0F94h ;# 
# 3413 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
OSCTUNE equ 0F9Bh ;# 
# 3472 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PIE1 equ 0F9Dh ;# 
# 3543 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PIR1 equ 0F9Eh ;# 
# 3614 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
IPR1 equ 0F9Fh ;# 
# 3685 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PIE2 equ 0FA0h ;# 
# 3756 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PIR2 equ 0FA1h ;# 
# 3827 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
IPR2 equ 0FA2h ;# 
# 3898 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
EECON1 equ 0FA6h ;# 
# 3964 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
EECON2 equ 0FA7h ;# 
# 3971 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
EEDATA equ 0FA8h ;# 
# 3978 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
EEADR equ 0FA9h ;# 
# 3985 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
RCSTA equ 0FABh ;# 
# 3990 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
RCSTA1 equ 0FABh ;# 
# 4195 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TXSTA equ 0FACh ;# 
# 4200 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TXSTA1 equ 0FACh ;# 
# 4451 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TXREG equ 0FADh ;# 
# 4456 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TXREG1 equ 0FADh ;# 
# 4463 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
RCREG equ 0FAEh ;# 
# 4468 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
RCREG1 equ 0FAEh ;# 
# 4475 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
SPBRG equ 0FAFh ;# 
# 4480 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
SPBRG1 equ 0FAFh ;# 
# 4487 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
SPBRGH equ 0FB0h ;# 
# 4494 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
T3CON equ 0FB1h ;# 
# 4615 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TMR3 equ 0FB2h ;# 
# 4622 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TMR3L equ 0FB2h ;# 
# 4629 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TMR3H equ 0FB3h ;# 
# 4636 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CMCON equ 0FB4h ;# 
# 4726 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CVRCON equ 0FB5h ;# 
# 4811 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
ECCP1AS equ 0FB6h ;# 
# 4816 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CCP1AS equ 0FB6h ;# 
# 4941 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
ECCP1DEL equ 0FB7h ;# 
# 4946 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CCP1DEL equ 0FB7h ;# 
# 4981 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
BAUDCON equ 0FB8h ;# 
# 4986 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
BAUDCTL equ 0FB8h ;# 
# 5161 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CCP2CON equ 0FBAh ;# 
# 5225 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CCPR2 equ 0FBBh ;# 
# 5232 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CCPR2L equ 0FBBh ;# 
# 5239 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CCPR2H equ 0FBCh ;# 
# 5246 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CCP1CON equ 0FBDh ;# 
# 5310 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CCPR1 equ 0FBEh ;# 
# 5317 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CCPR1L equ 0FBEh ;# 
# 5324 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
CCPR1H equ 0FBFh ;# 
# 5331 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
ADCON2 equ 0FC0h ;# 
# 5402 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
ADCON1 equ 0FC1h ;# 
# 5487 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
ADCON0 equ 0FC2h ;# 
# 5606 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
ADRES equ 0FC3h ;# 
# 5613 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
ADRESL equ 0FC3h ;# 
# 5620 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
ADRESH equ 0FC4h ;# 
# 5627 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
SSPCON2 equ 0FC5h ;# 
# 5689 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
SSPCON1 equ 0FC6h ;# 
# 5759 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
SSPSTAT equ 0FC7h ;# 
# 6007 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
SSPADD equ 0FC8h ;# 
# 6014 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
SSPBUF equ 0FC9h ;# 
# 6021 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
T2CON equ 0FCAh ;# 
# 6119 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PR2 equ 0FCBh ;# 
# 6124 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
MEMCON equ 0FCBh ;# 
# 6229 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TMR2 equ 0FCCh ;# 
# 6236 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
T1CON equ 0FCDh ;# 
# 6339 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TMR1 equ 0FCEh ;# 
# 6346 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TMR1L equ 0FCEh ;# 
# 6353 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TMR1H equ 0FCFh ;# 
# 6360 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
RCON equ 0FD0h ;# 
# 6509 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
WDTCON equ 0FD1h ;# 
# 6537 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
HLVDCON equ 0FD2h ;# 
# 6542 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
LVDCON equ 0FD2h ;# 
# 6807 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
OSCCON equ 0FD3h ;# 
# 6890 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
T0CON equ 0FD5h ;# 
# 6960 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TMR0 equ 0FD6h ;# 
# 6967 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TMR0L equ 0FD6h ;# 
# 6974 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TMR0H equ 0FD7h ;# 
# 6981 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
STATUS equ 0FD8h ;# 
# 7052 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
FSR2 equ 0FD9h ;# 
# 7059 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
FSR2L equ 0FD9h ;# 
# 7066 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
FSR2H equ 0FDAh ;# 
# 7073 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PLUSW2 equ 0FDBh ;# 
# 7080 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PREINC2 equ 0FDCh ;# 
# 7087 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
POSTDEC2 equ 0FDDh ;# 
# 7094 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
POSTINC2 equ 0FDEh ;# 
# 7101 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
INDF2 equ 0FDFh ;# 
# 7108 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
BSR equ 0FE0h ;# 
# 7115 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
FSR1 equ 0FE1h ;# 
# 7122 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
FSR1L equ 0FE1h ;# 
# 7129 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
FSR1H equ 0FE2h ;# 
# 7136 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PLUSW1 equ 0FE3h ;# 
# 7143 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PREINC1 equ 0FE4h ;# 
# 7150 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
POSTDEC1 equ 0FE5h ;# 
# 7157 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
POSTINC1 equ 0FE6h ;# 
# 7164 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
INDF1 equ 0FE7h ;# 
# 7171 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
WREG equ 0FE8h ;# 
# 7178 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
FSR0 equ 0FE9h ;# 
# 7185 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
FSR0L equ 0FE9h ;# 
# 7192 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
FSR0H equ 0FEAh ;# 
# 7199 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PLUSW0 equ 0FEBh ;# 
# 7206 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PREINC0 equ 0FECh ;# 
# 7213 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
POSTDEC0 equ 0FEDh ;# 
# 7220 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
POSTINC0 equ 0FEEh ;# 
# 7227 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
INDF0 equ 0FEFh ;# 
# 7234 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
INTCON3 equ 0FF0h ;# 
# 7326 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
INTCON2 equ 0FF1h ;# 
# 7403 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
INTCON equ 0FF2h ;# 
# 7520 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PROD equ 0FF3h ;# 
# 7527 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PRODL equ 0FF3h ;# 
# 7534 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PRODH equ 0FF4h ;# 
# 7541 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TABLAT equ 0FF5h ;# 
# 7550 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TBLPTR equ 0FF6h ;# 
# 7557 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TBLPTRL equ 0FF6h ;# 
# 7564 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TBLPTRH equ 0FF7h ;# 
# 7571 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TBLPTRU equ 0FF8h ;# 
# 7580 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PCLAT equ 0FF9h ;# 
# 7587 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PC equ 0FF9h ;# 
# 7594 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PCL equ 0FF9h ;# 
# 7601 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PCLATH equ 0FFAh ;# 
# 7608 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
PCLATU equ 0FFBh ;# 
# 7615 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
STKPTR equ 0FFCh ;# 
# 7691 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TOS equ 0FFDh ;# 
# 7698 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TOSL equ 0FFDh ;# 
# 7705 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TOSH equ 0FFEh ;# 
# 7712 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f2550.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNROOT	_main
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"transmitter.c"
	line	30

;initializer for _message
	db	low(04Dh)
	db	low(079h)
	db	low(020h)
	db	low(06Dh)
	db	low(065h)
	db	low(073h)
	db	low(073h)
	db	low(061h)
	db	low(067h)
	db	low(065h)
	db	low(0)
	line	31

;initializer for _guardRail
	db	low(0BAh)
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config PLLDIV = "1"
	config CPUDIV = "OSC1_PLL2"
	config USBDIV = "2"
	config FOSC = "XT_XT"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRT = "OFF"
	config BOR = "ON"
	config BORV = "3"
	config VREGEN = "OFF"
	config WDT = "OFF"
	config MCLRE = "OFF"
	config LVP = "OFF"
	file	"transmitter.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"transmitter.c"
	line	30
	global	_message
	global	_message
_message:
       ds      11
psect	dataCOMRAM
	file	"transmitter.c"
	line	31
	global	_guardRail
	global	_guardRail
_guardRail:
       ds      1
	file	"transmitter.as"
	line	#
psect	cinit
; Initialize objects allocated to COMRAM (12 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,12
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        12
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      0      12
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      22        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK4           100      0       0      13        0.0%
;!BANK4              100      0       0      14        0.0%
;!BITBANK3           100      0       0      11        0.0%
;!BANK3              100      0       0      12        0.0%
;!BITBANK2           100      0       0       9        0.0%
;!BANK2              100      0       0      10        0.0%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100      0       0       8        0.0%
;!BITBIGSFR           A0      0       0      21        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F      0       C       1       12.6%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0       C       6        0.0%
;!DATA                 0      0       C       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "transmitter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"transmitter.c"
	line	34
global __ptext0
__ptext0:
psect	text0
	file	"transmitter.c"
	line	34
	
_main:
;incstack = 0
	callstack 31
	line	36
	
l9:
	line	39
	goto	l9
	global	start
	goto	start
	callstack 0
	line	42
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
