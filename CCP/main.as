subtitle "Microchip MPLAB XC8 C Compiler v2.45 (Free license) build 20230818022343 Og9 "

pagewidth 120

	opt flic

	processor	18F4550
include "/opt/microchip/xc8/v2.45/pic/include/proc/18f4550.cgen.inc"
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
# 54 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 74 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 151 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 225 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 251 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 258 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 336 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 376 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 432 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 488 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 539 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 590 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 650 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 701 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 765 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 844 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 952 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1060 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1168 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1276 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1384 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1492 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1600 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1708 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1784 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1860 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1936 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2012 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2088 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2164 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2240 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2316 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2455 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2565 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2707 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2828 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2975 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3075 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3187 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3265 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3377 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3429 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3434 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3627 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3632 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3849 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3854 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4003 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4008 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4225 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4230 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4327 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4386 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4470 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4554 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4638 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4709 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4780 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4851 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4917 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4924 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4931 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4938 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4943 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5148 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5153 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5404 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5409 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5416 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5421 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5428 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5433 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5440 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5447 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5568 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5575 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5582 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5589 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5679 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5764 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5769 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5926 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5931 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6064 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6069 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6244 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6308 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6315 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6322 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6329 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6334 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6491 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6498 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6505 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6512 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6583 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6668 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6787 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6794 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6801 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6808 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6870 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6940 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7188 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7195 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7202 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7300 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7305 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7410 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7417 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7520 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7527 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7534 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7541 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7690 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7718 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7723 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7988 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8071 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8141 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8148 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8155 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8162 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8233 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8240 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8247 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8254 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8261 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8268 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8275 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8282 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8289 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8296 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8303 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8310 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8317 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8324 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8331 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8338 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8345 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8352 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8359 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8366 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8373 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8380 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8387 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8394 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8401 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8408 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8415 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8507 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8584 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8701 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8708 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8715 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8722 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8731 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8738 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8745 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8752 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8761 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8768 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8775 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8782 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8789 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8796 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8872 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8879 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8886 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8893 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 54 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 74 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 151 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 225 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 251 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 258 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 336 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 376 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 432 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 488 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 539 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 590 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 650 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 701 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 765 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 844 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 952 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1060 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1168 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1276 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1384 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1492 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1600 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1708 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1784 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1860 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1936 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2012 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2088 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2164 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2240 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2316 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2455 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2565 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2707 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2828 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2975 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3075 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3187 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3265 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3377 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3429 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3434 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3627 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3632 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3849 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3854 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4003 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4008 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4225 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4230 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4327 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4386 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4470 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4554 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4638 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4709 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4780 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4851 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4917 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4924 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4931 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4938 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4943 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5148 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5153 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5404 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5409 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5416 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5421 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5428 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5433 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5440 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5447 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5568 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5575 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5582 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5589 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5679 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5764 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5769 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5926 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5931 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6064 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6069 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6244 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6308 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6315 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6322 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6329 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6334 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6491 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6498 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6505 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6512 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6583 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6668 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6787 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6794 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6801 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6808 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6870 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6940 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7188 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7195 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7202 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7300 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7305 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7410 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7417 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7520 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7527 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7534 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7541 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7690 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7718 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7723 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7988 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8071 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8141 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8148 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8155 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8162 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8233 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8240 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8247 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8254 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8261 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8268 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8275 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8282 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8289 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8296 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8303 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8310 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8317 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8324 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8331 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8338 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8345 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8352 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8359 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8366 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8373 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8380 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8387 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8394 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8401 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8408 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8415 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8507 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8584 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8701 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8708 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8715 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8722 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8731 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8738 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8745 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8752 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8761 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8768 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8775 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8782 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8789 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8796 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8872 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8879 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8886 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8893 "/opt/microchip/xc8/v2.45/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_IntToStr
	FNCALL	_main,___ftdiv
	FNCALL	_main,___fttol
	FNCALL	_main,___lwtoft
	FNCALL	_main,_lcd_write
	FNCALL	_main,_setup
	FNCALL	_setup,_init_lcd
	FNCALL	_init_lcd,_lcd_send_cmd
	FNCALL	_lcd_write,_enable_pulse
	FNCALL	_lcd_write,_lcd_send_cmd
	FNCALL	_lcd_send_cmd,_enable_pulse
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_IntToStr,___lwdiv
	FNCALL	_IntToStr,___lwmod
	FNROOT	_main
	FNCALL	intlevel2,_isr_routine
	global	intlevel2
	FNROOT	intlevel2
	global	_rounded_frequency
	global	_frequency
	global	_data2
	global	_data
	global	_data_txt
	global	_fdata
	global	_LATD
_LATD	set	0xF8C
	global	_LATE
_LATE	set	0xF8D
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_CCPR1
_CCPR1	set	0xFBE
	global	_T3CONbits
_T3CONbits	set	0xFB1
	global	_CCP1CON
_CCP1CON	set	0xFBD
	global	_TMR1
_TMR1	set	0xFCE
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_T1CONbits
_T1CONbits	set	0xFCD
	global	_TRISE
_TRISE	set	0xF96
	global	_TRISD
_TRISD	set	0xF95
	global	_PIE1bits
