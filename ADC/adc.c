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


#define AN0   0
#define AN1   1
#define AN2   2
#define AN3   3
#define AN4   4
#define AN5   5
#define AN6   6
#define AN7   7
#define AN8   8
#define AN9   9
#define AN10  10
#define AN11  11
#define AN12  12

unsigned char channels[13][4] = {
    {0,0,0,0},
    {0,0,0,1},
    {0,0,1,0},
    {0,0,1,1},
    {0,1,0,0},
    {0,1,0,1},
    {0,1,1,0},
    {0,1,1,1},
    {1,0,0,0},
    {1,0,0,1},
    {1,0,1,0},
    {1,0,1,1},
    {1,1,0,0}
};

int adRead = 0;
char adReadTxt[4]; 

void ADC_init(){
   ADCON0bits.ADON  = 1; 
   ADCON1bits.VCFG0 = 0; 
   ADCON1bits.VCFG1 = 0;
   ADCON2bits.ADFM  = 1;
   


}

int ADC_read(int channel){
    ADCON0bits.CHS0 = channels[channel][0];
    ADCON0bits.CHS1 = channels[channel][1];
    ADCON0bits.CHS2 = channels[channel][2];
    ADCON0bits.CHS3 = channels[channel][3];

    ADCON0bits.GO = 1;

    int value = 0;

    while(ADCON0bits.DONE == 0){
        value = 0;
    }

    value = (ADRESH << 8) | ADRESL;
    return value;



}

void ConIntToStr(int FromInt, char *ToStr){
   int index = 3;
   int num = FromInt;

   for(index = 3; index > -1 ; index--){
     ToStr[index] = (char)(num % 10)+'0';
     num /= 10;
   }

}


int main(){
    ADCON1 = 0x0E;


    init_lcd();
    ADC_init();

    __delay_ms(10);

    lcd_write(1,1,"my lib ;)");

    for(;;){

        adRead = ADC_read(AN0);
        ConIntToStr(adRead,adReadTxt);

        lcd_write(1,1,adReadTxt);

        __delay_ms(100);
        lcd_send_cmd(1);
        
    }


}

