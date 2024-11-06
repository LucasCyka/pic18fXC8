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
	FNCALL	_main,_init_interrupt
	FNCALL	_main,_init_lcd
	FNCALL	_main,_lcd_write
	FNCALL	_lcd_write,_enable_pulse
	FNCALL	_lcd_write,_lcd_send_cmd
	FNCALL	_init_lcd,_lcd_send_cmd
	FNCALL	_lcd_send_cmd,_enable_pulse
	FNCALL	_IntToStr,___awdiv
	FNCALL	_IntToStr,___awmod
	FNROOT	_main
	FNCALL	intlevel2,_isr_routine
	global	intlevel2
	FNROOT	intlevel2
	global	_counter
	global	_counterTxt
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_INTCON2bits
_INTCON2bits	set	0xFF1
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_TRISD
_TRISD	set	0xF95
	global	_LATD
_LATD	set	0xF8C
	global	_LATE
_LATE	set	0xF8D
	global	_TRISE
_TRISE	set	0xF96
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_2:
	db	69	;'E'
	db	109	;'m'
	db	101	;'e'
	db	114	;'r'
	db	103	;'g'
	db	101	;'e'
	db	110	;'n'
	db	99	;'c'
	db	105	;'i'
	db	97	;'a'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_3:
	db	77	;'M'
	db	97	;'a'
	db	110	;'n'
	db	117	;'u'
	db	116	;'t'
	db	101	;'e'
	db	110	;'n'
	db	99	;'c'
	db	97	;'a'
	db	111	;'o'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_1:
	db	80	;'P'
	db	114	;'r'
	db	111	;'o'
	db	110	;'n'
	db	116	;'t'
	db	111	;'o'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
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
	global	_counter
_counter:
       ds      2
	global	_counterTxt
_counterTxt:
       ds      4
	file	"main.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (6 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+5)&0xffh,c
clrf	(__pbssCOMRAM+4)&0xffh,c
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
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
?_init_interrupt:	; 1 bytes @ 0x0
??_init_interrupt:	; 1 bytes @ 0x0
?_init_lcd:	; 1 bytes @ 0x0
?_isr_routine:	; 1 bytes @ 0x0
??_isr_routine:	; 1 bytes @ 0x0
?_enable_pulse:	; 1 bytes @ 0x0
??_enable_pulse:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x0
	ds   1
?_lcd_send_cmd:	; 1 bytes @ 0x1
	global	lcd_send_cmd@cmd
lcd_send_cmd@cmd:	; 2 bytes @ 0x1
	ds   1
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	ds   1
??_init_lcd:	; 1 bytes @ 0x3
?_lcd_write:	; 1 bytes @ 0x3
??_lcd_send_cmd:	; 1 bytes @ 0x3
	global	lcd_write@row
lcd_write@row:	; 2 bytes @ 0x3
	ds   1
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	global	lcd_write@line
lcd_write@line:	; 2 bytes @ 0x5
	ds   1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds   1
	global	lcd_write@txt
lcd_write@txt:	; 2 bytes @ 0x7
	ds   1
?_IntToStr:	; 1 bytes @ 0x8
	global	IntToStr@FromInt
IntToStr@FromInt:	; 2 bytes @ 0x8
	ds   1
??_lcd_write:	; 1 bytes @ 0x9
	ds   1
	global	IntToStr@ToStr
IntToStr@ToStr:	; 1 bytes @ 0xA
	ds   1
??_IntToStr:	; 1 bytes @ 0xB
	global	lcd_write@index
lcd_write@index:	; 2 bytes @ 0xB
	global	IntToStr@num
IntToStr@num:	; 2 bytes @ 0xB
	ds   2
	global	IntToStr@index
IntToStr@index:	; 2 bytes @ 0xD
	ds   2
??_main:	; 1 bytes @ 0xF
	ds   2
