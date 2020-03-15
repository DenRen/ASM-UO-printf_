%macro print_ 2
	xor rax, rax
	xor rdi, rdi
	inc al
	inc dil
	
	mov rsi, %1
	mov rdx, %2
	
	syscall
%endmacro

%macro utests_ 0
;───────────────────────────────┬────────────────┐
;								│	 printf_b_	 │	
;								└────────────────┘
	mov rax, [utv_n2b_0]
    call printf_b_
	print_ uts_n2b_0, utl_n2b_0

	mov rax, [utv_n2b_1]
    call printf_b_
	print_ uts_n2b_1, utl_n2b_1

	mov rax, [utv_n2b_2]
    call printf_b_
	print_ uts_n2b_2, utl_n2b_2

	mov rax, [utv_n2b_3]
    call printf_b_
	print_ uts_n2b_3, utl_n2b_3

;───────────────────────────────┬────────────────┐
;                               │    printf_o_   │  
;                               └────────────────┘
	mov rax, [utv_n2o_0]
	call printf_o_
	print_ uts_n2o_0, utl_n2o_0
				
	mov rax, [utv_n2o_1]
	call printf_o_
	print_ uts_n2o_1, utl_n2o_1
	
	mov rax, [utv_n2o_2]
	call printf_o_
	print_ uts_n2o_2, utl_n2o_2
	
	mov rax, [utv_n2o_3]
	call printf_o_
	print_ uts_n2o_3, utl_n2o_3

;───────────────────────────────┬────────────────┐
;                               │    printf_x_   │  
;                               └────────────────┘
	mov rax, [utv_n2x_0]
	call printf_x_
	print_ uts_n2x_0, utl_n2x_0
	
	mov rax, [utv_n2x_1]
	call printf_x_
	print_ uts_n2x_1, utl_n2x_1
	
	mov rax, [utv_n2x_2]
	call printf_x_
	print_ uts_n2x_2, utl_n2x_2

    mov rax, [utv_n2x_3]
    call printf_x_
    print_ uts_n2x_3, utl_n2x_3

;───────────────────────────────┬────────────────┐
;                               │    printf_d_   │  
;                               └────────────────┘
   	mov rax, [utv_n2d_0]
    call printf_d_
    print_ uts_n2d_0, utl_n2d_0

    mov rax, [utv_n2d_1]
    call printf_d_
    print_ uts_n2d_1, utl_n2d_1

    mov rax, [utv_n2d_2]
    call printf_d_
    print_ uts_n2d_2, utl_n2d_2


%endmacro

%define ut_ends_ " - should be like that", finl 

utv_n2b_0 	dq      0b00001100111000111100001111100000
uts_n2b_0	dq brkl, "00001100111000111100001111100000", ut_ends_ 
utl_n2b_0  equ $ - uts_n2b_0

utv_n2b_1 	dq      0b10001100111000111100001110000000
uts_n2b_1	dq brkl, "10001100111000111100001110000000", ut_ends_ 
utl_n2b_1  equ $ - uts_n2b_1

utv_n2b_2 	dq      0b10101011111111111111111111111111
uts_n2b_2	dq brkl, "10101011111111111111111111111111", ut_ends_ 
utl_n2b_2  equ $ - uts_n2b_2

utv_n2b_3 	dq      0b11111001111111111100000000000000
uts_n2b_3	dq brkl, "11111001111111111100000000000000", ut_ends_ 
utl_n2b_3  equ $ - uts_n2b_3


utv_n2o_0 	dq 42949672961235
uts_n2o_0	dq brkl, "1161000000002323", ut_ends_
utl_n2o_0  equ $ - uts_n2o_0

utv_n2o_1 	dq 12316516156
uts_n2o_1	dq brkl, "0000133607617474", ut_ends_
utl_n2o_1  equ $ - uts_n2o_1

utv_n2o_2 	dq 3205
uts_n2o_2	dq brkl, "0000000000006205", ut_ends_
utl_n2o_2  equ $ - uts_n2o_2

utv_n2o_3 	dq 999900009999
uts_n2o_3	dq brkl, "0016431653653017", ut_ends_
utl_n2o_3  equ $ - uts_n2o_3

utv_n2x_0 	dq 		0x000A000A000A000A
uts_n2x_0	dq brkl, "000A000A000A000A", ut_ends_
utl_n2x_0  equ $ - uts_n2x_0

utv_n2x_1 	dq		0x00000000707FFABC
uts_n2x_1	dq brkl, "00000000707FFABC", ut_ends_
utl_n2x_1   equ $ - uts_n2x_1

utv_n2x_2 	dq		0x0000123321321000
uts_n2x_2	dq brkl, "0000123321321000", ut_ends_
utl_n2x_2   equ $ - uts_n2x_2

utv_n2x_3   dq      0b111011011010
uts_n2x_3   dq brkl, "0000000000000EDA", ut_ends_
utl_n2x_3   equ $ - uts_n2x_3

utv_n2d_0    dq		   4294967296
uts_n2d_0    dq brkl, "4294967296", ut_ends_
utl_n2d_0   equ $ - uts_n2d_0

utv_n2d_1    dq		   10320510
uts_n2d_1    dq brkl, "10320510", ut_ends_
utl_n2d_1   equ $ - uts_n2d_1

utv_n2d_2    dq		   32323232
uts_n2d_2    dq brkl, "32323232", ut_ends_
utl_n2d_2   equ $ - uts_n2d_2

%if 0

utv_n2o_ 	dq
uts_n2o_	dq brkl, "", ut_ends_
utl_n2o_   equ $ - uts_n2o_
%endif
