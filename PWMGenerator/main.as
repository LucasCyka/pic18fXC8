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
	FNCALL	_main,_ADC_read
	FNCALL	_main,_IntToStr
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___lltoft
	FNCALL	_main,_lcd_write
	FNCALL	_main,_setup
	FNCALL	_main,_update_pwm
	FNCALL	_update_pwm,___ftadd
	FNCALL	_update_pwm,___ftdiv
	FNCALL	_update_pwm,___ftmul
	FNCALL	_update_pwm,___fttol
	FNCALL	_update_pwm,___lltoft
	FNCALL	_update_pwm,___lmul
	FNCALL	___lltoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_setup,_ADC_init
	FNCALL	_setup,_init_lcd
	FNCALL	_init_lcd,_lcd_send_cmd
	FNCALL	_lcd_write,_enable_pulse
	FNCALL	_lcd_write,_lcd_send_cmd
	FNCALL	_lcd_send_cmd,_enable_pulse
	FNCALL	_IntToStr,___lldiv
	FNCALL	_IntToStr,___llmod
	FNROOT	_main
	global	_dutyCycleValue
	global	_channels
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	33

;initializer for _dutyCycleValue
	dw	(0138h)&0ffffh
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"Libs/ADC/adc.c"
	line	5

;initializer for _channels
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0)
	file	"main.c"
	line	34

;initializer for _frequencyValue
	dw	(09Bh)&0ffffh
	global	_dutyCycleADC
	global	_dutyCycleADCTxt
	global	_frequencyADCTxt
	global	_frequencyADC
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_T2CON
_T2CON	set	0xFCA
	global	_ADCON1bits
_ADCON1bits	set	0xFC1
	global	_T2CONbits
_T2CONbits	set	0xFCA
	global	_LATD
_LATD	set	0xF8C
	global	_LATE
_LATE	set	0xF8D
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISC
_TRISC	set	0xF94
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_TRISE
_TRISE	set	0xF96
	global	_TRISD
_TRISD	set	0xF95
	global	_CCP1CON
_CCP1CON	set	0xFBD
	global	_ADCON2bits
_ADCON2bits	set	0xFC0
	global	_CCPR1L
_CCPR1L	set	0xFBE
	global	_PR2
_PR2	set	0xFCB
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_1:
	db	70	;'F'
	db	114	;'r'
	db	101	;'e'
	db	113	;'q'
	db	46
	db	58	;':'
	db	32
	db	0
	
STR_3:
	db	68	;'D'
	db	67	;'C'
	db	58	;':'
	db	32
	db	0
	
STR_2:
	db	75	;'K'
	db	72	;'H'
	db	122	;'z'
	db	0
	
STR_4:
	db	37
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
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	33
	global	_dutyCycleValue
_dutyCycleValue:
       ds      2
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
	global	_dutyCycleADC
_dutyCycleADC:
       ds      4
	global	_dutyCycleADCTxt
_dutyCycleADCTxt:
       ds      5
	global	_frequencyADCTxt
_frequencyADCTxt:
       ds      4
	global	_frequencyADC
_frequencyADC:
       ds      4
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"Libs/ADC/adc.c"
	line	5
	global	_channels
_channels:
       ds      52
psect	dataBANK0
	file	"main.c"
	line	34
	global	_frequencyValue
