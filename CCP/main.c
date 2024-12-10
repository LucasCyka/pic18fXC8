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

void setup();


void interrupt isr_routine(void){

}

unsigned int data               = 0;
unsigned int data2              = 0;
unsigned int fdata              = 0;
float period                    = 0;
unsigned frequency                 = 0;
int rounded_frequency           = 0;

char data_txt[5];

int main(){

    setup();

    for(;;){

        
        while(!(PIR1bits.CCP1IF));

        data = CCPR1;
        PIR1bits.CCP1IF = 0;

        while(!(PIR1bits.CCP1IF));

        data2 = CCPR1;
        fdata = data2 - data;

        //time_to_wait * (FOSC/4) = value_at_my_counter_after_time_to_wait
        //time_waited (period) = value_at_my_counter_after_time_to_wait/ (FOSC/4)
        //you can find the frequency by the inverse of the above

        frequency = (float)5000000.000/fdata;
        rounded_frequency = frequency;
        IntToStr(rounded_frequency,data_txt);

        lcd_write(1,1,data_txt);
        lcd_write(8,1,"Hz");

        __delay_ms(100);
        TMR1 = 0;
        CCPR1 = 0;
        PIR1bits.CCP1IF = 0;




    }


}

void setup(){
    ADCON0 = 0x0F;
    TRISCbits.RC2 = 1;
    init_lcd();

    //timer 1 module setup
    T1CONbits.RD16    = 1; //enables register r/w in one 16bit operation
    T1CONbits.T1CKPS0 = 0;
    T1CONbits.T1CKPS1 = 0; //prescale = 0
    T1CONbits.T1OSCEN = 0; //disable tmr 1 oscillator
    T1CONbits.TMR1CS  = 0; //uses internal clock
    T1CONbits.TMR1ON  = 1; //turn timer 1 on
    TMR1              = 0x00;
    CCPR1             = 0x00;  


    //CCP1 module setup
    CCP1CON         |= 0x05; //capture on rising edge
    PIE1bits.CCP1IE  = 1;
    PIR1bits.CCP1IF  = 0;
    T3CONbits.T3CCP2 = 0;
    T3CONbits.T3CCP1 = 0; //timer 1 for both ccp modules

    
}