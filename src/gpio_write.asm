.DEVICE attiny85 ; device to check memory
.INCLUDE "./include/attiny85.asm" ; register map made by me

	ldi r16,0x01 ; define pin
	out DDRB,r16 ; make pin to output
	ldi r16,0x01 ; first value to output
	ldi r17,0x00 ; second value to output
max:
	out PORTB,r16 ; pin high
	out PORTB,r17 ; pin low
	rjmp max