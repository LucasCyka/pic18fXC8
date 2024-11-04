#ifndef __ADC__H
#define __ADC__H

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
#define _XTAL_FREQ 20000000 //20Mhz


void ADC_init();
int ADC_read(int channel);

#endif