_PIE1bits	set	0xF9D
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_1:
	db	72	;'H'
	db	122	;'z'
	db	0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config PLLDIV = "5"
	config CPUDIV = "OSC1_PLL2"
	config USBDIV = "2"
	config FOSC = "HS"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRT = "OFF"
	config BOR = "ON"
	config BORV = "3"
	config VREGEN = "OFF"
	config WDT = "OFF"
	file	"main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_period
	global	_period
_period:
       ds      3
	global	_rounded_frequency
_rounded_frequency:
       ds      2
	global	_frequency
_frequency:
       ds      2
	global	_data2
_data2:
       ds      2
	global	_data
_data:
       ds      2
	global	_data_txt
_data_txt:
       ds      5
	global	_fdata
_fdata:
       ds      2
	file	"main.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (18 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	18
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_setup:	; 1 bytes @ 0x0
?_init_lcd:	; 1 bytes @ 0x0
?_isr_routine:	; 1 bytes @ 0x0
??_isr_routine:	; 1 bytes @ 0x0
?_enable_pulse:	; 1 bytes @ 0x0
??_enable_pulse:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds   1
?_lcd_send_cmd:	; 1 bytes @ 0x1
	global	lcd_send_cmd@cmd
lcd_send_cmd@cmd:	; 2 bytes @ 0x1
	ds   1
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds   1
?_lcd_write:	; 1 bytes @ 0x3
??_init_lcd:	; 1 bytes @ 0x3
??_lcd_send_cmd:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	lcd_write@row
lcd_write@row:	; 2 bytes @ 0x3
	ds   1
??_setup:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds   1
??___ftpack:	; 1 bytes @ 0x5
	global	lcd_write@line
lcd_write@line:	; 2 bytes @ 0x5
	ds   1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds   1
?_IntToStr:	; 1 bytes @ 0x7
	global	lcd_write@txt
lcd_write@txt:	; 2 bytes @ 0x7
	global	IntToStr@FromInt
IntToStr@FromInt:	; 2 bytes @ 0x7
	ds   1
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds   1
??_lcd_write:	; 1 bytes @ 0x9
	global	IntToStr@ToStr
IntToStr@ToStr:	; 1 bytes @ 0x9
	ds   1
??_IntToStr:	; 1 bytes @ 0xA
	global	IntToStr@num
IntToStr@num:	; 2 bytes @ 0xA
	ds   1
??___lwtoft:	; 1 bytes @ 0xB
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xB
	global	lcd_write@index
lcd_write@index:	; 2 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds   1
	global	IntToStr@index
IntToStr@index:	; 2 bytes @ 0xC
	ds   2
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xE
	ds   3
??___ftdiv:	; 1 bytes @ 0x11
	ds   3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x14
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x15
	ds   3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x18
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x19
	ds   1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x1A
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x1A
	ds   4
??___fttol:	; 1 bytes @ 0x1E
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x23
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x24
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x28
	ds   1
??_main:	; 1 bytes @ 0x29
	ds   2
