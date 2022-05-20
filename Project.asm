;setup PortA (must be an input port)
;Scan Keyboard
;Check if A=$15  // 15 means None
;	if so: return back to check again
;	if not:
;Store STA 0300
;Break
;$1700   	$1740
;RIOT		RIOT(Kim monitor)
;		$1740 PORTA (initalize first with data registers using 0x00 (input))
;		$1741 DDRA  
;		$1742 PORTB 
;		$1743 DDRB  
;
;JSR found on pg451 of Microcomputer Experimentation with... (downloads)
;
;
;
		code
		cld		; Clears deccimal mode (important!)

		PORTA    $1740

		ldx      #$00   		;Load X into the register         (with 00 since input)
		STX      $1741			;Store X  	 (storing the 00)

Label1:		JSR	 $1F6A	;GETKEY 	 (same as GETKEY)
		CMP	 #$15   ;If	  	 (IF equal to 15)
		BEQ	 Label1 ;Else		 (if NOT equal to 15)
		STA	 $0300  ; (then store into 0300)
		BRK		;Break
		END		;End




; using oscilloscope (X Y cartesian mode) 


