;!
;!Data Sizes:
;!    Strings     93
;!    Constant    0
;!    Data        0
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     17      23
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
;!    IntToStr@ToStr	PTR unsigned char  size(1) Largest target is 4
;!		 -> counterTxt(COMRAM[4]), 
;!
;!    lcd_write@txt	PTR const unsigned char  size(2) Largest target is 32
;!		 -> counterTxt(COMRAM[4]), STR_1(CODE[29]), STR_2(CODE[32]), STR_3(CODE[32]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_IntToStr
;!    _lcd_write->_lcd_send_cmd
;!    _init_lcd->_lcd_send_cmd
;!    _lcd_send_cmd->_enable_pulse
;!    _IntToStr->___awdiv
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
;! (0) _main                                                 2     2      0    2757
;!                                             15 COMRAM     2     2      0
;!                           _IntToStr
;!                     _init_interrupt
;!                           _init_lcd
;!                          _lcd_write
;! ---------------------------------------------------------------------------------
;! (1) _lcd_write                                           10     4      6    1296
;!                                              3 COMRAM    10     4      6
;!                       _enable_pulse
;!                       _lcd_send_cmd
;! ---------------------------------------------------------------------------------
;! (1) _init_lcd                                             1     1      0     250
;!                                              3 COMRAM     1     1      0
;!                       _lcd_send_cmd
;! ---------------------------------------------------------------------------------
;! (2) _lcd_send_cmd                                         2     0      2     250
;!                                              1 COMRAM     2     0      2
;!                       _enable_pulse
;! ---------------------------------------------------------------------------------
;! (3) _enable_pulse                                         1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init_interrupt                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _IntToStr                                             7     4      3    1211
;!                                              8 COMRAM     7     4      3
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4     448
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              8     4      4     452
;!                                              0 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _isr_routine                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _IntToStr
;!     ___awdiv
;!     ___awmod
;!   _init_interrupt
;!   _init_lcd
;!     _lcd_send_cmd
;!       _enable_pulse
;!   _lcd_write
;!     _enable_pulse
;!     _lcd_send_cmd
;!
;! _isr_routine (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      28        0.0%
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
;!COMRAM              5E     11      17       1       24.5%
;!BITBIGSFRhl         2F      0       0      21        0.0%
;!BITBIGSFRlhh        2A      0       0      22        0.0%
;!BITBIGSFRlll        21      0       0      26        0.0%
;!BITBIGSFRhh          D      0       0      20        0.0%
;!BITBIGSFRllhl        A      0       0      25        0.0%
;!BITBIGSFRllhh        5      0       0      24        0.0%
;!BITBIGSFRlhl         1      0       0      23        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      17      27        0.0%
;!DATA                 0      0      17       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 32 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   28[None  ] int 
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_IntToStr
;;		_init_interrupt
;;		_init_lcd
;;		_lcd_write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	32
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	32
	
_main:
;incstack = 0
	callstack 27
	line	33
	
l1138:
	movlw	(0Fh)&0ffh
	iorwf	((c:4033))^0f00h,c	;volatile
	line	34
	
l1140:
	bsf	((c:3987))^0f00h,c,0	;volatile
	line	35
	
l1142:
	call	_init_interrupt	;wreg free
	line	38
	call	_init_lcd	;wreg free
	line	39
	
l1144:
	asmopt push
asmopt off
movlw	65
movwf	(??_main+0+0)^00h,c
	movlw	238
u407:
decfsz	wreg,f
	bra	u407
	decfsz	(??_main+0+0)^00h,c,f
	bra	u407
	nop2
asmopt pop

	line	41
	
l1146:
	movff	(c:_counter),(c:IntToStr@FromInt)
	movff	(c:_counter+1),(c:IntToStr@FromInt+1)
		movlw	low(_counterTxt)
	movwf	((c:IntToStr@ToStr))^00h,c

	call	_IntToStr	;wreg free
	line	42
	
l1148:
	movlw	high(01h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(01h)
	movwf	((c:lcd_write@row))^00h,c
	movlw	high(01h)
	movwf	((c:lcd_write@line+1))^00h,c
	movlw	low(01h)
	movwf	((c:lcd_write@line))^00h,c
		movlw	low(_counterTxt)
	movwf	((c:lcd_write@txt))^00h,c
	clrf	((c:lcd_write@txt+1))^00h,c

	call	_lcd_write	;wreg free
	line	44
	
l1150:
	btfsc	((c:4082))^0f00h,c,4	;volatile
	goto	u381
	goto	u380
u381:
	goto	l1158
u380:
	line	45
	
l1152:
	asmopt push
asmopt off
movlw	195
movwf	(??_main+0+0)^00h,c
	movlw	205
u417:
decfsz	wreg,f
	bra	u417
	decfsz	(??_main+0+0)^00h,c,f
	bra	u417
	nop
asmopt pop

	line	46
	
l1154:
	btfsc	((c:3969))^0f00h,c,0	;volatile
	goto	u391
	goto	u390
u391:
	goto	l1158
u390:
	line	47
	
l1156:
	bcf	((c:4082))^0f00h,c,1	;volatile
	line	48
	bsf	((c:4082))^0f00h,c,4	;volatile
	line	51
	
l1158:
	asmopt push
asmopt off
movlw	65
movwf	(??_main+0+0)^00h,c
	movlw	238
u427:
decfsz	wreg,f
	bra	u427
	decfsz	(??_main+0+0)^00h,c,f
	bra	u427
	nop2
asmopt pop

	line	52
	goto	l1170
	line	55
	
l1160:
	movlw	high(01h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(01h)
	movwf	((c:lcd_write@row))^00h,c
	movlw	high(02h)
	movwf	((c:lcd_write@line+1))^00h,c
	movlw	low(02h)
	movwf	((c:lcd_write@line))^00h,c
		movlw	low(STR_1)
	movwf	((c:lcd_write@txt))^00h,c
	movf	((c:lcd_write@txt))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:lcd_write@txt+1))^00h,c

	call	_lcd_write	;wreg free
	line	56
	goto	l1146
	line	58
	
l1162:
	movlw	high(01h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(01h)
	movwf	((c:lcd_write@row))^00h,c
	movlw	high(02h)
	movwf	((c:lcd_write@line+1))^00h,c
	movlw	low(02h)
	movwf	((c:lcd_write@line))^00h,c
		movlw	low(STR_2)
	movwf	((c:lcd_write@txt))^00h,c
	movf	((c:lcd_write@txt))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:lcd_write@txt+1))^00h,c

	call	_lcd_write	;wreg free
	line	59
	goto	l1146
	line	61
	
l1164:
	movlw	high(01h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(01h)
	movwf	((c:lcd_write@row))^00h,c
	movlw	high(02h)
	movwf	((c:lcd_write@line+1))^00h,c
	movlw	low(02h)
	movwf	((c:lcd_write@line))^00h,c
		movlw	low(STR_3)
	movwf	((c:lcd_write@txt))^00h,c
	movf	((c:lcd_write@txt))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:lcd_write@txt+1))^00h,c

	call	_lcd_write	;wreg free
	line	62
	goto	l1146
	line	64
	
