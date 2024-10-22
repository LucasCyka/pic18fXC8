#ifndef LCD_H
#define LCD_H


void enable_pulse();
void lcd_send_cmd(int cmd);
void lcd_write(int row, int line, const char txt[]);
void init_lcd();

#endif