;!
;!Data Sizes:
;!    Strings     3
;!    Constant    0
;!    Data        0
;!    BSS         18
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     43      61
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
;!    IntToStr@ToStr	PTR unsigned char  size(1) Largest target is 5
;!		 -> data_txt(COMRAM[5]), 
;!
;!    lcd_write@txt	PTR const unsigned char  size(2) Largest target is 5
;!		 -> data_txt(COMRAM[5]), STR_1(CODE[3]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->___fttol
;!    _setup->_init_lcd
;!    _init_lcd->_lcd_send_cmd
;!    _lcd_write->_lcd_send_cmd
;!    _lcd_send_cmd->_enable_pulse
;!    ___lwtoft->___ftpack
;!    ___fttol->___ftdiv
;!    ___ftdiv->___lwtoft
;!    _IntToStr->___lwdiv
;!
;!Critical Paths under _isr_routine in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _isr_routine in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr_routine in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr_routine in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr_routine in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr_routine in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr_routine in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr_routine in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _isr_routine in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0    8544
;!                                             41 COMRAM     2     2      0
;!                           _IntToStr
;!                            ___ftdiv
;!                            ___fttol
;!                           ___lwtoft
;!                          _lcd_write
;!                              _setup
;! ---------------------------------------------------------------------------------
;! (1) _setup                                                0     0      0     250
;!                           _init_lcd
;! ---------------------------------------------------------------------------------
;! (2) _init_lcd                                             1     1      0     250
;!                                              3 COMRAM     1     1      0
;!                       _lcd_send_cmd
;! ---------------------------------------------------------------------------------
;! (1) _lcd_write                                           10     4      6     840
;!                                              3 COMRAM    10     4      6
;!                       _enable_pulse
;!                       _lcd_send_cmd
;! ---------------------------------------------------------------------------------
;! (3) _lcd_send_cmd                                         2     0      2     250
;!                                              1 COMRAM     2     0      2
;!                       _enable_pulse
;! ---------------------------------------------------------------------------------
;! (4) _enable_pulse                                         1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             3     0      3    2864
;!                                              8 COMRAM     3     0      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___fttol                                             15    11      4     328
;!                                             26 COMRAM    15    11      4
;!                            ___ftdiv (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftdiv                                             15     9      6    3326
;!                                             11 COMRAM    15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5    2766
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _IntToStr                                             7     4      3     936
;!                                              7 COMRAM     7     4      3
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     311
;!                                              0 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     314
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _isr_routine                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _IntToStr
;!     ___lwdiv
;!     ___lwmod
;!   ___ftdiv
;!     ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___fttol
;!     ___ftdiv (ARG)
;!     ___lwtoft (ARG)
;!   ___lwtoft
;!   _lcd_write
;!     _enable_pulse
;!     _lcd_send_cmd
;!       _enable_pulse
;!   _setup
;!     _init_lcd
;!       _lcd_send_cmd
;!
;! _isr_routine (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      29        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     2B      3D       1       64.9%
;!BITBIGSFRhhh        30      0       0      20        0.0%
;!BITBIGSFRlll        2C      0       0      27        0.0%
;!BITBIGSFRhll        12      0       0      24        0.0%
;!BITBIGSFRhlh         B      0       0      23        0.0%
;!BITBIGSFRhhlh        A      0       0      21        0.0%
;!BITBIGSFRllh         6      0       0      26        0.0%
;!BITBIGSFRlh          6      0       0      25        0.0%
;!BITBIGSFRhhll        2      0       0      22        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      3D      28        0.0%
;!DATA                 0      0      3D       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 43 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   51[None  ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_IntToStr
;;		___ftdiv
;;		___fttol
;;		___lwtoft
;;		_lcd_write
;;		_setup
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	43
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	43
	
_main:
;incstack = 0
	callstack 26
	line	45
	
l1369:
	call	_setup	;wreg free
	line	50
	
l53:
	btfss	((c:3998))^0f00h,c,2	;volatile
	goto	u671
	goto	u670
u671:
	goto	l53
u670:
	
l55:
	line	52
	movff	(c:4030),(c:_data)	;volatile
	movff	(c:4030+1),(c:_data+1)	;volatile
	line	53
	bcf	((c:3998))^0f00h,c,2	;volatile
	line	55
	
l56:
	btfss	((c:3998))^0f00h,c,2	;volatile
	goto	u681
	goto	u680
u681:
	goto	l56
u680:
	
l58:
	line	57
	movff	(c:4030),(c:_data2)	;volatile
	movff	(c:4030+1),(c:_data2+1)	;volatile
	line	58
	
l1371:
	movf	((c:_data))^00h,c,w
	subwf	((c:_data2))^00h,c,w
	movwf	((c:_fdata))^00h,c
	movf	((c:_data+1))^00h,c,w
	subwfb	((c:_data2+1))^00h,c,w
	movwf	1+((c:_fdata))^00h,c
	line	60
	
l1373:
	movff	(c:_fdata),(c:___lwtoft@c)
	movff	(c:_fdata+1),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:___ftdiv@f2)
	movff	1+?___lwtoft,(c:___ftdiv@f2+1)
	movff	2+?___lwtoft,(c:___ftdiv@f2+2)
	movlw	low(float24(5000000.0000000000))
	movwf	((c:___ftdiv@f1))^00h,c
	movlw	high(float24(5000000.0000000000))
	movwf	((c:___ftdiv@f1+1))^00h,c
	movlw	low highword(float24(5000000.0000000000))
	movwf	((c:___ftdiv@f1+2))^00h,c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___fttol@f1)
	movff	1+?___ftdiv,(c:___fttol@f1+1)
	movff	2+?___ftdiv,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:_frequency)
	movff	1+?___fttol,(c:_frequency+1)
	line	61
	
l1375:
	movff	(c:_frequency),(c:_rounded_frequency)
	movff	(c:_frequency+1),(c:_rounded_frequency+1)
	line	62
	
l1377:
	movff	(c:_rounded_frequency),(c:IntToStr@FromInt)
	movff	(c:_rounded_frequency+1),(c:IntToStr@FromInt+1)
		movlw	low(_data_txt)
	movwf	((c:IntToStr@ToStr))^00h,c

	call	_IntToStr	;wreg free
	line	64
	
l1379:
	movlw	high(01h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(01h)
	movwf	((c:lcd_write@row))^00h,c
	movlw	high(01h)
	movwf	((c:lcd_write@line+1))^00h,c
	movlw	low(01h)
	movwf	((c:lcd_write@line))^00h,c
		movlw	low(_data_txt)
	movwf	((c:lcd_write@txt))^00h,c
	clrf	((c:lcd_write@txt+1))^00h,c

	call	_lcd_write	;wreg free
	line	65
	
l1381:
	movlw	high(08h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(08h)
	movwf	((c:lcd_write@row))^00h,c
	movlw	high(01h)
	movwf	((c:lcd_write@line+1))^00h,c
	movlw	low(01h)
	movwf	((c:lcd_write@line))^00h,c
		movlw	low(STR_1)
	movwf	((c:lcd_write@txt))^00h,c
	movf	((c:lcd_write@txt))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:lcd_write@txt+1))^00h,c

	call	_lcd_write	;wreg free
	line	67
	
l1383:
	asmopt push
asmopt off
movlw  3
movwf	(??_main+0+0+1)^00h,c
movlw	138
movwf	(??_main+0+0)^00h,c
	movlw	86
u697:
decfsz	wreg,f
	bra	u697
	decfsz	(??_main+0+0)^00h,c,f
	bra	u697
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u697
asmopt pop

	line	68
	
l1385:
	movlw	high(0)
	movwf	((c:4046+1))^0f00h,c	;volatile
	movlw	low(0)
	movwf	((c:4046))^0f00h,c	;volatile
	line	69
	
l1387:
	movlw	high(0)
	movwf	((c:4030+1))^0f00h,c	;volatile
	movlw	low(0)
	movwf	((c:4030))^0f00h,c	;volatile
	line	70
	
l1389:
	bcf	((c:3998))^0f00h,c,2	;volatile
	line	75
	goto	l53
	global	start
	goto	start
	callstack 0
	line	78
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_setup

;; *************** function _setup *****************
;; Defined at:
;;		line 80 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_init_lcd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	80
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	80
	
_setup:
;incstack = 0
	callstack 26
	line	81
	
l1211:
	movlw	low(0Fh)
	movwf	((c:4034))^0f00h,c	;volatile
	line	82
	
l1213:
	bsf	((c:3988))^0f00h,c,2	;volatile
	line	83
	
l1215:
	call	_init_lcd	;wreg free
	line	86
	
l1217:
	bsf	((c:4045))^0f00h,c,7	;volatile
	line	87
	
l1219:
	bcf	((c:4045))^0f00h,c,4	;volatile
	line	88
	
l1221:
	bcf	((c:4045))^0f00h,c,5	;volatile
	line	89
	
l1223:
	bcf	((c:4045))^0f00h,c,3	;volatile
	line	90
	
l1225:
	bcf	((c:4045))^0f00h,c,1	;volatile
	line	91
	
l1227:
	bsf	((c:4045))^0f00h,c,0	;volatile
	line	92
	
l1229:
	movlw	high(0)
	movwf	((c:4046+1))^0f00h,c	;volatile
	movlw	low(0)
	movwf	((c:4046))^0f00h,c	;volatile
	line	93
	
l1231:
	movlw	high(0)
	movwf	((c:4030+1))^0f00h,c	;volatile
	movlw	low(0)
	movwf	((c:4030))^0f00h,c	;volatile
	line	97
	
l1233:
	movlw	(05h)&0ffh
	iorwf	((c:4029))^0f00h,c	;volatile
	line	98
	
l1235:
	bsf	((c:3997))^0f00h,c,2	;volatile
	line	99
	
l1237:
	bcf	((c:3998))^0f00h,c,2	;volatile
	line	100
	
l1239:
	bcf	((c:4017))^0f00h,c,6	;volatile
	line	101
	
l1241:
	bcf	((c:4017))^0f00h,c,3	;volatile
	line	104
	
l63:
	return	;funcret
	callstack 0
GLOBAL	__end_of_setup
	__end_of_setup:
	signat	_setup,89
	global	_init_lcd

;; *************** function _init_lcd *****************
;; Defined at:
;;		line 33 in file "Libs/LCD/lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_lcd_send_cmd
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"Libs/LCD/lcd.c"
	line	33
global __ptext2
__ptext2:
psect	text2
	file	"Libs/LCD/lcd.c"
	line	33
	
_init_lcd:
;incstack = 0
	callstack 26
	line	34
	
l1125:
	movlw	low(0)
	movwf	((c:3989))^0f00h,c	;volatile
	line	35
	
l1127:
	movlw	(0F8h)&0ffh
	andwf	((c:3990))^0f00h,c	;volatile
	line	37
	
l1129:
	movlw	low(0)
	movwf	((c:3980))^0f00h,c	;volatile
	line	38
	movlw	(0F8h)&0ffh
	andwf	((c:3981))^0f00h,c	;volatile
	line	40
	
l1131:
	asmopt push
asmopt off
movlw	65
movwf	(??_init_lcd+0+0)^00h,c
	movlw	238
u707:
decfsz	wreg,f
	bra	u707
	decfsz	(??_init_lcd+0+0)^00h,c,f
	bra	u707
	nop2
asmopt pop

	line	42
	
l1133:
	movlw	high(038h)
	movwf	((c:lcd_send_cmd@cmd+1))^00h,c
	movlw	low(038h)
	movwf	((c:lcd_send_cmd@cmd))^00h,c
	call	_lcd_send_cmd	;wreg free
	line	43
	
l1135:
	movlw	high(0Ch)
	movwf	((c:lcd_send_cmd@cmd+1))^00h,c
	movlw	low(0Ch)
	movwf	((c:lcd_send_cmd@cmd))^00h,c
	call	_lcd_send_cmd	;wreg free
	line	47
	
l88:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_lcd
	__end_of_init_lcd:
	signat	_init_lcd,89
	global	_lcd_write

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 21 in file "Libs/LCD/lcd.c"
;; Parameters:    Size  Location     Type
;;  row             2    3[COMRAM] int 
;;  line            2    5[COMRAM] int 
;;  txt             2    7[COMRAM] PTR const unsigned char 
;;		 -> STR_1(3), data_txt(5), 
;; Auto vars:     Size  Location     Type
;;  index           2   11[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_enable_pulse
;;		_lcd_send_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	21
global __ptext3
__ptext3:
psect	text3
	file	"Libs/LCD/lcd.c"
	line	21
	
_lcd_write:
;incstack = 0
	callstack 27
	line	22
	
l1259:
	movff	(c:lcd_write@line),??_lcd_write+0+0
	movff	(c:lcd_write@line+1),??_lcd_write+0+0+1
	movlw	06h
u505:
	bcf	status,0
	rlcf	(??_lcd_write+0+0)^00h,c
	rlcf	(??_lcd_write+0+1)^00h,c
	decfsz	wreg
	goto	u505
	movf	((c:lcd_write@row))^00h,c,w
	addwf	(??_lcd_write+0+0)^00h,c
	movf	((c:lcd_write@row+1))^00h,c,w
	addwfc	(??_lcd_write+0+1)^00h,c
	movlw	low(03Fh)
	addwf	(??_lcd_write+0+0)^00h,c,w
	movwf	((c:lcd_send_cmd@cmd))^00h,c
	movlw	high(03Fh)
	addwfc	(??_lcd_write+0+1)^00h,c,w
	movwf	1+((c:lcd_send_cmd@cmd))^00h,c
	call	_lcd_send_cmd	;wreg free
	line	24
	
l1261:
	bsf	(0+(0/8)+(c:3981))^0f00h,c,(0)&7	;volatile
	line	25
	
l1263:
	movlw	high(0)
	movwf	((c:lcd_write@index+1))^00h,c
	movlw	low(0)
	movwf	((c:lcd_write@index))^00h,c
	goto	l1271
	line	26
	
l1265:
	movf	((c:lcd_write@index))^00h,c,w
	addwf	((c:lcd_write@txt))^00h,c,w
	movwf	(??_lcd_write+0+0)^00h,c
	movf	((c:lcd_write@index+1))^00h,c,w
	addwfc	((c:lcd_write@txt+1))^00h,c,w
	movwf	(??_lcd_write+0+0+1)^00h,c
	movff	??_lcd_write+0+0,tblptrl
	movff	??_lcd_write+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u517
	tblrd	*
	
	movf	tablat,w
	bra	u510
u517:
	movff	tblptrl,fsr2l
	movff	tblptrh,fsr2h
	movf	indf2,w
u510:
	movwf	((c:3980))^0f00h,c	;volatile
	line	27
	
l1267:
	call	_enable_pulse	;wreg free
	line	25
	
l1269:
	infsnz	((c:lcd_write@index))^00h,c
	incf	((c:lcd_write@index+1))^00h,c
	
l1271:
	movf	((c:lcd_write@index))^00h,c,w
	addwf	((c:lcd_write@txt))^00h,c,w
	movwf	(??_lcd_write+0+0)^00h,c
	movf	((c:lcd_write@index+1))^00h,c,w
	addwfc	((c:lcd_write@txt+1))^00h,c,w
	movwf	(??_lcd_write+0+0+1)^00h,c
	movff	??_lcd_write+0+0,tblptrl
	movff	??_lcd_write+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u527
	tblrd	*
	
	movf	tablat,w
	bra	u520
u527:
	movff	tblptrl,fsr2l
	movff	tblptrh,fsr2h
	movf	indf2,w
u520:
	iorlw	0
	btfss	status,2
	goto	u531
	goto	u530
u531:
	goto	l1265
u530:
	line	31
	
l85:
	return	;funcret
	callstack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
	signat	_lcd_write,12409
	global	_lcd_send_cmd

;; *************** function _lcd_send_cmd *****************
;; Defined at:
;;		line 15 in file "Libs/LCD/lcd.c"
;; Parameters:    Size  Location     Type
;;  cmd             2    1[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_enable_pulse
;; This function is called by:
;;		_lcd_write
;;		_init_lcd
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	line	15
global __ptext4
__ptext4:
psect	text4
	file	"Libs/LCD/lcd.c"
	line	15
	
_lcd_send_cmd:
;incstack = 0
	callstack 26
	line	16
	
l1119:
	bcf	(0+(0/8)+(c:3981))^0f00h,c,(0)&7	;volatile
	line	17
	
l1121:
	movff	(c:lcd_send_cmd@cmd),(c:3980)	;volatile
	line	18
	
l1123:
	call	_enable_pulse	;wreg free
	line	19
	
l79:
	return	;funcret
	callstack 0
GLOBAL	__end_of_lcd_send_cmd
	__end_of_lcd_send_cmd:
	signat	_lcd_send_cmd,4217
	global	_enable_pulse

;; *************** function _enable_pulse *****************
;; Defined at:
;;		line 8 in file "Libs/LCD/lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_send_cmd
;;		_lcd_write
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	line	8
global __ptext5
__ptext5:
psect	text5
	file	"Libs/LCD/lcd.c"
	line	8
	
_enable_pulse:
;incstack = 0
	callstack 26
	line	9
	
l841:
	bcf	(0+(2/8)+(c:3981))^0f00h,c,(2)&7	;volatile
	line	10
	
l843:
	asmopt push
asmopt off
movlw	33
movwf	(??_enable_pulse+0+0)^00h,c
	movlw	118
u717:
decfsz	wreg,f
	bra	u717
	decfsz	(??_enable_pulse+0+0)^00h,c,f
	bra	u717
	nop2
asmopt pop

	line	11
	
l845:
	bsf	(0+(2/8)+(c:3981))^0f00h,c,(2)&7	;volatile
	line	12
	asmopt push
asmopt off
movlw	33
movwf	(??_enable_pulse+0+0)^00h,c
	movlw	118
u727:
decfsz	wreg,f
	bra	u727
	decfsz	(??_enable_pulse+0+0)^00h,c,f
	bra	u727
	nop2
asmopt pop

	line	13
	
l76:
	return	;funcret
	callstack 0
GLOBAL	__end_of_enable_pulse
	__end_of_enable_pulse:
	signat	_enable_pulse,89
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/lwtoft.c"
	line	28
global __ptext6
__ptext6:
psect	text6
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/lwtoft.c"
	line	28
	
___lwtoft:
;incstack = 0
	callstack 28
	line	30
	
l1365:
	movff	(c:___lwtoft@c),(c:___ftpack@arg)
	movff	(c:___lwtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2))^00h,c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp))^00h,c
	movlw	low(0)
	movwf	((c:___ftpack@sign))^00h,c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lwtoft)
	movff	1+?___ftpack,(c:?___lwtoft+1)
	movff	2+?___ftpack,(c:?___lwtoft+2)
	line	31
	