l1166:
	movlw	high(0)
	movwf	((c:_counter+1))^00h,c
	movlw	low(0)
	movwf	((c:_counter))^00h,c
	line	65
	goto	l1146
	line	52
	
l1170:
	movff	(c:_counter),??_main+0+0
	movff	(c:_counter+1),??_main+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_main+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l1180
	goto	l1146
	
l1180:
; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	movf ??_main+0+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l1160
	xorlw	1^0	; case 1
	skipnz
	goto	l1162
	xorlw	2^1	; case 2
	skipnz
	goto	l1164
	xorlw	3^2	; case 3
	skipnz
	goto	l1166
	goto	l1146

	global	start
	goto	start
	callstack 0
	line	70
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_lcd_write

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 21 in file "lcd.c"
;; Parameters:    Size  Location     Type
;;  row             2    3[COMRAM] int 
;;  line            2    5[COMRAM] int 
;;  txt             2    7[COMRAM] PTR const unsigned char 
;;		 -> STR_3(32), STR_2(32), STR_1(29), counterTxt(4), 
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
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"lcd.c"
	line	21
global __ptext1
__ptext1:
psect	text1
	file	"lcd.c"
	line	21
	
_lcd_write:
;incstack = 0
	callstack 27
	line	22
	
l1124:
	movff	(c:lcd_write@line),??_lcd_write+0+0
	movff	(c:lcd_write@line+1),??_lcd_write+0+0+1
	movlw	06h
u345:
	bcf	status,0
	rlcf	(??_lcd_write+0+0)^00h,c
	rlcf	(??_lcd_write+0+1)^00h,c
	decfsz	wreg
	goto	u345
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
	
l1126:
	bsf	(0+(0/8)+(c:3981))^0f00h,c,(0)&7	;volatile
	line	25
	
