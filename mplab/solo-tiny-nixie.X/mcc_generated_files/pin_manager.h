/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F18346
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above
        MPLAB 	          :  MPLAB X 5.45	
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

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set nixie0 aliases
#define nixie0_TRIS                 TRISAbits.TRISA0
#define nixie0_LAT                  LATAbits.LATA0
#define nixie0_PORT                 PORTAbits.RA0
#define nixie0_WPU                  WPUAbits.WPUA0
#define nixie0_OD                   ODCONAbits.ODCA0
#define nixie0_ANS                  ANSELAbits.ANSA0
#define nixie0_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define nixie0_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define nixie0_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define nixie0_GetValue()           PORTAbits.RA0
#define nixie0_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define nixie0_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define nixie0_SetPullup()          do { WPUAbits.WPUA0 = 1; } while(0)
#define nixie0_ResetPullup()        do { WPUAbits.WPUA0 = 0; } while(0)
#define nixie0_SetPushPull()        do { ODCONAbits.ODCA0 = 0; } while(0)
#define nixie0_SetOpenDrain()       do { ODCONAbits.ODCA0 = 1; } while(0)
#define nixie0_SetAnalogMode()      do { ANSELAbits.ANSA0 = 1; } while(0)
#define nixie0_SetDigitalMode()     do { ANSELAbits.ANSA0 = 0; } while(0)

// get/set nixie1 aliases
#define nixie1_TRIS                 TRISAbits.TRISA1
#define nixie1_LAT                  LATAbits.LATA1
#define nixie1_PORT                 PORTAbits.RA1
#define nixie1_WPU                  WPUAbits.WPUA1
#define nixie1_OD                   ODCONAbits.ODCA1
#define nixie1_ANS                  ANSELAbits.ANSA1
#define nixie1_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define nixie1_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define nixie1_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define nixie1_GetValue()           PORTAbits.RA1
#define nixie1_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define nixie1_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define nixie1_SetPullup()          do { WPUAbits.WPUA1 = 1; } while(0)
#define nixie1_ResetPullup()        do { WPUAbits.WPUA1 = 0; } while(0)
#define nixie1_SetPushPull()        do { ODCONAbits.ODCA1 = 0; } while(0)
#define nixie1_SetOpenDrain()       do { ODCONAbits.ODCA1 = 1; } while(0)
#define nixie1_SetAnalogMode()      do { ANSELAbits.ANSA1 = 1; } while(0)
#define nixie1_SetDigitalMode()     do { ANSELAbits.ANSA1 = 0; } while(0)

// get/set RA2 procedures
#define RA2_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define RA2_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define RA2_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define RA2_GetValue()              PORTAbits.RA2
#define RA2_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define RA2_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define RA2_SetPullup()             do { WPUAbits.WPUA2 = 1; } while(0)
#define RA2_ResetPullup()           do { WPUAbits.WPUA2 = 0; } while(0)
#define RA2_SetAnalogMode()         do { ANSELAbits.ANSA2 = 1; } while(0)
#define RA2_SetDigitalMode()        do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set RA4 procedures
#define RA4_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define RA4_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define RA4_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define RA4_GetValue()              PORTAbits.RA4
#define RA4_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define RA4_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define RA4_SetPullup()             do { WPUAbits.WPUA4 = 1; } while(0)
#define RA4_ResetPullup()           do { WPUAbits.WPUA4 = 0; } while(0)
#define RA4_SetAnalogMode()         do { ANSELAbits.ANSA4 = 1; } while(0)
#define RA4_SetDigitalMode()        do { ANSELAbits.ANSA4 = 0; } while(0)

// get/set RA5 procedures
#define RA5_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define RA5_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define RA5_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define RA5_GetValue()              PORTAbits.RA5
#define RA5_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define RA5_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define RA5_SetPullup()             do { WPUAbits.WPUA5 = 1; } while(0)
#define RA5_ResetPullup()           do { WPUAbits.WPUA5 = 0; } while(0)
#define RA5_SetAnalogMode()         do { ANSELAbits.ANSA5 = 1; } while(0)
#define RA5_SetDigitalMode()        do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set nixie2 aliases
#define nixie2_TRIS                 TRISBbits.TRISB4
#define nixie2_LAT                  LATBbits.LATB4
#define nixie2_PORT                 PORTBbits.RB4
#define nixie2_WPU                  WPUBbits.WPUB4
#define nixie2_OD                   ODCONBbits.ODCB4
#define nixie2_ANS                  ANSELBbits.ANSB4
#define nixie2_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define nixie2_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define nixie2_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define nixie2_GetValue()           PORTBbits.RB4
#define nixie2_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define nixie2_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define nixie2_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define nixie2_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define nixie2_SetPushPull()        do { ODCONBbits.ODCB4 = 0; } while(0)
#define nixie2_SetOpenDrain()       do { ODCONBbits.ODCB4 = 1; } while(0)
#define nixie2_SetAnalogMode()      do { ANSELBbits.ANSB4 = 1; } while(0)
#define nixie2_SetDigitalMode()     do { ANSELBbits.ANSB4 = 0; } while(0)