_frequencyValue:
       ds      2
	file	"main.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (54 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,54
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (2 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+1		
	line	#
; Clear objects allocated to BANK0 (17 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	17
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_setup:	; 1 bytes @ 0x0
?_update_pwm:	; 1 bytes @ 0x0
?_init_lcd:	; 1 bytes @ 0x0
?_ADC_init:	; 1 bytes @ 0x0
??_ADC_init:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_enable_pulse:	; 1 bytes @ 0x0
??_enable_pulse:	; 1 bytes @ 0x0
	global	?_ADC_read
?_ADC_read:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	ADC_read@channel
ADC_read@channel:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x0
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x0
	ds   1
?_lcd_send_cmd:	; 1 bytes @ 0x1
	global	lcd_send_cmd@cmd
lcd_send_cmd@cmd:	; 2 bytes @ 0x1
	ds   1
??_ADC_read:	; 1 bytes @ 0x2
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
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	ADC_read@value
ADC_read@value:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x4
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x4
	ds   1
??___ftpack:	; 1 bytes @ 0x5
	global	lcd_write@line
lcd_write@line:	; 2 bytes @ 0x5
	ds   2
	global	lcd_write@txt
lcd_write@txt:	; 2 bytes @ 0x7
	ds   1
??___lmul:	; 1 bytes @ 0x8
??___lldiv:	; 1 bytes @ 0x8
??___llmod:	; 1 bytes @ 0x8
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x8
	ds   1
??_lcd_write:	; 1 bytes @ 0x9
	ds   2
	global	lcd_write@index
lcd_write@index:	; 2 bytes @ 0xB
	ds   1
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0xC
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xC
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0xC
	ds   1
?_IntToStr:	; 1 bytes @ 0xD
	global	IntToStr@FromInt
IntToStr@FromInt:	; 4 bytes @ 0xD
	ds   3
??___lltoft:	; 1 bytes @ 0x10
	ds   1
	global	IntToStr@ToStr
IntToStr@ToStr:	; 1 bytes @ 0x11
	ds   1
	global	IntToStr@from
IntToStr@from:	; 2 bytes @ 0x12
	ds   2
??_IntToStr:	; 1 bytes @ 0x14
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x14
	global	IntToStr@num
IntToStr@num:	; 4 bytes @ 0x14
	ds   1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x15
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x15
	ds   3
	global	IntToStr@index
IntToStr@index:	; 2 bytes @ 0x18
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x18
	ds   3
??___ftdiv:	; 1 bytes @ 0x1B
	ds   3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1E
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1F
	ds   3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x22
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x23
	ds   1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x24
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x24
	ds   3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x27
	ds   3
??___ftmul:	; 1 bytes @ 0x2A
	ds   3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x2D
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x2E
	ds   3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x31
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x32
	ds   1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x33
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x33
	ds   3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x36
	ds   3
??___ftadd:	; 1 bytes @ 0x39
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3C
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x3D
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x3E
	ds   1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x3F
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x3F
	ds   4
??___fttol:	; 1 bytes @ 0x43
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x48
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x49
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x4D
	ds   1
??_update_pwm:	; 1 bytes @ 0x4E
	ds   2
	global	_update_pwm$930
_update_pwm$930:	; 3 bytes @ 0x50
	ds   3
	global	_update_pwm$931
_update_pwm$931:	; 3 bytes @ 0x53
	ds   3
	global	update_pwm@tempdc
update_pwm@tempdc:	; 2 bytes @ 0x56
	ds   2
	global	update_pwm@tempPR2
update_pwm@tempPR2:	; 2 bytes @ 0x58
	ds   2
??_main:	; 1 bytes @ 0x5A
	ds   2
;!
;!Data Sizes:
;!    Strings     19
;!    Constant    0
;!    Data        56
;!    BSS         17
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     92      94
;!    BANK0           160      0      71
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
;!		 -> dutyCycleADCTxt(BANK0[5]), frequencyADCTxt(BANK0[4]), 
;!
;!    lcd_write@txt	PTR const unsigned char  size(2) Largest target is 8
;!		 -> dutyCycleADCTxt(BANK0[5]), frequencyADCTxt(BANK0[4]), STR_1(CODE[8]), STR_2(CODE[4]), 
;!		 -> STR_3(CODE[5]), STR_4(CODE[2]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_update_pwm
;!    _update_pwm->___fttol
;!    ___lltoft->___lmul
;!    ___fttol->___ftadd
;!    ___ftmul->___ftdiv
;!    ___ftdiv->___lltoft
;!    ___ftadd->___ftmul
;!    _setup->_init_lcd
;!    _init_lcd->_lcd_send_cmd
;!    _lcd_write->_lcd_send_cmd
;!    _lcd_send_cmd->_enable_pulse
;!    _IntToStr->___lldiv
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0   36527
;!                                             90 COMRAM     2     2      0
;!                           _ADC_read
;!                           _IntToStr
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                           ___lltoft
;!                          _lcd_write
;!                              _setup
;!                         _update_pwm
;! ---------------------------------------------------------------------------------
;! (1) _update_pwm                                          12    12      0   16817
;!                                             78 COMRAM    12    12      0
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                           ___lltoft
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              12     4      8     522
;!                                              0 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             9     5      4    3293
;!                                             12 COMRAM     9     5      4
;!                           ___ftpack
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             15    11      4     556
;!                                             63 COMRAM    15    11      4
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___lltoft (ARG)
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             15     9      6    3906
;!                                             36 COMRAM    15     9      6
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                           ___lltoft (ARG)
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    4164
;!                                             21 COMRAM    15     9      6
;!                           ___ftpack
;!                           ___ftpack (ARG)
;!                           ___lltoft (ARG)
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftadd                                             12     6      6    4240
;!                                             51 COMRAM    12     6      6
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lltoft (ARG)
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    2844
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _setup                                                2     2      0     250
;!                                              4 COMRAM     2     2      0
;!                           _ADC_init
;!                           _init_lcd
;! ---------------------------------------------------------------------------------
;! (2) _init_lcd                                             1     1      0     250
;!                                              3 COMRAM     1     1      0
;!                       _lcd_send_cmd
;! ---------------------------------------------------------------------------------
;! (2) _ADC_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_write                                           10     4      6    1752
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
;! (1) _IntToStr                                            13     6      7    1284
;!                                             13 COMRAM    13     6      7
;!                            ___lldiv
;!                            ___llmod
;! ---------------------------------------------------------------------------------
;! (2) ___llmod                                              9     1      8     311
;!                                              0 COMRAM     9     1      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     314
;!                                              0 COMRAM    13     5      8
;! ---------------------------------------------------------------------------------
;! (1) _ADC_read                                             6     4      2     265
;!                                              0 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_read
;!   _IntToStr
;!     ___lldiv
;!     ___llmod
;!   ___ftadd
;!     ___ftdiv (ARG)
;!       ___ftpack
;!       ___ftpack (ARG)
;!       ___lltoft (ARG)
;!         ___ftpack
;!         ___lmul (ARG)
;!       ___lmul (ARG)
;!     ___ftmul (ARG)
;!       ___ftdiv (ARG)
;!       ___ftpack (ARG)
;!       ___lltoft (ARG)
;!       ___lmul (ARG)
;!     ___ftpack (ARG)
;!     ___lltoft (ARG)
;!     ___lmul (ARG)
;!   ___ftdiv
;!   ___ftmul
;!   ___fttol
;!     ___ftadd (ARG)
;!     ___ftdiv (ARG)
;!     ___ftmul (ARG)
;!     ___lltoft (ARG)
;!     ___lmul (ARG)
;!   ___lltoft
;!   _lcd_write
;!     _enable_pulse
;!     _lcd_send_cmd
;!       _enable_pulse
;!   _setup
;!     _ADC_init
;!     _init_lcd
;!       _lcd_send_cmd
;!   _update_pwm
;!     ___ftadd
;!     ___ftdiv
;!     ___ftmul
;!     ___fttol
;!     ___lltoft
;!     ___lmul
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
;!BANK0               A0      0      47       5       44.4%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     5C      5E       1       98.9%
;!BITBIGSFRhh         34      0       0      20        0.0%
;!BITBIGSFRllll       2C      0       0      26        0.0%
;!BITBIGSFRlhl        26      0       0      23        0.0%
;!BITBIGSFRhlh         5      0       0      21        0.0%
;!BITBIGSFRlllh        4      0       0      25        0.0%
;!BITBIGSFRllh         1      0       0      24        0.0%
;!BITBIGSFRlhh         1      0       0      22        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      A5      27        0.0%
;!DATA                 0      0      A5       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 41 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;;		_ADC_read
;;		_IntToStr
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___lltoft
;;		_lcd_write
;;		_setup
;;		_update_pwm
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	41
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	41
	
_main:
;incstack = 0
	callstack 27
	line	42
	
l1698:
	call	_setup	;wreg free
	line	45
	
l1700:
	movlw	high(0)
	movwf	((c:ADC_read@channel+1))^00h,c
	movlw	low(0)
	movwf	((c:ADC_read@channel))^00h,c
	call	_ADC_read	;wreg free
	movff	0+?_ADC_read,(_dutyCycleADC)
	movff	1+?_ADC_read,(_dutyCycleADC+1)
	movlb	0	; () banked
	movlw	0
	btfsc	((_dutyCycleADC+1))&0ffh,7
	movlw	-1
	movwf	((_dutyCycleADC+2))&0ffh
	movwf	((_dutyCycleADC+3))&0ffh
	line	47
	
l1702:; BSR set to: 0

	movlw	low(float24(100.00000000000000))
	movwf	((c:___ftmul@f2))^00h,c
	movlw	high(float24(100.00000000000000))
	movwf	((c:___ftmul@f2+1))^00h,c
	movlw	low highword(float24(100.00000000000000))
	movwf	((c:___ftmul@f2+2))^00h,c

	movlw	low(float24(1023.0000000000000))
	movwf	((c:___ftdiv@f2))^00h,c
	movlw	high(float24(1023.0000000000000))
	movwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(float24(1023.0000000000000))
	movwf	((c:___ftdiv@f2+2))^00h,c

	movff	(_dutyCycleADC),(c:___lltoft@c)
	movff	(_dutyCycleADC+1),(c:___lltoft@c+1)
	movff	(_dutyCycleADC+2),(c:___lltoft@c+2)
	movff	(_dutyCycleADC+3),(c:___lltoft@c+3)
	call	___lltoft	;wreg free
	movff	0+?___lltoft,(c:___ftdiv@f1)
	movff	1+?___lltoft,(c:___ftdiv@f1+1)
	movff	2+?___lltoft,(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___ftmul@f1)
	movff	1+?___ftdiv,(c:___ftmul@f1+1)
	movff	2+?___ftdiv,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___fttol@f1)
	movff	1+?___ftmul,(c:___fttol@f1+1)
	movff	2+?___ftmul,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(_dutyCycleADC)
	movff	1+?___fttol,(_dutyCycleADC+1)
	movff	2+?___fttol,(_dutyCycleADC+2)
	movff	3+?___fttol,(_dutyCycleADC+3)
	
	line	48
	
l1704:
	movff	(_dutyCycleADC),(c:IntToStr@FromInt)
	movff	(_dutyCycleADC+1),(c:IntToStr@FromInt+1)
	movff	(_dutyCycleADC+2),(c:IntToStr@FromInt+2)
	movff	(_dutyCycleADC+3),(c:IntToStr@FromInt+3)
		movlw	low(_dutyCycleADCTxt)
	movwf	((c:IntToStr@ToStr))^00h,c

	movlw	high(02h)
	movwf	((c:IntToStr@from+1))^00h,c
	movlw	low(02h)
	movwf	((c:IntToStr@from))^00h,c
	call	_IntToStr	;wreg free
	line	50
	
l1706:
	movlw	high(01h)
	movwf	((c:ADC_read@channel+1))^00h,c
	movlw	low(01h)
	movwf	((c:ADC_read@channel))^00h,c
	call	_ADC_read	;wreg free
	movff	0+?_ADC_read,(_frequencyADC)
	movff	1+?_ADC_read,(_frequencyADC+1)
	movlb	0	; () banked
	movlw	0
	btfsc	((_frequencyADC+1))&0ffh,7
	movlw	-1
	movwf	((_frequencyADC+2))&0ffh
	movwf	((_frequencyADC+3))&0ffh
	line	52
	
l1708:; BSR set to: 0

	movlw	low(float24(1000.0000000000000))
	movwf	((c:___ftdiv@f2))^00h,c
	movlw	high(float24(1000.0000000000000))
	movwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(float24(1000.0000000000000))
	movwf	((c:___ftdiv@f2+2))^00h,c

	movlw	low(float24(2000.0000000000000))
	movwf	((c:___ftadd@f2))^00h,c
	movlw	high(float24(2000.0000000000000))
	movwf	((c:___ftadd@f2+1))^00h,c
	movlw	low highword(float24(2000.0000000000000))
	movwf	((c:___ftadd@f2+2))^00h,c

	movlw	low(float24(95.890000000000001))
	movwf	((c:___ftmul@f2))^00h,c
	movlw	high(float24(95.890000000000001))
	movwf	((c:___ftmul@f2+1))^00h,c
	movlw	low highword(float24(95.890000000000001))
	movwf	((c:___ftmul@f2+2))^00h,c

	movff	(_frequencyADC),(c:___lltoft@c)
	movff	(_frequencyADC+1),(c:___lltoft@c+1)
	movff	(_frequencyADC+2),(c:___lltoft@c+2)
	movff	(_frequencyADC+3),(c:___lltoft@c+3)
	call	___lltoft	;wreg free
	movff	0+?___lltoft,(c:___ftmul@f1)
	movff	1+?___lltoft,(c:___ftmul@f1+1)
	movff	2+?___lltoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:___ftdiv@f1)
	movff	1+?___ftadd,(c:___ftdiv@f1+1)
	movff	2+?___ftadd,(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___fttol@f1)
	movff	1+?___ftdiv,(c:___fttol@f1+1)
	movff	2+?___ftdiv,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(_frequencyADC)
	movff	1+?___fttol,(_frequencyADC+1)
	movff	2+?___fttol,(_frequencyADC+2)
	movff	3+?___fttol,(_frequencyADC+3)
	
	line	53
	
l1710:
	movff	(_frequencyADC),(c:IntToStr@FromInt)
	movff	(_frequencyADC+1),(c:IntToStr@FromInt+1)
	movff	(_frequencyADC+2),(c:IntToStr@FromInt+2)
	movff	(_frequencyADC+3),(c:IntToStr@FromInt+3)
		movlw	low(_frequencyADCTxt)
	movwf	((c:IntToStr@ToStr))^00h,c

	movlw	high(02h)
	movwf	((c:IntToStr@from+1))^00h,c
	movlw	low(02h)
	movwf	((c:IntToStr@from))^00h,c
	call	_IntToStr	;wreg free
	line	55
	
l1712:
	movlw	high(01h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(01h)
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
	line	56
	
l1714:
	movlw	high(08h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(08h)
	movwf	((c:lcd_write@row))^00h,c
	movlw	high(01h)
	movwf	((c:lcd_write@line+1))^00h,c
	movlw	low(01h)
	movwf	((c:lcd_write@line))^00h,c
		movlw	low(_frequencyADCTxt)
	movwf	((c:lcd_write@txt))^00h,c
	clrf	((c:lcd_write@txt+1))^00h,c

	call	_lcd_write	;wreg free
	line	57
	
l1716:
	movlw	high(01h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(01h)
	movwf	((c:lcd_write@row))^00h,c
	movlw	high(0Fh)
	movwf	((c:lcd_write@line+1))^00h,c
	movlw	low(0Fh)
	movwf	((c:lcd_write@line))^00h,c
		movlw	low(STR_2)
	movwf	((c:lcd_write@txt))^00h,c
	movf	((c:lcd_write@txt))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:lcd_write@txt+1))^00h,c

	call	_lcd_write	;wreg free
	line	59
	
l1718:
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
	line	60
	
l1720:
	movlw	high(08h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(08h)
	movwf	((c:lcd_write@row))^00h,c
	movlw	high(02h)
	movwf	((c:lcd_write@line+1))^00h,c
	movlw	low(02h)
	movwf	((c:lcd_write@line))^00h,c
		movlw	low(STR_4)
	movwf	((c:lcd_write@txt))^00h,c
	movf	((c:lcd_write@txt))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:lcd_write@txt+1))^00h,c

	call	_lcd_write	;wreg free
	line	61
	
l1722:
	movlw	high(05h)
	movwf	((c:lcd_write@row+1))^00h,c
	movlw	low(05h)
	movwf	((c:lcd_write@row))^00h,c
	movlw	high(02h)
	movwf	((c:lcd_write@line+1))^00h,c
	movlw	low(02h)
	movwf	((c:lcd_write@line))^00h,c
		movlw	low(_dutyCycleADCTxt)
	movwf	((c:lcd_write@txt))^00h,c
	clrf	((c:lcd_write@txt+1))^00h,c

	call	_lcd_write	;wreg free
	line	64
	call	_update_pwm	;wreg free
	line	65
	
l1724:
	asmopt push
asmopt off
movlw  2
movwf	(??_main+0+0+1)^00h,c
movlw	69
movwf	(??_main+0+0)^00h,c
	movlw	170
u1317:
decfsz	wreg,f
	bra	u1317
	decfsz	(??_main+0+0)^00h,c,f
	bra	u1317
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u1317
asmopt pop

	line	66
	goto	l1700
	global	start
	goto	start
	callstack 0
	line	68
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_update_pwm

;; *************** function _update_pwm *****************
;; Defined at:
;;		line 92 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempPR2         2   88[COMRAM] int 
;;  tempdc          2   86[COMRAM] int 
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
;;      Locals:        10       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___lltoft
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	92
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	92
	
_update_pwm:
;incstack = 0
	callstack 28
	line	93
	
l1688:
	movff	(_dutyCycleADC),(c:___lltoft@c)
	movff	(_dutyCycleADC+1),(c:___lltoft@c+1)
	movff	(_dutyCycleADC+2),(c:___lltoft@c+2)
	movff	(_dutyCycleADC+3),(c:___lltoft@c+3)
	call	___lltoft	;wreg free
	movff	0+?___lltoft,(c:___ftmul@f2)
	movff	1+?___lltoft,(c:___ftmul@f2+1)
	movff	2+?___lltoft,(c:___ftmul@f2+2)
	movff	(_frequencyADC),(c:___lmul@multiplier)
	movff	(_frequencyADC+1),(c:___lmul@multiplier+1)
	movff	(_frequencyADC+2),(c:___lmul@multiplier+2)
	movff	(_frequencyADC+3),(c:___lmul@multiplier+3)
	movlw	low(03E8h)
	movwf	((c:___lmul@multiplicand))^00h,c
	movlw	high(03E8h)
	movwf	((c:___lmul@multiplicand+1))^00h,c
	movlw	low highword(03E8h)
	movwf	((c:___lmul@multiplicand+2))^00h,c
	movlw	high highword(03E8h)
	movwf	((c:___lmul@multiplicand+3))^00h,c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:___lltoft@c)
	movff	1+?___lmul,(c:___lltoft@c+1)
	movff	2+?___lmul,(c:___lltoft@c+2)
	movff	3+?___lmul,(c:___lltoft@c+3)
	
	call	___lltoft	;wreg free
	movff	0+?___lltoft,(c:___ftdiv@f2)
	movff	1+?___lltoft,(c:___ftdiv@f2+1)
	movff	2+?___lltoft,(c:___ftdiv@f2+2)
	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1))^00h,c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1+1))^00h,c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1+2))^00h,c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___ftmul@f1)
	movff	1+?___ftdiv,(c:___ftmul@f1+1)
	movff	2+?___ftdiv,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_update_pwm$930)
	movff	1+?___ftmul,(c:_update_pwm$930+1)
	movff	2+?___ftmul,(c:_update_pwm$930+2)
	movlw	low(float24(20000000.000000000))
	movwf	((c:___ftmul@f2))^00h,c
	movlw	high(float24(20000000.000000000))
	movwf	((c:___ftmul@f2+1))^00h,c
	movlw	low highword(float24(20000000.000000000))
	movwf	((c:___ftmul@f2+2))^00h,c

	movlw	low(float24(100.00000000000000))
	movwf	((c:___ftdiv@f2))^00h,c
	movlw	high(float24(100.00000000000000))
	movwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(float24(100.00000000000000))
	movwf	((c:___ftdiv@f2+2))^00h,c

	movff	(c:_update_pwm$930),(c:___ftdiv@f1)
	movff	(c:_update_pwm$930+1),(c:___ftdiv@f1+1)
	movff	(c:_update_pwm$930+2),(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___ftmul@f1)
	movff	1+?___ftdiv,(c:___ftmul@f1+1)
	movff	2+?___ftdiv,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_update_pwm$931)
	movff	1+?___ftmul,(c:_update_pwm$931+1)
	movff	2+?___ftmul,(c:_update_pwm$931+2)
	movlw	low(float24(16.000000000000000))
	movwf	((c:___ftdiv@f2))^00h,c
	movlw	high(float24(16.000000000000000))
	movwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(float24(16.000000000000000))
	movwf	((c:___ftdiv@f2+2))^00h,c

	movff	(c:_update_pwm$931),(c:___ftdiv@f1)
	movff	(c:_update_pwm$931+1),(c:___ftdiv@f1+1)
	movff	(c:_update_pwm$931+2),(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___fttol@f1)
	movff	1+?___ftdiv,(c:___fttol@f1+1)
	movff	2+?___ftdiv,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:update_pwm@tempdc)
	movff	1+?___fttol,(c:update_pwm@tempdc+1)
	line	94
	movlw	low(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2))^00h,c
	movlw	high(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+1))^00h,c
	movlw	low highword(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+2))^00h,c

	movff	(_frequencyADC),(c:___lmul@multiplier)
	movff	(_frequencyADC+1),(c:___lmul@multiplier+1)
	movff	(_frequencyADC+2),(c:___lmul@multiplier+2)
	movff	(_frequencyADC+3),(c:___lmul@multiplier+3)
	movlw	low(03E80h)
	movwf	((c:___lmul@multiplicand))^00h,c
	movlw	high(03E80h)
	movwf	((c:___lmul@multiplicand+1))^00h,c
	movlw	low highword(03E80h)
	movwf	((c:___lmul@multiplicand+2))^00h,c
	movlw	high highword(03E80h)
	movwf	((c:___lmul@multiplicand+3))^00h,c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:___lltoft@c)
	movff	1+?___lmul,(c:___lltoft@c+1)
	movff	2+?___lmul,(c:___lltoft@c+2)
	movff	3+?___lmul,(c:___lltoft@c+3)
	
	call	___lltoft	;wreg free
	movff	0+?___lltoft,(c:___ftdiv@f2)
	movff	1+?___lltoft,(c:___ftdiv@f2+1)
	movff	2+?___lltoft,(c:___ftdiv@f2+2)
	movlw	low(float24(5000000.0000000000))
	movwf	((c:___ftdiv@f1))^00h,c
	movlw	high(float24(5000000.0000000000))
	movwf	((c:___ftdiv@f1+1))^00h,c
	movlw	low highword(float24(5000000.0000000000))
	movwf	((c:___ftdiv@f1+2))^00h,c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___ftadd@f1)
	movff	1+?___ftdiv,(c:___ftadd@f1+1)
	movff	2+?___ftdiv,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:___fttol@f1)
	movff	1+?___ftadd,(c:___fttol@f1+1)
	movff	2+?___ftadd,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:update_pwm@tempPR2)
	movff	1+?___fttol,(c:update_pwm@tempPR2+1)
	line	96
	
