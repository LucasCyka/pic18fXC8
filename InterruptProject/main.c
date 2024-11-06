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

#define _XTAL_FREQ 20000000 //20Mhz

#include <xc.h>
#include <proc/pic18f4550.h>
#include "lcd.h"
#include "conversions.h"

void init_interrupt();

int counter = 0;
char counterTxt[4];

int main(){
    ADCON1 |= 0x0F;
    TRISBbits.RB0 = 1;
    init_interrupt();


    init_lcd();
    __delay_ms(10);
    for(;;){
        IntToStr(counter,counterTxt);
        lcd_write(1,1,counterTxt);

        if(!INTCONbits.INT0E){
            __delay_ms(30);
            if(!PORTBbits.RB0){
                INTCONbits.INT0F = 0;
                INTCONbits.INT0E = 1;
            }
        }
        __delay_ms(10);
        switch (counter)
        {
        case 0:
            lcd_write(1,2,"Pronto                      ");
            break;
        case 1:
            lcd_write(1,2,"Emergencia                     ");
            break;
        case 2:
            lcd_write(1,2,"Manutencao                     ");
            break;
        case 3:
            counter = 0;
            break;
        }
        
    }

}

void interrupt isr_routine(void){
    if(INTCONbits.INT0F){
        INTCONbits.INT0F  = 0;
        INTCONbits.INT0E  = 0;
        counter++;
    }

}

void init_interrupt(){
    INTCONbits.GIE      = 1; //enable global interrupts
    INTCONbits.INT0E    = 1; //enable int0 
    INTCONbits.INT0F    = 0; //clear int0 flag
    INTCON2bits.INTEDG0 = 1; //interrupt on rising edge
}