// get/set nixie3 aliases
#define nixie3_TRIS                 TRISBbits.TRISB5
#define nixie3_LAT                  LATBbits.LATB5
#define nixie3_PORT                 PORTBbits.RB5
#define nixie3_WPU                  WPUBbits.WPUB5
#define nixie3_OD                   ODCONBbits.ODCB5
#define nixie3_ANS                  ANSELBbits.ANSB5
#define nixie3_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define nixie3_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define nixie3_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define nixie3_GetValue()           PORTBbits.RB5
#define nixie3_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define nixie3_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define nixie3_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define nixie3_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)
#define nixie3_SetPushPull()        do { ODCONBbits.ODCB5 = 0; } while(0)
#define nixie3_SetOpenDrain()       do { ODCONBbits.ODCB5 = 1; } while(0)
#define nixie3_SetAnalogMode()      do { ANSELBbits.ANSB5 = 1; } while(0)
#define nixie3_SetDigitalMode()     do { ANSELBbits.ANSB5 = 0; } while(0)

// get/set nixie4 aliases
#define nixie4_TRIS                 TRISBbits.TRISB6
#define nixie4_LAT                  LATBbits.LATB6
#define nixie4_PORT                 PORTBbits.RB6
#define nixie4_WPU                  WPUBbits.WPUB6
#define nixie4_OD                   ODCONBbits.ODCB6
#define nixie4_ANS                  ANSELBbits.ANSB6
#define nixie4_SetHigh()            do { LATBbits.LATB6 = 1; } while(0)
#define nixie4_SetLow()             do { LATBbits.LATB6 = 0; } while(0)
#define nixie4_Toggle()             do { LATBbits.LATB6 = ~LATBbits.LATB6; } while(0)
#define nixie4_GetValue()           PORTBbits.RB6
#define nixie4_SetDigitalInput()    do { TRISBbits.TRISB6 = 1; } while(0)
#define nixie4_SetDigitalOutput()   do { TRISBbits.TRISB6 = 0; } while(0)
#define nixie4_SetPullup()          do { WPUBbits.WPUB6 = 1; } while(0)
#define nixie4_ResetPullup()        do { WPUBbits.WPUB6 = 0; } while(0)
#define nixie4_SetPushPull()        do { ODCONBbits.ODCB6 = 0; } while(0)
#define nixie4_SetOpenDrain()       do { ODCONBbits.ODCB6 = 1; } while(0)
#define nixie4_SetAnalogMode()      do { ANSELBbits.ANSB6 = 1; } while(0)
#define nixie4_SetDigitalMode()     do { ANSELBbits.ANSB6 = 0; } while(0)

// get/set nixie5 aliases
#define nixie5_TRIS                 TRISBbits.TRISB7
#define nixie5_LAT                  LATBbits.LATB7
#define nixie5_PORT                 PORTBbits.RB7
#define nixie5_WPU                  WPUBbits.WPUB7
#define nixie5_OD                   ODCONBbits.ODCB7
#define nixie5_ANS                  ANSELBbits.ANSB7
#define nixie5_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define nixie5_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define nixie5_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define nixie5_GetValue()           PORTBbits.RB7
#define nixie5_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define nixie5_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define nixie5_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define nixie5_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)
#define nixie5_SetPushPull()        do { ODCONBbits.ODCB7 = 0; } while(0)
#define nixie5_SetOpenDrain()       do { ODCONBbits.ODCB7 = 1; } while(0)
#define nixie5_SetAnalogMode()      do { ANSELBbits.ANSB7 = 1; } while(0)
#define nixie5_SetDigitalMode()     do { ANSELBbits.ANSB7 = 0; } while(0)