l1690:
	movf	((c:_dutyCycleValue))^00h,c,w
xorwf	((c:update_pwm@tempdc))^00h,c,w
	bnz	u1290
movf	((c:_dutyCycleValue+1))^00h,c,w
xorwf	((c:update_pwm@tempdc+1))^00h,c,w
	btfsc	status,2
	goto	u1291
	goto	u1290

u1291:
	goto	l57
u1290:
	line	97
	
l1692:
	movff	(c:update_pwm@tempdc),(c:_dutyCycleValue)
	movff	(c:update_pwm@tempdc+1),(c:_dutyCycleValue+1)
	line	98
	
l1694:
	movff	(c:_dutyCycleValue),??_update_pwm+0+0
	movlw	03h
	andwf	(??_update_pwm+0+0)^00h,c
	swapf	(??_update_pwm+0+0)^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((c:4029))^0f00h,c	;volatile
	line	99
	movff	(c:_dutyCycleValue),??_update_pwm+0+0
	movff	(c:_dutyCycleValue+1),??_update_pwm+0+0+1
	bcf	status,0
	rrcf	(??_update_pwm+0+1)^00h,c
	rrcf	(??_update_pwm+0+0)^00h,c
	bcf	status,0
	rrcf	(??_update_pwm+0+1)^00h,c
	rrcf	(??_update_pwm+0+0)^00h,c
	movf	(??_update_pwm+0+0)^00h,c,w
	movwf	((c:4030))^0f00h,c	;volatile
	line	100
	
l57:
	line	102
	movf	((c:4043))^0f00h,c,w	;volatile
	movwf	(??_update_pwm+0+0)^00h,c
	clrf	(??_update_pwm+0+0+1)^00h,c

	movf	((c:update_pwm@tempPR2))^00h,c,w
xorwf	(??_update_pwm+0+0)^00h,c,w
	bnz	u1300
movf	((c:update_pwm@tempPR2+1))^00h,c,w
xorwf	(??_update_pwm+0+1)^00h,c,w
	btfsc	status,2
	goto	u1301
	goto	u1300

u1301:
	goto	l59
u1300:
	line	103
	
l1696:
	bcf	((c:4042))^0f00h,c,2	;volatile
	line	104
	movff	(c:update_pwm@tempPR2),(c:4043)	;volatile
	line	105
	bsf	((c:4042))^0f00h,c,2	;volatile
	line	108
	
l59:
	return	;funcret
	callstack 0
