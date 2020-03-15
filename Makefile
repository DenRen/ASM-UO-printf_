format= -f elf64
machine= -m elf_x86_64
trash= /dev/null

all: start_printf_

start_printf_: temp_printf_.o
	ld $(machine) temp_printf_.o -o start_printf_

temp_printf_.o: printf_.s mystdmacro.s mystdlib.s utests.s
	nasm $(format) -g printf_.s -o temp_printf_.o  

clean:
	rm -f temp_printf_.o start_printf_  