l597:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   36[COMRAM] unsigned long 
;;  exp1            1   40[COMRAM] unsigned char 
;;  sign1           1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/fttol.c"
	line	44
global __ptext7
__ptext7:
psect	text7
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/fttol.c"
	line	44
	
___fttol:
;incstack = 0
	callstack 29
	line	49
	
l1319:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)^00h,c
	clrf	(??___fttol+0+0+2)^00h,c
	rlcf	((c:___fttol@f1+1))^00h,c,w
	rlcf	(??___fttol+0+0)^00h,c
	bnc	u591
	bsf	(??___fttol+0+0+1)^00h,c,0
u591:
	movf	(??___fttol+0+0)^00h,c,w
	movwf	((c:___fttol@exp1))^00h,c
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u601
	goto	u600
u601:
	goto	l1325
u600:
	line	50
	
l1321:
	movlw	low(0)
	movwf	((c:?___fttol))^00h,c
	movlw	high(0)
	movwf	((c:?___fttol+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fttol+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fttol+3))^00h,c
	goto	l470
	line	51
	
l1325:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)^00h,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0))^00h,c,w
	movwf	(??___fttol+4+0)^00h,c
	goto	u610
u615:
	bcf	status,0
	rrcf	(??___fttol+1+2)^00h,c
	rrcf	(??___fttol+1+1)^00h,c
	rrcf	(??___fttol+1+0)^00h,c
