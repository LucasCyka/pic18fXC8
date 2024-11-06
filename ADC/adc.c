#include <xc.h>
#include <proc/pic18f4550.h>
#include "adc.h"

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