GLOBAL	__end_of_update_pwm
	__end_of_update_pwm:
	signat	_update_pwm,89
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMRAM] unsigned long 
;;  multiplicand    4    4[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_update_pwm
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/Umul32.c"
	line	15
global __ptext2
__ptext2:
psect	text2
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/Umul32.c"
	line	15
	
___lmul:
;incstack = 0
	callstack 29
	line	119
	
l1354:
	movlw	low(0)
	movwf	((c:___lmul@product))^00h,c
	movlw	high(0)
	movwf	((c:___lmul@product+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3))^00h,c
	line	121
	
l1356:
	
	btfss	((c:___lmul@multiplier))^00h,c,(0)&7
	goto	u741
	goto	u740
u741:
	goto	l1360
u740:
	line	122
	
l1358:
	movf	((c:___lmul@multiplicand))^00h,c,w
	addwf	((c:___lmul@product))^00h,c
	movf	((c:___lmul@multiplicand+1))^00h,c,w
	addwfc	((c:___lmul@product+1))^00h,c
	movf	((c:___lmul@multiplicand+2))^00h,c,w
	addwfc	((c:___lmul@product+2))^00h,c
	movf	((c:___lmul@multiplicand+3))^00h,c,w
	addwfc	((c:___lmul@product+3))^00h,c
	line	123
	
l1360:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand))^00h,c
	rlcf	((c:___lmul@multiplicand+1))^00h,c
	rlcf	((c:___lmul@multiplicand+2))^00h,c
	rlcf	((c:___lmul@multiplicand+3))^00h,c
	line	124
	
l1362:
	bcf	status,0
	rrcf	((c:___lmul@multiplier+3))^00h,c
	rrcf	((c:___lmul@multiplier+2))^00h,c
	rrcf	((c:___lmul@multiplier+1))^00h,c
	rrcf	((c:___lmul@multiplier))^00h,c
	line	125
	movf	((c:___lmul@multiplier))^00h,c,w
iorwf	((c:___lmul@multiplier+1))^00h,c,w
iorwf	((c:___lmul@multiplier+2))^00h,c,w
iorwf	((c:___lmul@multiplier+3))^00h,c,w
	btfss	status,2
	goto	u751
	goto	u750

u751:
	goto	l1356
u750:
	
l124:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l125:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   12[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   12[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_update_pwm
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/lltoft.c"
	line	35
global __ptext3
__ptext3:
psect	text3
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/lltoft.c"
	line	35
	
___lltoft:
;incstack = 0
	callstack 28
	line	38
	
l1612:
	movlw	low(08Eh)
	movwf	((c:___lltoft@exp))^00h,c
	line	41
	goto	l1616
	line	42
	
l1614:
	bcf	status,0
	rrcf	((c:___lltoft@c+3))^00h,c
	rrcf	((c:___lltoft@c+2))^00h,c
	rrcf	((c:___lltoft@c+1))^00h,c
	rrcf	((c:___lltoft@c))^00h,c
	line	43
	incf	((c:___lltoft@exp))^00h,c
	line	41
	
l1616:
	movlw	0
	andwf	((c:___lltoft@c))^00h,c,w
	movwf	(??___lltoft+0+0)^00h,c
	movlw	0
	andwf	((c:___lltoft@c+1))^00h,c,w
	movwf	1+(??___lltoft+0+0)^00h,c
	
	movlw	0
	andwf	((c:___lltoft@c+2))^00h,c,w
	movwf	2+(??___lltoft+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___lltoft@c+3))^00h,c,w
	movwf	3+(??___lltoft+0+0)^00h,c
	movf	(??___lltoft+0+0)^00h,c,w
iorwf	(??___lltoft+0+1)^00h,c,w
iorwf	(??___lltoft+0+2)^00h,c,w
iorwf	(??___lltoft+0+3)^00h,c,w
	btfss	status,2
	goto	u1221
	goto	u1220

u1221:
	goto	l1614
u1220:
	line	45
	
l1618:
	movff	(c:___lltoft@c),(c:___ftpack@arg)
	movff	(c:___lltoft@c+1),(c:___ftpack@arg+1)
	movff	(c:___lltoft@c+2),(c:___ftpack@arg+2)
	movff	(c:___lltoft@exp),(c:___ftpack@exp)
	movlw	low(0)
	movwf	((c:___ftpack@sign))^00h,c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lltoft)
	movff	1+?___ftpack,(c:?___lltoft+1)
	movff	2+?___ftpack,(c:?___lltoft+2)
	line	46
	
l536:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   63[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   73[COMRAM] unsigned long 
;;  exp1            1   77[COMRAM] unsigned char 
;;  sign1           1   72[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   63[COMRAM] long 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_update_pwm
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/fttol.c"
	line	44
global __ptext4
__ptext4:
psect	text4
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/fttol.c"
	line	44
	
___fttol:
;incstack = 0
	callstack 29
	line	49
	
l1550:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)^00h,c
	clrf	(??___fttol+0+0+2)^00h,c
	rlcf	((c:___fttol@f1+1))^00h,c,w
	rlcf	(??___fttol+0+0)^00h,c
	bnc	u1111
	bsf	(??___fttol+0+0+1)^00h,c,0
u1111:
	movf	(??___fttol+0+0)^00h,c,w
	movwf	((c:___fttol@exp1))^00h,c
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l1556
u1120:
	line	50
	
l1552:
	movlw	low(0)
	movwf	((c:?___fttol))^00h,c
	movlw	high(0)
	movwf	((c:?___fttol+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fttol+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fttol+3))^00h,c
	goto	l487
	line	51
	
l1556:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)^00h,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0))^00h,c,w
	movwf	(??___fttol+4+0)^00h,c
	goto	u1130
u1135:
	bcf	status,0
	rrcf	(??___fttol+1+2)^00h,c
	rrcf	(??___fttol+1+1)^00h,c
	rrcf	(??___fttol+1+0)^00h,c
u1130:
	decfsz	(??___fttol+4+0)^00h,c
	goto	u1135
	movf	(??___fttol+1+0)^00h,c,w
	movwf	((c:___fttol@sign1))^00h,c
	line	52
	
l1558:
	bsf	(0+(15/8)+(c:___fttol@f1))^00h,c,(15)&7
	line	53
	
l1560:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2))^00h,c

	line	54
	
l1562:
	movf	((c:___fttol@f1))^00h,c,w
	movwf	((c:___fttol@lval))^00h,c
	movf	((c:___fttol@f1+1))^00h,c,w
	movwf	1+((c:___fttol@lval))^00h,c
	
	movf	((c:___fttol@f1+2))^00h,c,w
	movwf	2+((c:___fttol@lval))^00h,c
	
	clrf	3+((c:___fttol@lval))^00h,c
	
	line	55
	
l1564:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1))^00h,c
	line	56
	
l1566:
	btfsc	((c:___fttol@exp1))^00h,c,7
	goto	u1140
	goto	u1141

u1141:
	goto	l1578
u1140:
	line	57
	
l1568:
		movf	((c:___fttol@exp1))^00h,c,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u1151
	goto	u1150

u1151:
	goto	l1574
u1150:
	goto	l1552
	line	60
	
l1574:
	bcf	status,0
	rrcf	((c:___fttol@lval+3))^00h,c
	rrcf	((c:___fttol@lval+2))^00h,c
	rrcf	((c:___fttol@lval+1))^00h,c
	rrcf	((c:___fttol@lval))^00h,c
	line	61
	
l1576:
	incfsz	((c:___fttol@exp1))^00h,c
	
	goto	l1574
	goto	l1588
	line	63
	
l1578:
		movlw	018h-1
	cpfsgt	((c:___fttol@exp1))^00h,c
	goto	u1161
	goto	u1160

u1161:
	goto	l1586
u1160:
	goto	l1552
	line	66
	
l1584:
	bcf	status,0
	rlcf	((c:___fttol@lval))^00h,c
	rlcf	((c:___fttol@lval+1))^00h,c
	rlcf	((c:___fttol@lval+2))^00h,c
	rlcf	((c:___fttol@lval+3))^00h,c
	line	67
	decf	((c:___fttol@exp1))^00h,c
	line	65
	
l1586:
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l1584
u1170:
	line	70
	
l1588:
	movf	((c:___fttol@sign1))^00h,c,w
	btfsc	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l1592
u1180:
	line	71
	
l1590:
	comf	((c:___fttol@lval+3))^00h,c
	comf	((c:___fttol@lval+2))^00h,c
	comf	((c:___fttol@lval+1))^00h,c
	negf	((c:___fttol@lval))^00h,c
	movlw	0
	addwfc	((c:___fttol@lval+1))^00h,c
	addwfc	((c:___fttol@lval+2))^00h,c
	addwfc	((c:___fttol@lval+3))^00h,c
	line	72
	
l1592:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	line	73
	
l487:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   36[COMRAM] float 
;;  f2              3   39[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   46[COMRAM] unsigned um
;;  sign            1   50[COMRAM] unsigned char 
;;  cntr            1   49[COMRAM] unsigned char 
;;  exp             1   45[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   36[COMRAM] float 
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_update_pwm
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftmul.c"
	line	62
global __ptext5
__ptext5:
psect	text5
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftmul.c"
	line	62
	
___ftmul:
;incstack = 0
	callstack 28
	line	67
	
l1502:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)^00h,c
	clrf	(??___ftmul+0+0+2)^00h,c
	rlcf	((c:___ftmul@f1+1))^00h,c,w
	rlcf	(??___ftmul+0+0)^00h,c
	bnc	u1051
	bsf	(??___ftmul+0+0+1)^00h,c,0
u1051:
	movf	(??___ftmul+0+0)^00h,c,w
	movwf	((c:___ftmul@exp))^00h,c
	movf	((c:___ftmul@exp))^00h,c,w
	btfss	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l1508
u1060:
	line	68
	
l1504:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2))^00h,c

	goto	l466
	line	69
	
l1508:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)^00h,c
	clrf	(??___ftmul+0+0+2)^00h,c
	rlcf	((c:___ftmul@f2+1))^00h,c,w
	rlcf	(??___ftmul+0+0)^00h,c
	bnc	u1071
	bsf	(??___ftmul+0+0+1)^00h,c,0
u1071:
	movf	(??___ftmul+0+0)^00h,c,w
	movwf	((c:___ftmul@sign))^00h,c
	movf	((c:___ftmul@sign))^00h,c,w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l1514
