.equ PIND,  0x09
.equ DDRD,  0x0A
.equ PORTD, 0x0B

; Define the function button1_init()
.global button1_init
button1_init:
  CBI DDRD, 6  ; Input, Bit 6 = pin 6
  SBI PORTD, 6  ; pull-up
  ret

; Define the function button2_init()
.global button2_init
button2_init:
  CBI DDRD, 7  ; Input, Bit 7 = pin 7
  SBI PORTD, 7  ; pull up
  ret

; Define the function led1_init()
.global led1_init
led1_init:
  SBI DDRD, 3  ; Output, Bit 3 = pin 3
  ret

; Define the function led2_init()
.global led2_init
led2_init:
  SBI DDRD, 2  ; Output, Bit 2 = pin 2
  ret

; Define the function led1_on()
.global led1_on
led1_on:
  SBI PORTD, 3  ; High, Bit 3 = pin 3
  ret

; Define the function led2_on()
.global led2_on
led2_on:
  SBI PORTD, 2  ; High, Bit 2 = pin 2
  ret

; Define the function led1_off()
.global led1_off
led1_off:
  CBI PORTD, 3  ; Low, Bit 3 = pin 3
  ret

; Define the function led2_off()
.global led2_off
led2_off:
  CBI PORTD, 2  ; Low, Bit 2 = pin 2
  ret

; Define the function button1_state()
.global button1_state
button1_state:
  SBIS PIND, 6  ; Skip Bit If Set, Read, Bit 6 = pin 6
  RJMP button1_low

  LDI R24, 1  ; put number 1 into register 24 --> return 1 (High) to C program
  ret

button1_low:
  LDI R24, 0  ; put number 0 into register 24 --> return 0 (Low) to C program
  ret

; Define the function button2_state()
.global button2_state
button2_state:
  SBIS PIND, 7  ; Skip Bit If Set, Read, Bit 7 = pin 7
  RJMP button2_low

  LDI R24, 1  ; put number 1 into register 24 --> return 1 (High) to C program
  ret

button2_low:
  LDI R24, 0  ; put number 0 into register 24 --> return 0 (Low) to C program
  ret