l1128:
	movlw	high(0)
	movwf	((c:lcd_write@index+1))^00h,c
	movlw	low(0)
	movwf	((c:lcd_write@index))^00h,c
	goto	l1136
	line	26
	
l1130:
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
	bra	u357
	tblrd	*
	
	movf	tablat,w
	bra	u350
u357:
	movff	tblptrl,fsr2l
	movff	tblptrh,fsr2h
	movf	indf2,w
u350:
	movwf	((c:3980))^0f00h,c	;volatile
	line	27
	
l1132:
	call	_enable_pulse	;wreg free
	line	25
	
l1134:
	infsnz	((c:lcd_write@index))^00h,c
	incf	((c:lcd_write@index+1))^00h,c
	
l1136:
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
	bra	u367
	tblrd	*
	
	movf	tablat,w
	bra	u360
u367:
	movff	tblptrl,fsr2l
	movff	tblptrh,fsr2h
	movf	indf2,w
u360:
	iorlw	0
	btfss	status,2
	goto	u371
	goto	u370
u371:
	goto	l1130
u370:
	line	31
	
l70:
	return	;funcret
	callstack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
	signat	_lcd_write,12409
	global	_init_lcd

;; *************** function _init_lcd *****************
;; Defined at:
;;		line 33 in file "lcd.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	33
global __ptext2
__ptext2:
psect	text2
	file	"lcd.c"
	line	33
	
_init_lcd:
;incstack = 0
	callstack 27
	line	34
	
l1096:
	movlw	low(0)
	movwf	((c:3989))^0f00h,c	;volatile
	line	35
	
l1098:
	movlw	(0F8h)&0ffh
	andwf	((c:3990))^0f00h,c	;volatile
	line	37
	
l1100:
	movlw	low(0)
	movwf	((c:3980))^0f00h,c	;volatile
	line	38
	movlw	(0F8h)&0ffh
	andwf	((c:3981))^0f00h,c	;volatile
	line	40
	
l1102:
	asmopt push
asmopt off
movlw	65
movwf	(??_init_lcd+0+0)^00h,c
	movlw	238
u437:
decfsz	wreg,f
	bra	u437
	decfsz	(??_init_lcd+0+0)^00h,c,f
	bra	u437
	nop2
asmopt pop

	line	42
	
l1104:
	movlw	high(038h)
	movwf	((c:lcd_send_cmd@cmd+1))^00h,c
	movlw	low(038h)
	movwf	((c:lcd_send_cmd@cmd))^00h,c
	call	_lcd_send_cmd	;wreg free
	line	43
	
l1106:
	movlw	high(0Ch)
	movwf	((c:lcd_send_cmd@cmd+1))^00h,c
	movlw	low(0Ch)
	movwf	((c:lcd_send_cmd@cmd))^00h,c
	call	_lcd_send_cmd	;wreg free
	line	47
	
l73:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_lcd
	__end_of_init_lcd:
	signat	_init_lcd,89
	global	_lcd_send_cmd

;; *************** function _lcd_send_cmd *****************
;; Defined at:
;;		line 15 in file "lcd.c"
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
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	15
global __ptext3
__ptext3:
psect	text3
	file	"lcd.c"
	line	15
	
_lcd_send_cmd:
;incstack = 0
	callstack 27
	line	16
	
l1010:
	bcf	(0+(0/8)+(c:3981))^0f00h,c,(0)&7	;volatile
	line	17
	
l1012:
	movff	(c:lcd_send_cmd@cmd),(c:3980)	;volatile
	line	18
	
l1014:
	call	_enable_pulse	;wreg free
	line	19
	
l64:
	return	;funcret
	callstack 0
GLOBAL	__end_of_lcd_send_cmd
	__end_of_lcd_send_cmd:
	signat	_lcd_send_cmd,4217
	global	_enable_pulse

;; *************** function _enable_pulse *****************
;; Defined at:
;;		line 8 in file "lcd.c"
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
psect	text4,class=CODE,space=0,reloc=2,group=0
	line	8
global __ptext4
__ptext4:
psect	text4
	file	"lcd.c"
	line	8
	
_enable_pulse:
;incstack = 0
	callstack 27
	line	9
	
l826:
	bcf	(0+(2/8)+(c:3981))^0f00h,c,(2)&7	;volatile
	line	10
	
