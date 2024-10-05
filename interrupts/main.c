// CONFIG1L
#pragma config PLLDIV = 5       // PLL Prescaler Selection (Divide by 5 (20 MHz input))
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

#define _XTAL_FREQ 20000000 //20mhz

#include<xc.h>
#include <proc/pic18f4550.h>

//*********function prototypes*********//
void init_interrupts();

//************************************//

int main(){
    ADCON1 = 0x0F; 
    TRISA &= 252;  //two ouputs
    TRISB |= 2;    //one input

    init_interrupts();

    for(;;){ //loop
        //RA0 is toggled every 2000ms
        LATA ^= 1;
        __delay_ms(2000); 
        
    }


    //return 0;
}

//initialize interrupts
void init_interrupts(){
    INTCON2bits.RBPU = 1; //disable internal pull ups for portb

    INTCON2bits.INTEDG0 = 1; //external interrupt 0 triggered on falling edge

    INTCONbits.INT0E = 1; //enables INT0 external interrupt

    INTCONbits.INT0F = 0; //clear interrupt flag

    INTCONbits.GIE = 1; //enables all global interrupts

}

void __interrupt isr_routine(void){
    if(INTCONbits.INT0F == 1){
        LATA ^= 2;
        __delay_ms(30);
        INTCONbits.INT0F = 0;
    }

}