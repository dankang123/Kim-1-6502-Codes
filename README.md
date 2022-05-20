# Kim-1-6502-Codes

This repository is for 197DP Spring'22 Design Project Class, where we used the KIM-1 (Keyboard-Input Monitor) Computer, 
a crucial step in the microcomputer development. Using the 6502 microcontroller, we are able to upload assembly languages
to directly talk to the computer.

Specifically, we worked with motors, sirvos, LED's and much more. Using Tera-Term, I was able to connect my Windows to the KIM-1. The instructions are listed below:


`How to connect Windows to Kim:

In terminal:
.asm  ->  .hex 

In terminal 
In the directory with "as65 file":

	as65 <execute program with asm> -s2 -l

	exp: 
	as65 Scroll -s2 -1


then use 
Tera Term:
log in with serial, make sure KIM is in KBD up



Send File - 

should look like:

KIM Clone v1.0B
FFFF 1C L

in here, the L means 	load
`


Hope this helps!
