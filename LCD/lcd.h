#ifndef LCD_H
#define LCD_H

#define _XTAL_FREQ 20000000 //20Mhz
#define cmd_init_16_2_8  0x38
#define cmd_display_on   0x0C
#define cmd_cursor_on    0x0E
#define cmd_cursor_blink 0x0F
#define cmd_cursor_home  0x02


void enable_pulse();
void lcd_send_cmd(int cmd);
void lcd_write(int row, int line, const char txt[]);
void init_lcd();

#endif

