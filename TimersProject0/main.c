/** 
 * NOTES FOR MYSELF
 * FORMULA = TIME TO WAIT/1(PERIOD OF MY CLOCK/PRESCALE) - 1
 * BUT MY CLOCK IS DIVIDED BY IN THE TIMER CIRCUIT, EVEN WITHOUT PRESCALE
 * YOU CAN DO 2^16 - RESULT OF MY FORMULA ABOVE AS A DEFAULT VALUE FOR THE TIMER COUNT
 * WHEN WORKING ON 16 BITS MODE.
 * 
*/


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

#define TIMER_VAL 53037

#include <xc.h>
#include <proc/pic18f4550.h>
#include "Libs/LCD/lcd.h"
#include "Libs/Conversions/conversions.h"

//data
long mileseconds = 0;
int seconds = 0;
char seconds_txt[4];

//function prototypes
void setup();
void init_timer();

int main(){
    setup();
    for(;;){
        seconds = mileseconds;
        IntToStr(seconds,seconds_txt);
        

        
        lcd_write(1,2,seconds_txt);

        __delay_ms(1);

    }
}

void setup(){
    ADCON1 |= 0x0F; 
    TRISA   = 0;
    LATA    = 0; 
    init_lcd();
    __delay_ms(10);
    init_timer();

}

void init_timer(){
    T0CONbits.TMR0ON = 1; //Enables timer0
    T0CONbits.T08BIT = 0; //uses timer0 in 16bit mode
    T0CONbits.T0CS   = 0; //uses internal clock for counter
    //T0CONbits.T0SE   = 0; //from low to high edge for the counter
    T0CONbits.PSA    = 1; //dont use prescale
    T0CON           |= 0; //prescale 


    //timer interrupt
    TMR0              = TIMER_VAL; //reset timer counter
    INTCONbits.GIE    = 1; //enable global interrupts
    INTCONbits.PEIE   = 1; //enable peripheral interrupts
    INTCONbits.TMR0IE = 1; //enable timer interrupt
    INTCONbits.TMR0IF = 0; //clear time flag
    
}

void interrupt isr_routine(void){

    //0,001seconds/(1/(20E6/256)) - 1
    //timer0 counter will overflow after 4 clocks at 20Mhz. Thats after 4ms
    if(INTCONbits.TMR0IF && INTCONbits.TMR0IE){
        TMR0              = TIMER_VAL;
        INTCONbits.TMR0IE = 0;
        INTCONbits.TMR0IF = 0;
        mileseconds++;
        LATA ^= 1; 
        INTCONbits.TMR0IE = 1;
    }
    

}