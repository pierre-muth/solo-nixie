/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F18346
        Driver Version    :  2.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/examples/i2c1_master_example.h"


//proto
void selectNumber(uint8_t digit);
void blinkDot(void);
void showTargetBrightness(void);
void setHV(uint16_t brightness);
void rampHV(void);
uint8_t getHour(void);
void setHour(uint8_t hour);
uint8_t getMinute(void);
void setMinute(uint8_t minute);
uint8_t getSecond(void);
void setSecond(uint8_t second);
void timer1InterruptHandler(void);



//const
const float RAMP_TIME = 330.0;
const uint16_t INTER_TIME = 360;
const uint16_t REPEAT_TIME = 1600;

//globals
uint8_t button1Flag = 0;
uint8_t button2Flag = 0;
uint8_t longbutton1Flag = 0;
uint8_t longbutton2Flag = 0;

uint16_t button1millis = 0;
uint16_t button2millis = 0;

uint16_t targetBrightness = 900;

/*
    Main application
 */

uint8_t getHour(void){
    uint8_t hour = 0;
    hour = I2C1_Read1ByteRegister(0b1101000, 0x02);
    hour = (hour&0x0F) + ((hour>>4) *10);
    return hour;
}

void setHour(uint8_t hour){
    uint8_t hourBCD = ((hour%10)&0x0F) | ((hour/10)<<4);
    I2C1_Write1ByteRegister(0b1101000, 0x02, hourBCD);
}

uint8_t getMinute(void){
    uint8_t minute = 0;
    minute = I2C1_Read1ByteRegister(0b1101000, 0x01);
    minute = (minute&0x0F) + ((minute>>4) *10);
    return minute;
}

void setMinute(uint8_t minute){
    uint8_t minuteBCD = ((minute%10)&0x0F) | ((minute/10)<<4);
    I2C1_Write1ByteRegister(0b1101000, 0x01, minuteBCD);
}

uint8_t getSecond(void){
    uint8_t second = 0;
    second = I2C1_Read1ByteRegister(0b1101000, 0x00);
    second = (second&0x0F) + ((second>>4) *10);
    return second;
}

void setSecond(uint8_t second){
    uint8_t secondBCD = ((second%10)&0x0F) | ((second/10)<<4);
    I2C1_Write1ByteRegister(0b1101000, 0x00, secondBCD);
}

void blinkDot(void){
    setHV(0);
    __delay_ms(5);
    selectNumber(10);
    __delay_ms(5);
    setHV(500);
    __delay_ms(50);
    setHV(0);
}

void showTargetBrightness(void){
    setHV(0);
    __delay_ms(10);
    selectNumber(10);
    __delay_ms(10);
    
    selectNumber(targetBrightness/100);
    setHV(targetBrightness);
    __delay_ms(300);
    setHV(0);
    __delay_ms(20);
    selectNumber(99);
    __delay_ms(50);
    
}

void timer1InterruptHandler(void) {
    if (Button1_PORT == 0 && button1Flag == 0){
        button1millis++;
    } 
    if (Button1_PORT == 1 && button1millis >= 50 && button1millis < 400) {
        button1Flag = 1; 
    } 
    if (button1millis >= 800){
        longbutton1Flag = 1;
        button1millis = 400;
    }
    if (Button1_PORT == 1) {
        button1millis = 0;
    }
    
    if (Button2_PORT == 0 && button2Flag == 0){
        button2millis++;
    } 
    if (Button2_PORT == 1 && button2millis >= 50 && button2millis < 400) {
        button2Flag = 1;
    }
    if (button2millis >= 800){
        longbutton2Flag = 1;
        button2millis = 400;
    }
    if (Button2_PORT == 1) {
        button2millis = 0;
    }
}

void setHV(uint16_t brightness) {
    PWM6_LoadDutyValue(brightness);
}

void rampHV(void) {
    uint16_t count = 0;
    float increment = targetBrightness / RAMP_TIME;
    
    for (count = 0; count< RAMP_TIME; count ++){
        __delay_ms(1);
        if (button1Flag || button2Flag) break;
        setHV(count*increment);
    }   
    
//    setHV(targetBrightness);
    
    for (count = 0; count< RAMP_TIME; count ++){
        __delay_ms(1);
        if (button1Flag || button2Flag) break;
        setHV((RAMP_TIME - count)*increment);
    }   
        
    setHV(0);    
}

void selectNumber(uint8_t digit){
    nixie1_PORT = 0;
    nixie2_PORT = 0;
    nixie3_PORT = 0;
    nixie4_PORT = 0;
    nixie5_PORT = 0;
    nixie6_PORT = 0;
    nixie7_PORT = 0;
    nixie8_PORT = 0;
    nixie9_PORT = 0;
    nixie0_PORT = 0;
    nixieP_PORT = 0;
    
    switch (digit) {
        case 0:
            nixie0_PORT = 1;
        break;
        case 1:
            nixie1_PORT = 1;
        break;
        case 2:
            nixie2_PORT = 1;
        break;
        case 3:
            nixie3_PORT = 1;
        break;
        case 4:
            nixie4_PORT = 1;
        break;
        case 5:
            nixie5_PORT = 1;
        break;
        case 6:
            nixie6_PORT = 1;
        break;
        case 7:
            nixie7_PORT = 1;
        break;
        case 8:
            nixie8_PORT = 1;
        break;
        case 9:
            nixie9_PORT = 1;
        break;
        case 10:
            nixieP_PORT = 1;
        break;
    }
           
}

void main(void) {
    uint8_t minute = 0;
    uint8_t hour = 0;
    uint16_t count = 0;
        
    // initialize the device
    SYSTEM_Initialize();
    TMR1_SetInterruptHandler(timer1InterruptHandler);
    
    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();
    
    // main loop
    while (1) {
        hour = getHour();
        minute = getMinute();
        
        // interruptible delay
        for (count = 0; count< REPEAT_TIME; count ++){
            __delay_ms(1);
            if (button1Flag || button2Flag || longbutton1Flag || longbutton2Flag) break;
        }        
        
        if ( !(button1Flag || button2Flag || longbutton1Flag || longbutton2Flag) ){
            selectNumber(hour/10);
            rampHV();
            selectNumber(hour%10);
            rampHV();
        }

        for (count = 0; count< INTER_TIME; count ++){
            __delay_ms(1);
            if (button1Flag || button2Flag || longbutton1Flag || longbutton2Flag) break;
        }  

        if ( !(button1Flag || button2Flag || longbutton1Flag || longbutton2Flag) ){
            selectNumber(minute/10);
            rampHV();
            selectNumber(minute%10);
            rampHV();
        }
        
        selectNumber(99);

        if (button1Flag) {
            blinkDot();

            hour++;
            if (hour>23) hour=0;
            setHour(hour);
            setSecond(0);
            
            button1Flag = 0;
        }

        if (button2Flag) {
            blinkDot();

            minute++;
            if (minute>59) minute=0;
            setMinute(minute);
            setSecond(0);
            
            button2Flag = 0;
        }
        
        if (longbutton1Flag) {
            if (targetBrightness > 150) targetBrightness-=100;
            showTargetBrightness();
            longbutton1Flag = 0;
        }
        
        if (longbutton2Flag) {
            if (targetBrightness <= 899) targetBrightness+=100;
            showTargetBrightness();
            longbutton2Flag = 0;
        }
    }
}
/**
 End of File
*/