u610:
	decfsz	(??___fttol+4+0)^00h,c
	goto	u615
	movf	(??___fttol+1+0)^00h,c,w
	movwf	((c:___fttol@sign1))^00h,c
	line	52
	
l1327:
	bsf	(0+(15/8)+(c:___fttol@f1))^00h,c,(15)&7
	line	53
	
l1329:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2))^00h,c

	line	54
	
l1331:
	movf	((c:___fttol@f1))^00h,c,w
	movwf	((c:___fttol@lval))^00h,c
	movf	((c:___fttol@f1+1))^00h,c,w
	movwf	1+((c:___fttol@lval))^00h,c
	
	movf	((c:___fttol@f1+2))^00h,c,w
	movwf	2+((c:___fttol@lval))^00h,c
	
	clrf	3+((c:___fttol@lval))^00h,c
	
	line	55
	
l1333:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1))^00h,c
	line	56
	
l1335:
	btfsc	((c:___fttol@exp1))^00h,c,7
	goto	u620
	goto	u621

u621:
	goto	l1347
u620:
	line	57
	
l1337:
		movf	((c:___fttol@exp1))^00h,c,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u631
	goto	u630

u631:
	goto	l1343
u630:
	goto	l1321
	line	60
	
l1343:
	bcf	status,0
	rrcf	((c:___fttol@lval+3))^00h,c
	rrcf	((c:___fttol@lval+2))^00h,c
	rrcf	((c:___fttol@lval+1))^00h,c
	rrcf	((c:___fttol@lval))^00h,c
	line	61
	