u1080:
	line	70
	
l1510:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2))^00h,c

	goto	l466
	line	71
	
l1514:
	movf	((c:___ftmul@sign))^00h,c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp))^00h,c
	line	72
	
l1516:
	movff	0+((c:___ftmul@f1)+02h),(c:___ftmul@sign)
	line	73
	movf	(0+((c:___ftmul@f2)+02h))^00h,c,w
	xorwf	((c:___ftmul@sign))^00h,c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign))^00h,c
	line	75
	
l1518:
	bsf	(0+(15/8)+(c:___ftmul@f1))^00h,c,(15)&7
	line	77
	
l1520:
	bsf	(0+(15/8)+(c:___ftmul@f2))^00h,c,(15)&7
	line	78
	
l1522:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2))^00h,c

	line	79
	
l1524:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product))^00h,c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2))^00h,c

	line	134
	
l1526:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr))^00h,c
	line	136
	
l1528:
	
	btfss	((c:___ftmul@f1))^00h,c,(0)&7
	goto	u1091
	goto	u1090
u1091:
	goto	l1532
u1090:
	line	137
	
l1530:
	movf	((c:___ftmul@f2))^00h,c,w
	addwf	((c:___ftmul@f3_as_product))^00h,c
	movf	((c:___ftmul@f2+1))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+1))^00h,c
	movf	((c:___ftmul@f2+2))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+2))^00h,c

	line	138
	
l1532:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2))^00h,c
	rrcf	((c:___ftmul@f1+1))^00h,c
	rrcf	((c:___ftmul@f1))^00h,c
	line	139
	bcf	status,0
	rlcf	((c:___ftmul@f2))^00h,c
	rlcf	((c:___ftmul@f2+1))^00h,c
	rlcf	((c:___ftmul@f2+2))^00h,c
	line	140
	
l1534:
	decfsz	((c:___ftmul@cntr))^00h,c
	
	goto	l1528
	line	143
	
l1536:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr))^00h,c
	line	145
	
l1538:
	
	btfss	((c:___ftmul@f1))^00h,c,(0)&7
	goto	u1101
	goto	u1100
u1101:
	goto	l1542
u1100:
	line	146
	
l1540:
	movf	((c:___ftmul@f2))^00h,c,w
	addwf	((c:___ftmul@f3_as_product))^00h,c
	movf	((c:___ftmul@f2+1))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+1))^00h,c
	movf	((c:___ftmul@f2+2))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+2))^00h,c

	line	147
	
l1542:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2))^00h,c
	rrcf	((c:___ftmul@f1+1))^00h,c
	rrcf	((c:___ftmul@f1))^00h,c
	line	148
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2))^00h,c
	rrcf	((c:___ftmul@f3_as_product+1))^00h,c
	rrcf	((c:___ftmul@f3_as_product))^00h,c
	line	149
	
l1544:
	decfsz	((c:___ftmul@cntr))^00h,c
	
	goto	l1538
	line	156
	
l1546:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	line	157
	
l466:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   21[COMRAM] float 
;;  f2              3   24[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   31[COMRAM] float 
;;  sign            1   35[COMRAM] unsigned char 
;;  exp             1   34[COMRAM] unsigned char 
;;  cntr            1   30[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   21[COMRAM] float 
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_update_pwm
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftdiv.c"
	line	54
global __ptext6
__ptext6:
psect	text6
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftdiv.c"
	line	54
	
___ftdiv:
;incstack = 0
	callstack 28
	line	63
	
l1456:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u1001
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u1001:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@exp))^00h,c
	movf	((c:___ftdiv@exp))^00h,c,w
	btfss	status,2
	goto	u1011
	goto	u1010
u1011:
	goto	l1462
u1010:
	line	64
	
l1458:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l451
	line	65
	
l1462:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f2+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u1021
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u1021:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@sign))^00h,c
	movf	((c:___ftdiv@sign))^00h,c,w
	btfss	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l1468
u1030:
	line	66
	
l1464:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l451
	line	67
	
l1468:
	movlw	low(0)
	movwf	((c:___ftdiv@f3))^00h,c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2))^00h,c

	line	68
	
l1470:
	movf	((c:___ftdiv@sign))^00h,c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp))^00h,c
	line	69
	
l1472:
	movff	0+((c:___ftdiv@f1)+02h),(c:___ftdiv@sign)
	line	70
	
l1474:
	movf	(0+((c:___ftdiv@f2)+02h))^00h,c,w
	xorwf	((c:___ftdiv@sign))^00h,c
	line	71
	
l1476:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign))^00h,c
	line	72
	
l1478:
	bsf	(0+(15/8)+(c:___ftdiv@f1))^00h,c,(15)&7
	line	73
	
l1480:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2))^00h,c

	line	74
	
l1482:
	bsf	(0+(15/8)+(c:___ftdiv@f2))^00h,c,(15)&7
	line	75
	
l1484:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2))^00h,c

	line	76
	
l1486:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr))^00h,c
	line	78
	
l1488:
	bcf	status,0
	rlcf	((c:___ftdiv@f3))^00h,c
	rlcf	((c:___ftdiv@f3+1))^00h,c
	rlcf	((c:___ftdiv@f3+2))^00h,c
	line	79
	
l1490:
		movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c,w
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c,w
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c,w
	btfss	status,0
	goto	u1041
	goto	u1040

u1041:
	goto	l454
u1040:
	line	80
	
l1492:
	movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c

	line	81
	
l1494:
	bsf	(0+(0/8)+(c:___ftdiv@f3))^00h,c,(0)&7
	line	82
	
l454:
	line	83
	bcf	status,0
	rlcf	((c:___ftdiv@f1))^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c
	rlcf	((c:___ftdiv@f1+2))^00h,c
	line	84
	
l1496:
	decfsz	((c:___ftdiv@cntr))^00h,c
	
	goto	l1488
	line	85
	
l1498:
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
	
l451:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   51[COMRAM] float 
;;  f2              3   54[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   62[COMRAM] unsigned char 
;;  exp2            1   61[COMRAM] unsigned char 
;;  sign            1   60[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   51[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_update_pwm
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftadd.c"
	line	86
global __ptext7
__ptext7:
psect	text7
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/ftadd.c"
	line	86
	
___ftadd:
;incstack = 0
	callstack 28
	line	90
	
l1386:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)^00h,c
	clrf	(??___ftadd+0+0+2)^00h,c
	rlcf	((c:___ftadd@f1+1))^00h,c,w
	rlcf	(??___ftadd+0+0)^00h,c
	bnc	u791
	bsf	(??___ftadd+0+0+1)^00h,c,0
u791:
	movf	(??___ftadd+0+0)^00h,c,w
	movwf	((c:___ftadd@exp1))^00h,c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)^00h,c
	clrf	(??___ftadd+0+0+2)^00h,c
	rlcf	((c:___ftadd@f2+1))^00h,c,w
	rlcf	(??___ftadd+0+0)^00h,c
	bnc	u801
	bsf	(??___ftadd+0+0+1)^00h,c,0
u801:
	movf	(??___ftadd+0+0)^00h,c,w
	movwf	((c:___ftadd@exp2))^00h,c
	line	92
	
l1388:
	movf	((c:___ftadd@exp1))^00h,c,w
	btfsc	status,2
	goto	u811
	goto	u810
u811:
	goto	l419
u810:
	
l1390:
		movf	((c:___ftadd@exp2))^00h,c,w
	subwf	((c:___ftadd@exp1))^00h,c,w
	btfsc	status,0
	goto	u821
	goto	u820

u821:
	goto	l1394
u820:
	
l1392:
	movf	((c:___ftadd@exp1))^00h,c,w
	subwf	((c:___ftadd@exp2))^00h,c,w
	movwf	(??___ftadd+0+0)^00h,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0))^00h,c
	goto	u831
	goto	u830

u831:
	goto	l1394
u830:
	
l419:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l420
	line	94
	
l1394:
	movf	((c:___ftadd@exp2))^00h,c,w
	btfsc	status,2
	goto	u841
	goto	u840
u841:
	goto	l423
u840:
	
l1396:
		movf	((c:___ftadd@exp1))^00h,c,w
	subwf	((c:___ftadd@exp2))^00h,c,w
	btfsc	status,0
	goto	u851
	goto	u850

u851:
	goto	l1400
u850:
	
l1398:
	movf	((c:___ftadd@exp2))^00h,c,w
	subwf	((c:___ftadd@exp1))^00h,c,w
	movwf	(??___ftadd+0+0)^00h,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0))^00h,c
	goto	u861
	goto	u860

u861:
	goto	l1400
u860:
	
l423:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l420
	line	96
	
l1400:
	movlw	low(06h)
	movwf	((c:___ftadd@sign))^00h,c
	line	97
	
l1402:
	
	btfss	((c:___ftadd@f1+2))^00h,c,(23)&7
	goto	u871
	goto	u870
u871:
	goto	l1406
u870:
	line	98
	
l1404:
	bsf	(0+(7/8)+(c:___ftadd@sign))^00h,c,(7)&7
	line	99
	
l1406:
	
	btfss	((c:___ftadd@f2+2))^00h,c,(23)&7
	goto	u881
	goto	u880
u881:
	goto	l425
u880:
	line	100
	
l1408:
	bsf	(0+(6/8)+(c:___ftadd@sign))^00h,c,(6)&7
	
l425:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1))^00h,c,(15)&7
	line	102
	
l1410:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2))^00h,c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2))^00h,c,(15)&7
	line	104
	
l1412:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2))^00h,c

	line	106
	
l1414:
		movf	((c:___ftadd@exp2))^00h,c,w
	subwf	((c:___ftadd@exp1))^00h,c,w
	btfsc	status,0
	goto	u891
	goto	u890

u891:
	goto	l1426
u890:
	line	110
	
l1416:
	bcf	status,0
	rlcf	((c:___ftadd@f2))^00h,c
	rlcf	((c:___ftadd@f2+1))^00h,c
	rlcf	((c:___ftadd@f2+2))^00h,c
	line	111
	decf	((c:___ftadd@exp2))^00h,c
	line	112
	
