				#include<p18F4550.inc>

				org	0x00
				goto start
				org	0x08
				retfie
				org	0x18
				retfie
			

;###########################################
;main program
;###########################################

start				CLRF	TRISD,A
				SETF	TRISB,A		    	;set this as our input
				CLRF	PORTD,A         	;clear because we don’t need any value exist
CHECK				BTFSS	PORTB,0,A   
				BRA	LED1
				BCF	PORTD,0,A       	;OFF LED1
CHECK2				BTFSS	PORTB,1,A   
				BRA	LED2
				BCF	PORTD,1,A	  	 ;OFF LED2
				BRA	CHECK

LED1				BSF	PORTD,0,A   
				BRA	CHECK

LED2				BSF	PORTD,1,A   
				BRA	CHECK2

				end
