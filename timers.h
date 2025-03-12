/* 
 * File:   timers.h
 * Author: hossa
 *
 * Created on March 10, 2025, 10:06 PM
 */

#ifndef TIMERS_H
#define	TIMERS_H

#define TIMER_MODE_NORMAL    0
#define TIMER_MODE_PWM       1
#define TIMER_MODE_CTC       2
#define TIMER_MODE_FPWM      3

// Another way .... 
//#define TIMER_MODE_NORMAL    0x00
//#define TIMER_MODE_PWM       0x40
//#define TIMER_MODE_CTC       0x08
//#define TIMER_MODE_FPWM      0x48


#define TIMER_CLOCK_SELECT_OFF                   0
#define TIMER_CLOCK_SELECT_PS_1                  1
#define TIMER_CLOCK_SELECT_PS_8                  2
#define TIMER_CLOCK_SELECT_PS_64                 3
#define TIMER_CLOCK_SELECT_PS_256                4
#define TIMER_CLOCK_SELECT_PS_1024               5
#define TIMER_CLOCK_SELECT_EXT_FALLING_EDGE      6
#define TIMER_CLOCK_SELECT_EXT_RISING_EDGE       7


#define CMP_MODE_CTC_TOGGLE   1
#define CMP_MODE_CTC_CLEAR    2
#define CMP_MODE_CTC_SET      3

#define CMP_MODE_PWM_CLEAR_SET  2
#define CMP_MODE_PWM_SET_CLEAR  3

/**
 * 
 * @param TIMER_MODE
 * #define TIMER_MODE_NORMAL    0
#define TIMER_MODE_PWM       1
#define TIMER_MODE_CTC       2
#define TIMER_MODE_FPWM      3
 * @param TIMER_CLOCK_SELECT
 */
void init_timer0(char TIMER_MODE, char TIMER_CLOCK_SELECT);
void Timer0_set_OCR0(char val);
void Timer0_CTC_set_CMP(char CMP_MODE);
void Timer0_PWM_set_CMP(char CMP_MODE);
#endif	/* TIMERS_H */