l1345:
	incfsz	((c:___fttol@exp1))^00h,c
	
	goto	l1343
	goto	l1357
	line	63
	
l1347:
		movlw	018h-1
	cpfsgt	((c:___fttol@exp1))^00h,c
	goto	u641
	goto	u640

u641:
	goto	l1355
u640:
	goto	l1321
	line	66
	
l1353:
	bcf	status,0
	rlcf	((c:___fttol@lval))^00h,c
	rlcf	((c:___fttol@lval+1))^00h,c
	rlcf	((c:___fttol@lval+2))^00h,c
	rlcf	((c:___fttol@lval+3))^00h,c
	line	67
	decf	((c:___fttol@exp1))^00h,c
	line	65
	
l1355:
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l1353
u650:
	line	70
	
l1357:
	movf	((c:___fttol@sign1))^00h,c,w
	btfsc	status,2
	goto	u661
	goto	u660
u661:
	goto	l1361
u660:
	line	71
	
l1359:
	comf	((c:___fttol@lval+3))^00h,c
	comf	((c:___fttol@lval+2))^00h,c
	comf	((c:___fttol@lval+1))^00h,c
	negf	((c:___fttol@lval))^00h,c
	movlw	0
	addwfc	((c:___fttol@lval+1))^00h,c
	addwfc	((c:___fttol@lval+2))^00h,c
	addwfc	((c:___fttol@lval+3))^00h,c
	line	72
	