// get/set Button1 aliases
#define Button1_TRIS                 TRISCbits.TRISC0
#define Button1_LAT                  LATCbits.LATC0
#define Button1_PORT                 PORTCbits.RC0
#define Button1_WPU                  WPUCbits.WPUC0
#define Button1_OD                   ODCONCbits.ODCC0
#define Button1_ANS                  ANSELCbits.ANSC0
#define Button1_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define Button1_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define Button1_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define Button1_GetValue()           PORTCbits.RC0
#define Button1_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define Button1_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)
#define Button1_SetPullup()          do { WPUCbits.WPUC0 = 1; } while(0)
#define Button1_ResetPullup()        do { WPUCbits.WPUC0 = 0; } while(0)
#define Button1_SetPushPull()        do { ODCONCbits.ODCC0 = 0; } while(0)
#define Button1_SetOpenDrain()       do { ODCONCbits.ODCC0 = 1; } while(0)
#define Button1_SetAnalogMode()      do { ANSELCbits.ANSC0 = 1; } while(0)
#define Button1_SetDigitalMode()     do { ANSELCbits.ANSC0 = 0; } while(0)

// get/set RC1 procedures
#define RC1_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define RC1_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define RC1_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define RC1_GetValue()              PORTCbits.RC1
#define RC1_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define RC1_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)
#define RC1_SetPullup()             do { WPUCbits.WPUC1 = 1; } while(0)
#define RC1_ResetPullup()           do { WPUCbits.WPUC1 = 0; } while(0)
#define RC1_SetAnalogMode()         do { ANSELCbits.ANSC1 = 1; } while(0)
#define RC1_SetDigitalMode()        do { ANSELCbits.ANSC1 = 0; } while(0)

// get/set Button2 aliases
#define Button2_TRIS                 TRISCbits.TRISC2
#define Button2_LAT                  LATCbits.LATC2
#define Button2_PORT                 PORTCbits.RC2
#define Button2_WPU                  WPUCbits.WPUC2
#define Button2_OD                   ODCONCbits.ODCC2
#define Button2_ANS                  ANSELCbits.ANSC2
#define Button2_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define Button2_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define Button2_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define Button2_GetValue()           PORTCbits.RC2
#define Button2_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define Button2_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define Button2_SetPullup()          do { WPUCbits.WPUC2 = 1; } while(0)
#define Button2_ResetPullup()        do { WPUCbits.WPUC2 = 0; } while(0)
#define Button2_SetPushPull()        do { ODCONCbits.ODCC2 = 0; } while(0)
#define Button2_SetOpenDrain()       do { ODCONCbits.ODCC2 = 1; } while(0)
#define Button2_SetAnalogMode()      do { ANSELCbits.ANSC2 = 1; } while(0)
#define Button2_SetDigitalMode()     do { ANSELCbits.ANSC2 = 0; } while(0)

// get/set nixie6 aliases
#define nixie6_TRIS                 TRISCbits.TRISC3
#define nixie6_LAT                  LATCbits.LATC3
#define nixie6_PORT                 PORTCbits.RC3
#define nixie6_WPU                  WPUCbits.WPUC3
#define nixie6_OD                   ODCONCbits.ODCC3
#define nixie6_ANS                  ANSELCbits.ANSC3
#define nixie6_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define nixie6_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define nixie6_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define nixie6_GetValue()           PORTCbits.RC3
#define nixie6_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define nixie6_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define nixie6_SetPullup()          do { WPUCbits.WPUC3 = 1; } while(0)
#define nixie6_ResetPullup()        do { WPUCbits.WPUC3 = 0; } while(0)
#define nixie6_SetPushPull()        do { ODCONCbits.ODCC3 = 0; } while(0)
#define nixie6_SetOpenDrain()       do { ODCONCbits.ODCC3 = 1; } while(0)
#define nixie6_SetAnalogMode()      do { ANSELCbits.ANSC3 = 1; } while(0)
#define nixie6_SetDigitalMode()     do { ANSELCbits.ANSC3 = 0; } while(0)

