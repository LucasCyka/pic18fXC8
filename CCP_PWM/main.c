// CONFIG1L
#pragma config PLLDIV = 5      // PLL Prescaler Selection (Divide by 5 (20 MHz input))
#pragma config CPUDIV = OSC1_PLL2 // System Clock Postscaler (OSC1/OSC2 Src: /1, 96 MHz PLL Src: /2)
#pragma config USBDIV = 2       // USB Clock Selection (from PLL divided by 2)

// CONFIG1H
#pragma config FOSC = HS        // Oscillator Selection (HS oscillator)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Disable
#pragma config IESO = OFF       // Internal/External Oscillator Switchover Disabled

// CONFIG2L
#pragma config PWRT = OFF       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOR = ON         // Brown-out Reset Enable (enabled)
#pragma config BORV = 3         // Brown-out Reset Voltage (minimum setting)
#pragma config VREGEN = OFF     // USB Voltage Regulator Disabled (since you're not using USB)

// CONFIG2H
#pragma config WDT = OFF        // Watchdog Timer Disabled

#define _XTAL_FREQ 20000000 //20Mhz

#include <xc.h>
#include <proc/pic18f4550.h>
#include "Libs/LCD/lcd.h"
#include "Libs/Conversions/conversions.h"

unsigned int pr2val  =  155; //2Khz
unsigned int dc      =  312; //50%

void setup();

int main(){

    setup();
    
    for(;;){

        __delay_ms(10);
        dc++;
        if(dc >= 400){
            dc = 312;

        }
        CCPR1L  = dc >> 2; //8 msb here
        CCP1CON |= (dc & 0b11) << 4; //2 lsb here

    }

}

void setup(){

    ADCON1 = 0x0F;

    //TIMER2 config -prescale 16 and tmron
    T2CON |= 0x07;
    TRISCbits.RC2 = 0;

    //CCP module config
    PR2     = pr2val;
    CCPR1L  = dc >> 2; //8 msb here
    CCP1CON &= 11001111; //clear lsbits
    CCP1CON |= (dc & 0b11) << 4; //2 lsb here
    CCP1CON |=  0b00001111; //pwm mode

}