l1361:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	line	73
	
l470:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   11[COMRAM] float 
;;  f2              3   14[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   21[COMRAM] float 
;;  sign            1   25[COMRAM] unsigned char 
;;  exp             1   24[COMRAM] unsigned char 
;;  cntr            1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftdiv.c"
	line	54
global __ptext8
__ptext8:
psect	text8
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftdiv.c"
	line	54
	
___ftdiv:
;incstack = 0
	callstack 28
	line	63
	
l1273:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u541
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u541:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@exp))^00h,c
	movf	((c:___ftdiv@exp))^00h,c,w
	btfss	status,2
	goto	u551
	goto	u550
u551:
	goto	l1279
u550:
	line	64
	
l1275:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l434
	line	65
	
l1279:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f2+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u561
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u561:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@sign))^00h,c
	movf	((c:___ftdiv@sign))^00h,c,w
	btfss	status,2
	goto	u571
	goto	u570
u571:
	goto	l1285
u570:
	line	66
	
l1281:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l434
	line	67
	
l1285:
	movlw	low(0)
	movwf	((c:___ftdiv@f3))^00h,c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2))^00h,c

	line	68
	
l1287:
	movf	((c:___ftdiv@sign))^00h,c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp))^00h,c
	line	69
	
l1289:
	movff	0+((c:___ftdiv@f1)+02h),(c:___ftdiv@sign)
	line	70
	
l1291:
	movf	(0+((c:___ftdiv@f2)+02h))^00h,c,w
	xorwf	((c:___ftdiv@sign))^00h,c
	line	71
	
l1293:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign))^00h,c
	line	72
	
l1295:
	bsf	(0+(15/8)+(c:___ftdiv@f1))^00h,c,(15)&7
	line	73
	
l1297:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2))^00h,c

	line	74
	
l1299:
	bsf	(0+(15/8)+(c:___ftdiv@f2))^00h,c,(15)&7
	line	75
	
l1301:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2))^00h,c

	line	76
	
l1303:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr))^00h,c
	line	78
	
l1305:
	bcf	status,0
	rlcf	((c:___ftdiv@f3))^00h,c
	rlcf	((c:___ftdiv@f3+1))^00h,c
	rlcf	((c:___ftdiv@f3+2))^00h,c
	line	79
	
l1307:
		movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c,w
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c,w
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c,w
	btfss	status,0
	goto	u581
	goto	u580

u581:
	goto	l437
u580:
	line	80
	
l1309:
	movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c

	line	81
	
l1311:
	bsf	(0+(0/8)+(c:___ftdiv@f3))^00h,c,(0)&7
	line	82
	
l437:
	line	83
	bcf	status,0
	rlcf	((c:___ftdiv@f1))^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c
	rlcf	((c:___ftdiv@f1+2))^00h,c
	line	84
	
l1313:
	decfsz	((c:___ftdiv@cntr))^00h,c
	
	goto	l1305
	line	85
	
l1315:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	line	86
	
l434:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         5       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/float.c"
	line	62
global __ptext9
__ptext9:
psect	text9
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/float.c"
	line	62
	
___ftpack:
;incstack = 0
	callstack 28
	line	64
	
l1137:
	movf	((c:___ftpack@exp))^00h,c,w
	btfsc	status,2
	goto	u351
	goto	u350
u351:
	goto	l1141
u350:
	
l1139:
	movf	((c:___ftpack@arg))^00h,c,w
iorwf	((c:___ftpack@arg+1))^00h,c,w
iorwf	((c:___ftpack@arg+2))^00h,c,w
	btfss	status,2
	goto	u361
	goto	u360

u361:
	goto	l1147
u360:
	line	65
	
l1141:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2))^00h,c

	goto	l368
	line	67
	
l1145:
	incf	((c:___ftpack@exp))^00h,c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	66
	
l1147:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u371
	goto	u370

u371:
	goto	l1145
u370:
	goto	l1153
	line	71
	
l1149:
	incf	((c:___ftpack@exp))^00h,c
	line	72
	
l1151:
	movlw	low(01h)
	addwf	((c:___ftpack@arg))^00h,c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1))^00h,c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2))^00h,c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	70
	
l1153:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u381
	goto	u380

u381:
	goto	l1149
u380:
	goto	l1157
	line	76
	
l1155:
	decf	((c:___ftpack@exp))^00h,c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg))^00h,c
	rlcf	((c:___ftpack@arg+1))^00h,c
	rlcf	((c:___ftpack@arg+2))^00h,c
	line	75
	
l1157:
	
	btfsc	((c:___ftpack@arg+1))^00h,c,(15)&7
	goto	u391
	goto	u390