// get/set nixie7 aliases
#define nixie7_TRIS                 TRISCbits.TRISC4
#define nixie7_LAT                  LATCbits.LATC4
#define nixie7_PORT                 PORTCbits.RC4
#define nixie7_WPU                  WPUCbits.WPUC4
#define nixie7_OD                   ODCONCbits.ODCC4
#define nixie7_ANS                  ANSELCbits.ANSC4
#define nixie7_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define nixie7_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define nixie7_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define nixie7_GetValue()           PORTCbits.RC4
#define nixie7_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define nixie7_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define nixie7_SetPullup()          do { WPUCbits.WPUC4 = 1; } while(0)
#define nixie7_ResetPullup()        do { WPUCbits.WPUC4 = 0; } while(0)
#define nixie7_SetPushPull()        do { ODCONCbits.ODCC4 = 0; } while(0)
#define nixie7_SetOpenDrain()       do { ODCONCbits.ODCC4 = 1; } while(0)
#define nixie7_SetAnalogMode()      do { ANSELCbits.ANSC4 = 1; } while(0)
#define nixie7_SetDigitalMode()     do { ANSELCbits.ANSC4 = 0; } while(0)

// get/set nixie8 aliases
#define nixie8_TRIS                 TRISCbits.TRISC5
#define nixie8_LAT                  LATCbits.LATC5
#define nixie8_PORT                 PORTCbits.RC5
#define nixie8_WPU                  WPUCbits.WPUC5
#define nixie8_OD                   ODCONCbits.ODCC5
#define nixie8_ANS                  ANSELCbits.ANSC5
#define nixie8_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define nixie8_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define nixie8_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define nixie8_GetValue()           PORTCbits.RC5
#define nixie8_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define nixie8_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define nixie8_SetPullup()          do { WPUCbits.WPUC5 = 1; } while(0)
#define nixie8_ResetPullup()        do { WPUCbits.WPUC5 = 0; } while(0)
#define nixie8_SetPushPull()        do { ODCONCbits.ODCC5 = 0; } while(0)
#define nixie8_SetOpenDrain()       do { ODCONCbits.ODCC5 = 1; } while(0)
#define nixie8_SetAnalogMode()      do { ANSELCbits.ANSC5 = 1; } while(0)
#define nixie8_SetDigitalMode()     do { ANSELCbits.ANSC5 = 0; } while(0)

// get/set nixie9 aliases
#define nixie9_TRIS                 TRISCbits.TRISC6
#define nixie9_LAT                  LATCbits.LATC6
#define nixie9_PORT                 PORTCbits.RC6
#define nixie9_WPU                  WPUCbits.WPUC6
#define nixie9_OD                   ODCONCbits.ODCC6
#define nixie9_ANS                  ANSELCbits.ANSC6
#define nixie9_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define nixie9_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define nixie9_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define nixie9_GetValue()           PORTCbits.RC6
#define nixie9_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define nixie9_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define nixie9_SetPullup()          do { WPUCbits.WPUC6 = 1; } while(0)
#define nixie9_ResetPullup()        do { WPUCbits.WPUC6 = 0; } while(0)
#define nixie9_SetPushPull()        do { ODCONCbits.ODCC6 = 0; } while(0)
#define nixie9_SetOpenDrain()       do { ODCONCbits.ODCC6 = 1; } while(0)
#define nixie9_SetAnalogMode()      do { ANSELCbits.ANSC6 = 1; } while(0)
#define nixie9_SetDigitalMode()     do { ANSELCbits.ANSC6 = 0; } while(0)

// get/set nixieP aliases
#define nixieP_TRIS                 TRISCbits.TRISC7
#define nixieP_LAT                  LATCbits.LATC7
#define nixieP_PORT                 PORTCbits.RC7
#define nixieP_WPU                  WPUCbits.WPUC7
#define nixieP_OD                   ODCONCbits.ODCC7
#define nixieP_ANS                  ANSELCbits.ANSC7
#define nixieP_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define nixieP_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define nixieP_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define nixieP_GetValue()           PORTCbits.RC7
#define nixieP_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define nixieP_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define nixieP_SetPullup()          do { WPUCbits.WPUC7 = 1; } while(0)
#define nixieP_ResetPullup()        do { WPUCbits.WPUC7 = 0; } while(0)
#define nixieP_SetPushPull()        do { ODCONCbits.ODCC7 = 0; } while(0)
#define nixieP_SetOpenDrain()       do { ODCONCbits.ODCC7 = 1; } while(0)
#define nixieP_SetAnalogMode()      do { ANSELCbits.ANSC7 = 1; } while(0)
#define nixieP_SetDigitalMode()     do { ANSELCbits.ANSC7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/