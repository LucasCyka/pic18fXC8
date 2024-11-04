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
#include "adc.h"


void ConIntToStr(int FromInt, char *ToStr);

int Adread = 0;
char txtAdRead[4];

int main(){
    ADCON1 = 0x0E;


    init_lcd();

    __delay_ms(10);

    //lcd_write(1,1,"my lib ;)");
    lcd_send_cmd(1);

    ADC_init();

    for(;;){
        Adread = ADC_read(AN0);
        ConIntToStr(Adread,txtAdRead);

        lcd_write(1,1,txtAdRead);
        __delay_ms(100);

        lcd_send_cmd(1);


    }

    return 0;

}
    


void ConIntToStr(int FromInt, char *ToStr){
   int index = 3;
   int num = FromInt;

   for(index = 3; index > -1 ; index--){
     ToStr[index] = (char)(num % 10)+'0';
     num /= 10;
   }

}
