#include<xc.h>
#include <proc/pic18f4550.h>


#include "lcd.h"


void enable_pulse(){
    LATE &= 251;
    __delay_ms(5);
    LATE |= 4;
    __delay_ms(5);
}

void lcd_send_cmd(int cmd){
    LATE &= 254;
    LATD  = cmd;
    enable_pulse();
}

void lcd_write(int row, int line, const char txt[]){
    lcd_send_cmd((128+ (line - 1) * 64) + (row - 1)); //line x row

    LATE |= 1;
    for(int index = 0; txt[index] != 0; index++){
        LATD = txt[index];
        enable_pulse();

    }

}

void init_lcd(){
    TRISD  = 0;
    TRISE &= 248;

    LATD  = 0;
    LATE &= 248;

    __delay_ms(10);

    lcd_send_cmd(cmd_init_16_2_8);
    lcd_send_cmd(cmd_display_on);
    //lcd_send_cmd(cmd_cursor_on);
    //lcd_send_cmd(cmd_cursor_home);

}