l1418:
	movf	((c:___ftadd@exp1))^00h,c,w
xorwf	((c:___ftadd@exp2))^00h,c,w
	btfsc	status,2
	goto	u901
	goto	u900

u901:
	goto	l1424
u900:
	
l1420:
	decf	((c:___ftadd@sign))^00h,c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0)^00h,c
	btfss	status,2
	goto	u911
	goto	u910
u911:
	goto	l1416
u910:
	goto	l1424
	line	114
	
l1422:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2))^00h,c
	rrcf	((c:___ftadd@f1+1))^00h,c
	rrcf	((c:___ftadd@f1))^00h,c
	line	115
	incf	((c:___ftadd@exp1))^00h,c
	line	113
	
l1424:
	movf	((c:___ftadd@exp2))^00h,c,w
xorwf	((c:___ftadd@exp1))^00h,c,w
	btfss	status,2
	goto	u921
	goto	u920

u921:
	goto	l1422
u920:
	goto	l434
	line	117
	
l1426:
		movf	((c:___ftadd@exp1))^00h,c,w
	subwf	((c:___ftadd@exp2))^00h,c,w
	btfsc	status,0
	goto	u931
	goto	u930

u931:
	goto	l434
u930:
	line	121
	
l1428:
	bcf	status,0
	rlcf	((c:___ftadd@f1))^00h,c
	rlcf	((c:___ftadd@f1+1))^00h,c
	rlcf	((c:___ftadd@f1+2))^00h,c
	line	122
	decf	((c:___ftadd@exp1))^00h,c
	line	123
	
l1430:
	movf	((c:___ftadd@exp1))^00h,c,w
xorwf	((c:___ftadd@exp2))^00h,c,w
	btfsc	status,2
	goto	u941
	goto	u940

u941:
	goto	l1436
u940:
	
l1432:
	decf	((c:___ftadd@sign))^00h,c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0)^00h,c
	btfss	status,2
	goto	u951
	goto	u950
u951:
	goto	l1428
u950:
	goto	l1436
	line	125
	
l1434:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2))^00h,c
	rrcf	((c:___ftadd@f2+1))^00h,c
	rrcf	((c:___ftadd@f2))^00h,c
	line	126
	incf	((c:___ftadd@exp2))^00h,c
	line	124
	
l1436:
	movf	((c:___ftadd@exp2))^00h,c,w
xorwf	((c:___ftadd@exp1))^00h,c,w
	btfss	status,2
	goto	u961
	goto	u960

u961:
	goto	l1434
u960:
	line	129
	
l434:
	
	btfss	((c:___ftadd@sign))^00h,c,(7)&7
	goto	u971
	goto	u970
u971:
	goto	l443
u970:
	line	131
	
l1438:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f1))^00h,c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f1+1))^00h,c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f1+2))^00h,c

	line	132
	movlw	low(01h)
	addwf	((c:___ftadd@f1))^00h,c
	movlw	high(01h)
	addwfc	((c:___ftadd@f1+1))^00h,c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f1+2))^00h,c

	line	133
	
l443:
	line	134
	
	btfss	((c:___ftadd@sign))^00h,c,(6)&7
	goto	u981
	goto	u980
u981:
	goto	l1442
u980:
	line	136
	
l1440:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2))^00h,c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1))^00h,c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2))^00h,c

	line	137
	movlw	low(01h)
	addwf	((c:___ftadd@f2))^00h,c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1))^00h,c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2))^00h,c

	line	139
	
l1442:
	movlw	low(0)
	movwf	((c:___ftadd@sign))^00h,c
	line	140
	
l1444:
	movf	((c:___ftadd@f1))^00h,c,w
	addwf	((c:___ftadd@f2))^00h,c
	movf	((c:___ftadd@f1+1))^00h,c,w
	addwfc	((c:___ftadd@f2+1))^00h,c
	movf	((c:___ftadd@f1+2))^00h,c,w
	addwfc	((c:___ftadd@f2+2))^00h,c

	line	141
	
l1446:
	
	btfss	((c:___ftadd@f2+2))^00h,c,(23)&7
	goto	u991
	goto	u990
u991:
	goto	l1452
u990:
	line	142
	
l1448:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2))^00h,c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1))^00h,c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2))^00h,c

	line	143
	movlw	low(01h)
	addwf	((c:___ftadd@f2))^00h,c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1))^00h,c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2))^00h,c

	line	144
	
l1450:
	movlw	low(01h)
	movwf	((c:___ftadd@sign))^00h,c
	line	146
	
l1452:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	line	148
	
l420:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/float.c"
	line	62
global __ptext8
__ptext8:
psect	text8
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/float.c"
	line	62
	
___ftpack:
;incstack = 0
	callstack 28
	line	64
	
l1304:
	movf	((c:___ftpack@exp))^00h,c,w
	btfsc	status,2
	goto	u661
	goto	u660
u661:
	goto	l1308
u660:
	
l1306:
	movf	((c:___ftpack@arg))^00h,c,w
iorwf	((c:___ftpack@arg+1))^00h,c,w
iorwf	((c:___ftpack@arg+2))^00h,c,w
	btfss	status,2
	goto	u671
	goto	u670

u671:
	goto	l1314
u670:
	line	65
	
l1308:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2))^00h,c

	goto	l385
	line	67
	
l1312:
	incf	((c:___ftpack@exp))^00h,c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	66
	
l1314:
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
	goto	u681
	goto	u680

u681:
	goto	l1312
u680:
	goto	l1320
	line	71
	
l1316:
	incf	((c:___ftpack@exp))^00h,c
	line	72
	
l1318:
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
	
l1320:
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
	goto	u691
	goto	u690

u691:
	goto	l1316
u690:
	goto	l1324
	line	76
	
l1322:
	decf	((c:___ftpack@exp))^00h,c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg))^00h,c
	rlcf	((c:___ftpack@arg+1))^00h,c
	rlcf	((c:___ftpack@arg+2))^00h,c
	line	75
	
l1324:
	
	btfsc	((c:___ftpack@arg+1))^00h,c,(15)&7
	goto	u701
	goto	u700
u701:
	goto	l396
u700:
	
l1326:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp))^00h,c
	goto	u711
	goto	u710

u711:
	goto	l1322
u710:
	
l396:
	line	79
	
	btfsc	((c:___ftpack@exp))^00h,c,(0)&7
	goto	u721
	goto	u720
u721:
	goto	l1330
u720:
	line	80
	
l1328:
	bcf	(0+(15/8)+(c:___ftpack@arg))^00h,c,(15)&7
	line	81
	
l1330:
	bcf status,0
	rrcf	((c:___ftpack@exp))^00h,c

	line	82
	movf	((c:___ftpack@exp))^00h,c,w
	iorwf	((c:___ftpack@arg+2))^00h,c

	line	83
	
l1332:
	movf	((c:___ftpack@sign))^00h,c,w
	btfsc	status,2
	goto	u731
	goto	u730
u731:
	goto	l1336
u730:
	line	84
	
l1334:
	bsf	(0+(23/8)+(c:___ftpack@arg))^00h,c,(23)&7
	line	85
	
l1336:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	line	86
	
l385:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_setup

;; *************** function _setup *****************
;; Defined at:
;;		line 70 in file "main.c"
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
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_ADC_init
;;		_init_lcd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	70
global __ptext9
__ptext9:
psect	text9
	file	"main.c"
	line	70
	
_setup:
;incstack = 0
	callstack 27
	line	71
	
l1622:
	movlw	low(0Dh)
	movwf	((c:4033))^0f00h,c	;volatile
	line	74
	
l1624:
	call	_init_lcd	;wreg free
	line	75
	
l1626:
	asmopt push
asmopt off
movlw	65
movwf	(??_setup+0+0)^00h,c
	movlw	238
u1327:
decfsz	wreg,f
	bra	u1327
	decfsz	(??_setup+0+0)^00h,c,f
	bra	u1327
	nop2
asmopt pop

	line	78
	
l1628:
	bcf	(0+(2/8)+(c:3988))^0f00h,c,(2)&7	;volatile
	line	79
	
l1630:
	movff	(c:_dutyCycleValue),??_setup+0+0
	movlw	03h
	andwf	(??_setup+0+0)^00h,c
	swapf	(??_setup+0+0)^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((c:4029))^0f00h,c	;volatile
	line	80
	
l1632:
	movlw	(0Fh)&0ffh
	iorwf	((c:4029))^0f00h,c	;volatile
	line	81
	
l1634:
	movff	(c:_dutyCycleValue),??_setup+0+0
	movff	(c:_dutyCycleValue+1),??_setup+0+0+1
	bcf	status,0
	rrcf	(??_setup+0+1)^00h,c
	rrcf	(??_setup+0+0)^00h,c
	bcf	status,0
	rrcf	(??_setup+0+1)^00h,c
	rrcf	(??_setup+0+0)^00h,c
	movf	(??_setup+0+0)^00h,c,w
	movwf	((c:4030))^0f00h,c	;volatile
	line	83
	
l1636:
	movlw	low(07h)
	movwf	((c:4042))^0f00h,c	;volatile
	line	84
	
l1638:
	movlw	low(09Bh)
	movwf	((c:4043))^0f00h,c	;volatile
	line	87
	
l1640:
	movlw	(03h)&0ffh
	iorwf	((c:3986))^0f00h,c	;volatile
	line	88
	
l1642:
	call	_ADC_init	;wreg free
	line	90
	
l54:
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_lcd_send_cmd
;; This function is called by:
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"Libs/LCD/lcd.c"
	line	33
global __ptext10
__ptext10:
psect	text10
	file	"Libs/LCD/lcd.c"
	line	33
	
_init_lcd:
;incstack = 0
	callstack 27
	line	34
	
l1340:
	movlw	low(0)
	movwf	((c:3989))^0f00h,c	;volatile
	line	35
	
