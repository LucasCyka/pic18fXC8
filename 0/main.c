// CONFIG1L
#pragma config PLLDIV = 1      // No prescale (4 MHz oscillator input drives PLL directly).
#pragma config CPUDIV = OSC1_PLL2 // System Clock Postscaler (OSC1/OSC2 Src: /1, 96 MHz PLL Src: /2)
#pragma config USBDIV = 2       // USB Clock Selection (from PLL divided by 2)

// CONFIG1H
#pragma config FOSC = XT_XT        // OXT oscillator (XT).
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Disable
#pragma config IESO = OFF       // Internal/External Oscillator Switchover Disabled

// CONFIG2L
#pragma config PWRT = OFF       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOR = ON         // Brown-out Reset Enable (enabled)
#pragma config BORV = 3         // Brown-out Reset Voltage (minimum setting)
#pragma config VREGEN = OFF     // USB Voltage Regulator Disabled (since you're not using USB)

// CONFIG2H
#pragma config WDT = OFF        // Watchdog Timer Disabled

#pragma config MCLRE = OFF  

#pragma config LVP   = OFF


#define _XTAL_FREQ 20000000 //20mhz

#include<xc.h>
#include <proc/pic18f4550.h>

int main(){
    ADCON1 = 0x0F;
    TRISA  = 0;
    TRISD  = 0;
    LATAbits.LATA5 = 1; //leds


    for(;;){
        LATD = 255;
        __delay_ms(500);
        LATD = 0;
        __delay_ms(500);
       
    }

}