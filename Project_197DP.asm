
PortA		equ	$1700		; Address of Port A Data Register
PortADDR	equ	$1701		; Address of Port A Data Direction register

PortB		equ	$1702
PortBDDR	equ	$1703

		org	$0000


; initializing a variable as 0
output		equ	$0000
		ldy	#$00
		sty	output



;taking input in from the sensor (connected to Data_0 = PA0)
;then output it to another let's say (Data_1 = PA1)
;SO I want to take portA as output and portB as input



Alarm:	
		; initialize:
		org	$0200
		code
		cld			; clears decimal mode

		ldx	#$00		
		ldy 	#$ff
		stx	PortADDR	; set portA to input	
		sty	PortBDDR	; set portB as output


		ldy	#$00		; X = 0



Loop1:		
		lda	PortA		; load the input from portA here
		and	#$01
		sta	PortB
		jmp	Loop1

		; so we are comparing the value

		cmp	#50		; FIX THIS so that the value is compared to whatever 
					; the comparator is set to
		bmi	AboveLine	; branch if minus, continue if it's not
		
		; if the loop does not go into "AboveLine", then input 1 into the output (portb)
		ldy	#$00
		sty	output		; store the value 0 as an output

		jmp	Loop1		; go back to the loop



AboveLine:
		; here we basically want to return 1 and put it as an output

		ldy	#$01
		sty	output






;we want to load the input (load) from the sensor then compare it so that we are able to 
;use that data to generate an output (store)