l1342:
	movlw	(0F8h)&0ffh
	andwf	((c:3990))^0f00h,c	;volatile
	line	37
	
l1344:
	movlw	low(0)
	movwf	((c:3980))^0f00h,c	;volatile
	line	38
	movlw	(0F8h)&0ffh
	andwf	((c:3981))^0f00h,c	;volatile
	line	40
	
l1346:
	asmopt push
asmopt off
movlw	65
movwf	(??_init_lcd+0+0)^00h,c
	movlw	238
u1337:
decfsz	wreg,f
	bra	u1337
	decfsz	(??_init_lcd+0+0)^00h,c,f
	bra	u1337
	nop2
asmopt pop

	line	42
	
l1348:
	movlw	high(038h)
	movwf	((c:lcd_send_cmd@cmd+1))^00h,c
	movlw	low(038h)
	movwf	((c:lcd_send_cmd@cmd))^00h,c
	call	_lcd_send_cmd	;wreg free
	line	43
	
l1350:
	movlw	high(0Ch)
	movwf	((c:lcd_send_cmd@cmd+1))^00h,c
	movlw	low(0Ch)
	movwf	((c:lcd_send_cmd@cmd))^00h,c
	call	_lcd_send_cmd	;wreg free
	line	47
	
l110:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_lcd
	__end_of_init_lcd:
	signat	_init_lcd,89
	global	_ADC_init

;; *************** function _ADC_init *****************
;; Defined at:
;;		line 22 in file "Libs/ADC/adc.c"
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
;;		_setup
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"Libs/ADC/adc.c"
	line	22
global __ptext11
__ptext11:
psect	text11
	file	"Libs/ADC/adc.c"
	line	22
	
_ADC_init:
;incstack = 0
	callstack 29
	line	23
	
l1352:
	bsf	((c:4034))^0f00h,c,0	;volatile
	line	24
	bcf	((c:4033))^0f00h,c,4	;volatile
	line	25
	bcf	((c:4033))^0f00h,c,5	;volatile
	line	26
	bsf	((c:4032))^0f00h,c,7	;volatile
	line	30
	
l74:
	return	;funcret
	callstack 0
GLOBAL	__end_of_ADC_init
	__end_of_ADC_init:
	signat	_ADC_init,89
	global	_lcd_write

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 21 in file "Libs/LCD/lcd.c"
;; Parameters:    Size  Location     Type
;;  row             2    3[COMRAM] int 
;;  line            2    5[COMRAM] int 
;;  txt             2    7[COMRAM] PTR const unsigned char 
;;		 -> STR_4(2), STR_3(5), STR_2(4), STR_1(8), 
;;		 -> frequencyADCTxt(4), dutyCycleADCTxt(5), 
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_enable_pulse
;;		_lcd_send_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"Libs/LCD/lcd.c"
	line	21
global __ptext12
__ptext12:
psect	text12
	file	"Libs/LCD/lcd.c"
	line	21
	
_lcd_write:
;incstack = 0
	callstack 28
	line	22
	
l1674:
	movff	(c:lcd_write@line),??_lcd_write+0+0
	movff	(c:lcd_write@line+1),??_lcd_write+0+0+1
	movlw	06h
u1255:
	bcf	status,0
	rlcf	(??_lcd_write+0+0)^00h,c
	rlcf	(??_lcd_write+0+1)^00h,c
	decfsz	wreg
	goto	u1255
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
	
l1676:
	bsf	(0+(0/8)+(c:3981))^0f00h,c,(0)&7	;volatile
	line	25
	
l1678:
	movlw	high(0)
	movwf	((c:lcd_write@index+1))^00h,c
	movlw	low(0)
	movwf	((c:lcd_write@index))^00h,c
	goto	l1686
	line	26
	
l1680:
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
	bra	u1267
	tblrd	*
	
	movf	tablat,w
	bra	u1260
u1267:
	movff	tblptrl,fsr2l
	movff	tblptrh,fsr2h
	movf	indf2,w
u1260:
	movwf	((c:3980))^0f00h,c	;volatile
	line	27
	
l1682:
	call	_enable_pulse	;wreg free
	line	25
	
l1684:
	infsnz	((c:lcd_write@index))^00h,c
	incf	((c:lcd_write@index+1))^00h,c
	
l1686:
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
	bra	u1277
	tblrd	*
	
	movf	tablat,w
	bra	u1270
u1277:
	movff	tblptrl,fsr2l
	movff	tblptrh,fsr2h
	movf	indf2,w
u1270:
	iorlw	0
	btfss	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l1680
u1280:
	line	31
	
l107:
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
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_enable_pulse
;; This function is called by:
;;		_lcd_write
;;		_init_lcd
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	line	15
global __ptext13
__ptext13:
psect	text13
	file	"Libs/LCD/lcd.c"
	line	15
	
_lcd_send_cmd:
;incstack = 0
	callstack 27
	line	16
	
l1298:
	bcf	(0+(0/8)+(c:3981))^0f00h,c,(0)&7	;volatile
	line	17
	
l1300:
	movff	(c:lcd_send_cmd@cmd),(c:3980)	;volatile
	line	18
	
l1302:
	call	_enable_pulse	;wreg free
	line	19
	
l101:
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_send_cmd
;;		_lcd_write
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	line	8
global __ptext14
__ptext14:
psect	text14
	file	"Libs/LCD/lcd.c"
	line	8
	
_enable_pulse:
;incstack = 0
	callstack 27
	line	9
	
l1292:
	bcf	(0+(2/8)+(c:3981))^0f00h,c,(2)&7	;volatile
	line	10
	
l1294:
	asmopt push
asmopt off
movlw	33
movwf	(??_enable_pulse+0+0)^00h,c
	movlw	118
u1347:
decfsz	wreg,f
	bra	u1347
	decfsz	(??_enable_pulse+0+0)^00h,c,f
	bra	u1347
	nop2
asmopt pop

	line	11
	
l1296:
	bsf	(0+(2/8)+(c:3981))^0f00h,c,(2)&7	;volatile
	line	12
	asmopt push
asmopt off
movlw	33
movwf	(??_enable_pulse+0+0)^00h,c
	movlw	118
u1357:
decfsz	wreg,f
	bra	u1357
	decfsz	(??_enable_pulse+0+0)^00h,c,f
	bra	u1357
	nop2
asmopt pop

	line	13
	
l98:
	return	;funcret
	callstack 0
GLOBAL	__end_of_enable_pulse
	__end_of_enable_pulse:
	signat	_enable_pulse,89
	global	_IntToStr

