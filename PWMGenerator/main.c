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
#include "Libs/ADC/adc.h"

//function prototypes
void setup();
void update_pwm();

//global variables
unsigned int dutyCycleValue = 312; //50% at 2Khz
unsigned int frequencyValue = 155; //2Khz
unsigned long frequencyADC   = 0;
unsigned long dutyCycleADC   = 0;

char frequencyADCTxt[4];
char dutyCycleADCTxt[5];

void main(){
    setup();

    for(;;){ //main loop
        dutyCycleADC = ADC_read(AN0);
        //normalize 0 - 100
        dutyCycleADC = (float)(dutyCycleADC/1023.0) * 100.0;
        IntToStr(dutyCycleADC,dutyCycleADCTxt,2);

        frequencyADC = ADC_read(AN1);
        //normalize 2000 - 100.000
        frequencyADC = (float) ((frequencyADC * 95.89 + 2000.00)/1000.0);
        IntToStr(frequencyADC,frequencyADCTxt,2);

        lcd_write(1,1,"Freq.: ");
        lcd_write(8,1,frequencyADCTxt);
        lcd_write(1,15,"KHz");

        lcd_write(1,2,"DC: ");
        lcd_write(8,2,"%");
        lcd_write(5,2,dutyCycleADCTxt);


        update_pwm();
        __delay_ms(50);
    }

}

void setup(){
    ADCON1 = 0x0D;

    //lcd
    init_lcd();
    __delay_ms(10);
    
    //pwm - ccp
    TRISC &= 0xFB;
    CCP1CON |= (dutyCycleValue & 3) << 4;  //2 lsb of duty cycle go here
    CCP1CON |= 0x0F;                       //ccp module on pwm mode
    CCPR1L  = (dutyCycleValue >> 2);       //8 msb of duty cycle go here
    //timer 2 - ccp
    T2CON = 0b00000111; //timer on with prescale of 16
    PR2   = frequencyValue; 

    //adc
    TRISA |= 0x03; 
    ADC_init();

}

void update_pwm(){
    int tempdc  = (float)(((1.00/(frequencyADC*1000)) * dutyCycleADC/100) * _XTAL_FREQ)/16;
    int tempPR2 =  (float) _XTAL_FREQ/4 * 1/((frequencyADC*1000) * 16) -1;

    if (tempdc != dutyCycleValue){ //update dutycycle
        dutyCycleValue = tempdc;
        CCP1CON |= (dutyCycleValue & 3) << 4;  //2 lsb of duty cycle go here
        CCPR1L  = (dutyCycleValue >> 2);       //8 msb of duty cycle go here
    }

    if (tempPR2 != PR2){
        T2CONbits.TMR2ON = 0;
        PR2 = tempPR2;
        T2CONbits.TMR2ON = 1;
    }

}