u391:
	goto	l379
u390:
	
l1159:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp))^00h,c
	goto	u401
	goto	u400

u401:
	goto	l1155
u400:
	
l379:
	line	79
	
	btfsc	((c:___ftpack@exp))^00h,c,(0)&7
	goto	u411
	goto	u410
u411:
	goto	l1163
u410:
	line	80
	
l1161:
	bcf	(0+(15/8)+(c:___ftpack@arg))^00h,c,(15)&7
	line	81
	
l1163:
	bcf status,0
	rrcf	((c:___ftpack@exp))^00h,c

	line	82
	movf	((c:___ftpack@exp))^00h,c,w
	iorwf	((c:___ftpack@arg+2))^00h,c

	line	83
	
l1165:
	movf	((c:___ftpack@sign))^00h,c,w
	btfsc	status,2
	goto	u421
	goto	u420
u421:
	goto	l1169
u420:
	line	84
	
l1167:
	bsf	(0+(23/8)+(c:___ftpack@arg))^00h,c,(23)&7
	line	85
	
l1169:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	line	86
	
l368:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_IntToStr

;; *************** function _IntToStr *****************
;; Defined at:
;;		line 1 in file "Libs/Conversions/conversions.c"
;; Parameters:    Size  Location     Type
;;  FromInt         2    7[COMRAM] int 
;;  ToStr           1    9[COMRAM] PTR unsigned char 
;;		 -> data_txt(5), 
;; Auto vars:     Size  Location     Type
;;  index           2   12[COMRAM] int 
;;  num             2   10[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"Libs/Conversions/conversions.c"
	line	1
global __ptext10
__ptext10:
psect	text10
	file	"Libs/Conversions/conversions.c"
	line	1
	
_IntToStr:
;incstack = 0
	callstack 28
	line	2
	
l1243:
	line	3
	
l1245:
	movff	(c:IntToStr@FromInt),(c:IntToStr@num)
	movff	(c:IntToStr@FromInt+1),(c:IntToStr@num+1)
	line	5
	movlw	high(05h)
	movwf	((c:IntToStr@index+1))^00h,c
	movlw	low(05h)
	movwf	((c:IntToStr@index))^00h,c
	line	6
	
l1251:
	movf	((c:IntToStr@ToStr))^00h,c,w
	addwf	((c:IntToStr@index))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:IntToStr@num),(c:___lwmod@dividend)
	movff	(c:IntToStr@num+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	movwf	indf2,c

	line	7
	
l1253:
	movff	(c:IntToStr@num),(c:___lwdiv@dividend)
	movff	(c:IntToStr@num+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:IntToStr@num)
	movff	1+?___lwdiv,(c:IntToStr@num+1)
	line	5
	
l1255:
	decf	((c:IntToStr@index))^00h,c
	btfss	status,0
	decf	((c:IntToStr@index+1))^00h,c
	
l1257:
	btfsc	((c:IntToStr@index+1))^00h,c,7
	goto	u490
	goto	u491

u491:
	goto	l1251
u490:
	line	10
	
l93:
	return	;funcret
	callstack 0
GLOBAL	__end_of_IntToStr
	__end_of_IntToStr:
	signat	_IntToStr,8313
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IntToStr
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/lwmod.c"
	line	7
global __ptext11
__ptext11:
psect	text11
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/lwmod.c"
	line	7
	
___lwmod:
;incstack = 0
	callstack 28
	line	12
	
l1195:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u461
	goto	u460

u461:
	goto	l585
u460:
	line	13
	
l1197:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l1201
	line	15
	
l1199:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l1201:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u471
	goto	u470
u471:
	goto	l1199
u470:
	line	19
	
l1203:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u481
	goto	u480

u481:
	goto	l1207
u480:
	line	20
	
l1205:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l1207:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l1209:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l1203
	line	23
	
l585:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l592:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IntToStr
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/lwdiv.c"
	line	7
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/lwdiv.c"
	line	7
	
___lwdiv:
;incstack = 0
	callstack 28
	line	13
	
l1173:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l1175:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u431
	goto	u430

u431:
	goto	l575
u430:
	line	15
	
l1177:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l1181
	line	17
	
l1179:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l1181:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u441
	goto	u440
u441:
	goto	l1179
u440:
	line	21
	
l1183:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l1185:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u451
	goto	u450

u451:
	goto	l1191
u450:
	line	23
	
l1187:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c

	line	24
	
l1189:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l1191:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l1193:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l1183
	line	28
	
l575:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l582:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_isr_routine

;; *************** function _isr_routine *****************
;; Defined at:
;;		line 30 in file "main.c"
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
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
	file	"main.as"
	line	#
global __pintcode
__pintcode:
psect	intcode
	file	"main.c"
	line	30
	
_isr_routine:
;incstack = 0
	callstack 26
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	line	32
	
i2l33:
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	callstack 0
GLOBAL	__end_of_isr_routine
	__end_of_isr_routine:
	signat	_isr_routine,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
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
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp8
	wtemp8 set btemp+1
	global	ttemp5
	ttemp5 set btemp+1
	global	ttemp6
	ttemp6 set btemp+4
	global	ttemp7
	ttemp7 set btemp+8
	end