l828:
	asmopt push
asmopt off
movlw	33
movwf	(??_enable_pulse+0+0)^00h,c
	movlw	118
u447:
decfsz	wreg,f
	bra	u447
	decfsz	(??_enable_pulse+0+0)^00h,c,f
	bra	u447
	nop2
asmopt pop

	line	11
	
l830:
	bsf	(0+(2/8)+(c:3981))^0f00h,c,(2)&7	;volatile
	line	12
	asmopt push
asmopt off
movlw	33
movwf	(??_enable_pulse+0+0)^00h,c
	movlw	118
u457:
decfsz	wreg,f
	bra	u457
	decfsz	(??_enable_pulse+0+0)^00h,c,f
	bra	u457
	nop2
asmopt pop

	line	13
	
l61:
	return	;funcret
	callstack 0
GLOBAL	__end_of_enable_pulse
	__end_of_enable_pulse:
	signat	_enable_pulse,89
	global	_init_interrupt

;; *************** function _init_interrupt *****************
;; Defined at:
;;		line 81 in file "main.c"
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	81
global __ptext5
__ptext5:
psect	text5
	file	"main.c"
	line	81
	
_init_interrupt:
;incstack = 0
	callstack 29
	line	82
	
l918:
	bsf	((c:4082))^0f00h,c,7	;volatile
	line	83
	bsf	((c:4082))^0f00h,c,4	;volatile
	line	84
	bcf	((c:4082))^0f00h,c,1	;volatile
	line	85
	bsf	((c:4081))^0f00h,c,6	;volatile
	line	86
	
l48:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_interrupt
	__end_of_init_interrupt:
	signat	_init_interrupt,89
	global	_IntToStr

;; *************** function _IntToStr *****************
;; Defined at:
;;		line 1 in file "conversions.c"
;; Parameters:    Size  Location     Type
;;  FromInt         2    8[COMRAM] int 
;;  ToStr           1   10[COMRAM] PTR unsigned char 
;;		 -> counterTxt(4), 
;; Auto vars:     Size  Location     Type
;;  index           2   13[COMRAM] int 
;;  num             2   11[COMRAM] int 
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
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"conversions.c"
	line	1
global __ptext6
__ptext6:
psect	text6
	file	"conversions.c"
	line	1
	
_IntToStr:
;incstack = 0
	callstack 28
	line	2
	
l1108:
	line	3
	
l1110:
	movff	(c:IntToStr@FromInt),(c:IntToStr@num)
	movff	(c:IntToStr@FromInt+1),(c:IntToStr@num+1)
	line	5
	movlw	high(03h)
	movwf	((c:IntToStr@index+1))^00h,c
	movlw	low(03h)
	movwf	((c:IntToStr@index))^00h,c
	line	6
	
l1116:
	movf	((c:IntToStr@ToStr))^00h,c,w
	addwf	((c:IntToStr@index))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:IntToStr@num),(c:___awmod@dividend)
	movff	(c:IntToStr@num+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	indf2,c

	line	7
	
l1118:
	movff	(c:IntToStr@num),(c:___awdiv@dividend)
	movff	(c:IntToStr@num+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:IntToStr@num)
	movff	1+?___awdiv,(c:IntToStr@num+1)
	line	5
	
l1120:
	decf	((c:IntToStr@index))^00h,c
	btfss	status,0
	decf	((c:IntToStr@index+1))^00h,c
	
l1122:
	btfsc	((c:IntToStr@index+1))^00h,c,7
	goto	u330
	goto	u331

u331:
	goto	l1116
u330:
	line	10
	
l78:
	return	;funcret
	callstack 0
GLOBAL	__end_of_IntToStr
	__end_of_IntToStr:
	signat	_IntToStr,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IntToStr
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/awmod.c"
	line	7
global __ptext7
__ptext7:
psect	text7
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 28
	line	12
	
l1060:
	movlw	low(0)
	movwf	((c:___awmod@sign))^00h,c
	line	13
	
l1062:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u270
	goto	u271

u271:
	goto	l1068
u270:
	line	14
	
l1064:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l1066:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l1068:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u280
	goto	u281

u281:
	goto	l1072
u280:
	line	18
	
l1070:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l1072:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u291
	goto	u290

u291:
	goto	l1088
u290:
	line	20
	
l1074:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l1078
	line	22
	
l1076:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l1078:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u301
	goto	u300
u301:
	goto	l1076
u300:
	line	26
	
l1080:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u311
	goto	u310

u311:
	goto	l1084
u310:
	line	27
	
l1082:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l1084:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l1086:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l1080
	line	31
	
l1088:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u321
	goto	u320
u321:
	goto	l1092
u320:
	line	32
	
l1090:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l1092:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l325:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMRAM] int 
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IntToStr
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/awdiv.c"
	line	7
