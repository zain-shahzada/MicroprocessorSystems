; Define the function led1_init()
.global led1_init
led1_init:
sbi 4, 5  ; 4 = DDRB (0x24 - 0x20). Bit 5 = pin 13
ret

; Define the function led1_on()
.global led1_on
led1_on:
sbi 5, 5  ; 5 = PORTB (0x25 - 0x20). Bit 5 = pin 13
ret

; Define the function led1_off()
.global led1_off
led1_off:
cbi 5, 5  ; 5 = PORTB (0x25 - 0x20). Bit 5 = pin 13
ret

; Define the function led2_init()
.global led2_init
led2_init:
sbi 4, 4  ; 4 = DDRB (0x24 - 0x20). Bit 4 = pin 12
ret

; Define the function led2_on()
.global led2_on
led2_on:
sbi 5, 4  ; 5 = PORTB (0x25 - 0x20). Bit 4 = pin 12
ret

; Define the function led2_off()
.global led2_off
led2_off:
cbi 5, 4  ; 5 = PORTB (0x25 - 0x20). Bit 4 = pin 12
ret

; Define the function led3_init()
.global led3_init
led3_init:
sbi 4, 3  ; 4 = DDRB (0x24 - 0x20). Bit 3 = pin 11
ret

; Define the function led3_on()
.global led3_on
led3_on:
sbi 5, 3  ; 5 = PORTB (0x25 - 0x20). Bit 3 = pin 11
ret

; Define the function led3_off()
.global led3_off
led3_off:
cbi 5, 3  ; 5 = PORTB (0x25 - 0x20). Bit 3 = pin 11
ret

; Define the function led4_init()
.global led4_init
led4_init:
sbi 4, 2  ; 4 = DDRB (0x24 - 0x20). Bit 2 = pin 10
ret

; Define the function led4_on()
.global led4_on
led4_on:
sbi 5, 2  ; 5 = PORTB (0x25 - 0x20). Bit 2 = pin 10
ret

; Define the function led4_off()
.global led4_off
led4_off:
cbi 5, 2  ; 5 = PORTB (0x25 - 0x20). Bit 2 = pin 10
ret