;; *************** function _IntToStr *****************
;; Defined at:
;;		line 1 in file "Libs/Conversions/conversions.c"
;; Parameters:    Size  Location     Type
;;  FromInt         4   13[COMRAM] unsigned long 
;;  ToStr           1   17[COMRAM] PTR unsigned char 
;;		 -> frequencyADCTxt(4), dutyCycleADCTxt(5), 
;;  from            2   18[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  num             4   20[COMRAM] unsigned long 
;;  index           2   24[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         7       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___lldiv
;;		___llmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	"Libs/Conversions/conversions.c"
	line	1
global __ptext15
__ptext15:
psect	text15
	file	"Libs/Conversions/conversions.c"
	line	1
	
_IntToStr:
;incstack = 0
	callstack 29
	line	2
	
l1660:
	movff	(c:IntToStr@from),(c:IntToStr@index)
	movff	(c:IntToStr@from+1),(c:IntToStr@index+1)
	line	3
	movff	(c:IntToStr@FromInt),(c:IntToStr@num)
	movff	(c:IntToStr@FromInt+1),(c:IntToStr@num+1)
	movff	(c:IntToStr@FromInt+2),(c:IntToStr@num+2)
	movff	(c:IntToStr@FromInt+3),(c:IntToStr@num+3)
	line	5
	movff	(c:IntToStr@from),(c:IntToStr@index)
	movff	(c:IntToStr@from+1),(c:IntToStr@index+1)
	
l1662:
	btfsc	((c:IntToStr@index+1))^00h,c,7
	goto	u1240
	goto	u1241

u1241:
	goto	l1666
u1240:
	goto	l85
	line	6
	
l1666:
	movf	((c:IntToStr@ToStr))^00h,c,w
	addwf	((c:IntToStr@index))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:IntToStr@num),(c:___llmod@dividend)
	movff	(c:IntToStr@num+1),(c:___llmod@dividend+1)
	movff	(c:IntToStr@num+2),(c:___llmod@dividend+2)
	movff	(c:IntToStr@num+3),(c:___llmod@dividend+3)
	movlw	low(0Ah)
	movwf	((c:___llmod@divisor))^00h,c
	movlw	high(0Ah)
	movwf	((c:___llmod@divisor+1))^00h,c
	movlw	low highword(0Ah)
	movwf	((c:___llmod@divisor+2))^00h,c
	movlw	high highword(0Ah)
	movwf	((c:___llmod@divisor+3))^00h,c
	call	___llmod	;wreg free
	movf	(0+?___llmod)^00h,c,w
	addlw	low(030h)
	movwf	indf2,c

	line	7
	
l1668:
	movff	(c:IntToStr@num),(c:___lldiv@dividend)
	movff	(c:IntToStr@num+1),(c:___lldiv@dividend+1)
	movff	(c:IntToStr@num+2),(c:___lldiv@dividend+2)
	movff	(c:IntToStr@num+3),(c:___lldiv@dividend+3)
	movlw	low(0Ah)
	movwf	((c:___lldiv@divisor))^00h,c
	movlw	high(0Ah)
	movwf	((c:___lldiv@divisor+1))^00h,c
	movlw	low highword(0Ah)
	movwf	((c:___lldiv@divisor+2))^00h,c
	movlw	high highword(0Ah)
	movwf	((c:___lldiv@divisor+3))^00h,c
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(c:IntToStr@num)
	movff	1+?___lldiv,(c:IntToStr@num+1)
	movff	2+?___lldiv,(c:IntToStr@num+2)
	movff	3+?___lldiv,(c:IntToStr@num+3)
	
	line	5
	
l1670:
	decf	((c:IntToStr@index))^00h,c
	btfss	status,0
	decf	((c:IntToStr@index+1))^00h,c
	goto	l1662
	line	10
	
l85:
	return	;funcret
	callstack 0
GLOBAL	__end_of_IntToStr
	__end_of_IntToStr:
	signat	_IntToStr,12409
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/llmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4    0[COMRAM] unsigned long 
;;  divisor         4    4[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IntToStr
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/llmod.c"
	line	7
global __ptext16
__ptext16:
psect	text16
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/llmod.c"
	line	7
	
___llmod:
;incstack = 0
	callstack 29
	line	12
	
l1596:
	movf	((c:___llmod@divisor))^00h,c,w
iorwf	((c:___llmod@divisor+1))^00h,c,w
iorwf	((c:___llmod@divisor+2))^00h,c,w
iorwf	((c:___llmod@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u1191
	goto	u1190

u1191:
	goto	l521
u1190:
	line	13
	
l1598:
	movlw	low(01h)
	movwf	((c:___llmod@counter))^00h,c
	line	14
	goto	l1602
	line	15
	
l1600:
	bcf	status,0
	rlcf	((c:___llmod@divisor))^00h,c
	rlcf	((c:___llmod@divisor+1))^00h,c
	rlcf	((c:___llmod@divisor+2))^00h,c
	rlcf	((c:___llmod@divisor+3))^00h,c
	line	16
	incf	((c:___llmod@counter))^00h,c
	line	14
	
l1602:
	
	btfss	((c:___llmod@divisor+3))^00h,c,(31)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l1600
u1200:
	line	19
	
l1604:
		movf	((c:___llmod@divisor))^00h,c,w
	subwf	((c:___llmod@dividend))^00h,c,w
	movf	((c:___llmod@divisor+1))^00h,c,w
	subwfb	((c:___llmod@dividend+1))^00h,c,w
	movf	((c:___llmod@divisor+2))^00h,c,w
	subwfb	((c:___llmod@dividend+2))^00h,c,w
	movf	((c:___llmod@divisor+3))^00h,c,w
	subwfb	((c:___llmod@dividend+3))^00h,c,w
	btfss	status,0
	goto	u1211
	goto	u1210

u1211:
	goto	l1608
u1210:
	line	20
	
l1606:
	movf	((c:___llmod@divisor))^00h,c,w
	subwf	((c:___llmod@dividend))^00h,c
	movf	((c:___llmod@divisor+1))^00h,c,w
	subwfb	((c:___llmod@dividend+1))^00h,c
	movf	((c:___llmod@divisor+2))^00h,c,w
	subwfb	((c:___llmod@dividend+2))^00h,c
	movf	((c:___llmod@divisor+3))^00h,c,w
	subwfb	((c:___llmod@dividend+3))^00h,c
	line	21
	
l1608:
	bcf	status,0
	rrcf	((c:___llmod@divisor+3))^00h,c
	rrcf	((c:___llmod@divisor+2))^00h,c
	rrcf	((c:___llmod@divisor+1))^00h,c
	rrcf	((c:___llmod@divisor))^00h,c
	line	22
	
l1610:
	decfsz	((c:___llmod@counter))^00h,c
	
	goto	l1604
	line	23
	
l521:
	line	24
	movff	(c:___llmod@dividend),(c:?___llmod)
	movff	(c:___llmod@dividend+1),(c:?___llmod+1)
	movff	(c:___llmod@dividend+2),(c:?___llmod+2)
	movff	(c:___llmod@dividend+3),(c:?___llmod+3)
	line	25
	
l528:
	return	;funcret
	callstack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v2.45/pic/sources/c90/common/__lldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4    0[COMRAM] unsigned long 
;;  divisor         4    4[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    8[COMRAM] unsigned long 
;;  counter         1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IntToStr
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/__lldiv.c"
	line	7
global __ptext17
__ptext17:
psect	text17
	file	"/opt/microchip/xc8/v2.45/pic/sources/c90/common/__lldiv.c"
	line	7
	
___lldiv:
;incstack = 0
	callstack 29
	line	13
	
l1364:
	movlw	low(0)
	movwf	((c:___lldiv@quotient))^00h,c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3))^00h,c
	line	14
	
l1366:
	movf	((c:___lldiv@divisor))^00h,c,w
iorwf	((c:___lldiv@divisor+1))^00h,c,w
iorwf	((c:___lldiv@divisor+2))^00h,c,w
iorwf	((c:___lldiv@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u761
	goto	u760

u761:
	goto	l140
u760:
	line	15
	
l1368:
	movlw	low(01h)
	movwf	((c:___lldiv@counter))^00h,c
	line	16
	goto	l1372
	line	17
	
l1370:
	bcf	status,0
	rlcf	((c:___lldiv@divisor))^00h,c
	rlcf	((c:___lldiv@divisor+1))^00h,c
	rlcf	((c:___lldiv@divisor+2))^00h,c
	rlcf	((c:___lldiv@divisor+3))^00h,c
	line	18
	incf	((c:___lldiv@counter))^00h,c
	line	16
	
l1372:
	
	btfss	((c:___lldiv@divisor+3))^00h,c,(31)&7
	goto	u771
	goto	u770
u771:
	goto	l1370
u770:
	line	21
	
l1374:
	bcf	status,0
	rlcf	((c:___lldiv@quotient))^00h,c
	rlcf	((c:___lldiv@quotient+1))^00h,c
	rlcf	((c:___lldiv@quotient+2))^00h,c
	rlcf	((c:___lldiv@quotient+3))^00h,c
	line	22
	
l1376:
		movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c,w
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c,w
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c,w
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c,w
	btfss	status,0
	goto	u781
	goto	u780

u781:
	goto	l1382
u780:
	line	23
	
l1378:
	movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c
	line	24
	
l1380:
	bsf	(0+(0/8)+(c:___lldiv@quotient))^00h,c,(0)&7
	line	26
	
l1382:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3))^00h,c
	rrcf	((c:___lldiv@divisor+2))^00h,c
	rrcf	((c:___lldiv@divisor+1))^00h,c
	rrcf	((c:___lldiv@divisor))^00h,c
	line	27
	
l1384:
	decfsz	((c:___lldiv@counter))^00h,c
	
	goto	l1374
	line	28
	
l140:
	line	29
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	30
	
l147:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_ADC_read

;; *************** function _ADC_read *****************
;; Defined at:
;;		line 32 in file "Libs/ADC/adc.c"
;; Parameters:    Size  Location     Type
;;  channel         2    0[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  value           2    4[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"Libs/ADC/adc.c"
	line	32
global __ptext18
__ptext18:
psect	text18
	file	"Libs/ADC/adc.c"
	line	32
	
_ADC_read:
;incstack = 0
	callstack 30
	line	33
	
l1644:
	movf	((c:ADC_read@channel))^00h,c,w
	mullw	04h
	movf	(prodl)^0f00h,c,w
	addlw	low(_channels)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_ADC_read+0+0)^00h,c
	swapf	((??_ADC_read+0+0))^00h,c
	rlncf	((??_ADC_read+0+0))^00h,c
	movf	((c:4034))^0f00h,c,w	;volatile
	xorwf	((??_ADC_read+0+0))^00h,c,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	((??_ADC_read+0+0))^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	34
	movf	((c:ADC_read@channel))^00h,c,w
	mullw	04h
	movf	(prodl)^0f00h,c,w
	addlw	low(_channels+01h)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_ADC_read+0+0)^00h,c
	swapf	((??_ADC_read+0+0))^00h,c
	movf	((c:4034))^0f00h,c,w	;volatile
	xorwf	((??_ADC_read+0+0))^00h,c,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	((??_ADC_read+0+0))^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	35
	movf	((c:ADC_read@channel))^00h,c,w
	mullw	04h
	movf	(prodl)^0f00h,c,w
	addlw	low(_channels+02h)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_ADC_read+0+0)^00h,c
	rlncf	((??_ADC_read+0+0))^00h,c
	rlncf	((??_ADC_read+0+0))^00h,c
	rlncf	((??_ADC_read+0+0))^00h,c
	movf	((c:4034))^0f00h,c,w	;volatile
	xorwf	((??_ADC_read+0+0))^00h,c,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	((??_ADC_read+0+0))^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	36
	movf	((c:ADC_read@channel))^00h,c,w
	mullw	04h
	movf	(prodl)^0f00h,c,w
	addlw	low(_channels+03h)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_ADC_read+0+0)^00h,c
	rlncf	((??_ADC_read+0+0))^00h,c
	rlncf	((??_ADC_read+0+0))^00h,c
	movf	((c:4034))^0f00h,c,w	;volatile
	xorwf	((??_ADC_read+0+0))^00h,c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	((??_ADC_read+0+0))^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	38
	
l1646:
	bsf	((c:4034))^0f00h,c,1	;volatile
	line	40
	
l1648:
	line	42
	
l1652:
	btfss	((c:4034))^0f00h,c,1	;volatile
	goto	u1231
	goto	u1230
u1231:
	goto	l1648
u1230:
	line	46
	
l1654:
	movf	((c:4035))^0f00h,c,w	;volatile
	movff	(c:4036),??_ADC_read+0+0	;volatile
	clrf	(??_ADC_read+0+0+1)^00h,c
	movff	??_ADC_read+0+0,??_ADC_read+0+1
	clrf	(??_ADC_read+0+0)^00h,c
	iorwf	(??_ADC_read+0+0)^00h,c,w
	movwf	((c:ADC_read@value))^00h,c
	movf	(??_ADC_read+0+1)^00h,c,w
	movwf	1+((c:ADC_read@value))^00h,c
	line	47
	
l1656:
	movff	(c:ADC_read@value),(c:?_ADC_read)
	movff	(c:ADC_read@value+1),(c:?_ADC_read+1)
	line	51
	
l80:
	return	;funcret
	callstack 0
GLOBAL	__end_of_ADC_read
	__end_of_ADC_read:
	signat	_ADC_read,4218
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
	end