global __ptext8
__ptext8:
psect	text8
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/awdiv.c"
	line	7
	
___awdiv:
;incstack = 0
	callstack 28
	line	13
	
l1016:
	movlw	low(0)
	movwf	((c:___awdiv@sign))^00h,c
	line	14
	
l1018:
	btfsc	((c:___awdiv@divisor+1))^00h,c,7
	goto	u210
	goto	u211

u211:
	goto	l1024
u210:
	line	15
	
l1020:
	negf	((c:___awdiv@divisor))^00h,c
	comf	((c:___awdiv@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1))^00h,c
	line	16
	
l1022:
	movlw	low(01h)
	movwf	((c:___awdiv@sign))^00h,c
	line	18
	
l1024:
	btfsc	((c:___awdiv@dividend+1))^00h,c,7
	goto	u220
	goto	u221

u221:
	goto	l1030
u220:
	line	19
	
l1026:
	negf	((c:___awdiv@dividend))^00h,c
	comf	((c:___awdiv@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1))^00h,c
	line	20
	
l1028:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign))^00h,c
	line	22
	
l1030:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___awdiv@quotient))^00h,c
	line	23
	
l1032:
	movf	((c:___awdiv@divisor))^00h,c,w
iorwf	((c:___awdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u231
	goto	u230

u231:
	goto	l1052
u230:
	line	24
	
l1034:
	movlw	low(01h)
	movwf	((c:___awdiv@counter))^00h,c
	line	25
	goto	l1038
	line	26
	
l1036:
	bcf	status,0
	rlcf	((c:___awdiv@divisor))^00h,c
	rlcf	((c:___awdiv@divisor+1))^00h,c
	line	27
	incf	((c:___awdiv@counter))^00h,c
	line	25
	
l1038:
	
	btfss	((c:___awdiv@divisor+1))^00h,c,(15)&7
	goto	u241
	goto	u240
u241:
	goto	l1036
u240:
	line	30
	
l1040:
	bcf	status,0
	rlcf	((c:___awdiv@quotient))^00h,c
	rlcf	((c:___awdiv@quotient+1))^00h,c
	line	31
	
l1042:
		movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c,w
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u251
	goto	u250

u251:
	goto	l1048
u250:
	line	32
	
l1044:
	movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c

	line	33
	
l1046:
	bsf	(0+(0/8)+(c:___awdiv@quotient))^00h,c,(0)&7
	line	35
	
l1048:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1))^00h,c
	rrcf	((c:___awdiv@divisor))^00h,c
	line	36
	
l1050:
	decfsz	((c:___awdiv@counter))^00h,c
	
	goto	l1040
	line	38
	
l1052:
	movf	((c:___awdiv@sign))^00h,c,w
	btfsc	status,2
	goto	u261
	goto	u260
u261:
	goto	l1056
u260:
	line	39
	
l1054:
	negf	((c:___awdiv@quotient))^00h,c
	comf	((c:___awdiv@quotient+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1))^00h,c
	line	40
	
l1056:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	line	41
	
l312:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_isr_routine

;; *************** function _isr_routine *****************
;; Defined at:
;;		line 72 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0
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
	line	72
	
_isr_routine:
;incstack = 0
	callstack 27
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	line	73
	
i2l1000:
	btfss	((c:4082))^0f00h,c,1	;volatile
	goto	i2u20_41
	goto	i2u20_40
i2u20_41:
	goto	i2l45
i2u20_40:
	line	74
	
i2l1002:
	bcf	((c:4082))^0f00h,c,1	;volatile
	line	75
	bcf	((c:4082))^0f00h,c,4	;volatile
	line	76
	
i2l1004:
	infsnz	((c:_counter))^00h,c
	incf	((c:_counter+1))^00h,c
	line	79
	
i2l45:
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
