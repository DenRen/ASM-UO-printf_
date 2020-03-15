global _start

%include "mystdmacro.s"
%include "mystdlib.s"
%include "utests.s"

section .rodata

orig_ 	db "Hello, %s! As you said, the number %d is one of the most important in a student’s life. It can be derived in all calculus systems:", brkl, "BIN: %b", brkl, "OCT: %o", brkl, "HEX: %x", brkl, "But everyone will recognize him anyway)", brkl, 0x0 
name_	db "Ded", 0x0
msg1 db "Hss", 0x0
section .text

_start:
	prog_start
	
	nop
	nop
	nop
	
	;call utests_	

	push 0b111011011010
	push 0b111011011010
	push 0b111011011010
	push 0b111011011010
	push name_	
	push orig_
	
	printf__
	
	
	
	;call utests_
	
		
	nop
	nop
	nop
	
	prog_finish	
_L_:
	prog_finish

