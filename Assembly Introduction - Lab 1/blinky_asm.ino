#include "blinky.h"

int main() {

  led1_init();
  led2_init();
  led3_init();
  led4_init();

  while(1){

    led1_on();
    _delay_ms(500); // Can be adjusted by TA
    led1_off();

    led2_on();
    _delay_ms(1000); // Can be adjusted by TA
    led2_off();

    led3_on();
    _delay_ms(1000); // Can be adjusted by TA
    led3_off();

    led4_on();
    _delay_ms(500); // Can be adjusted by TA
    led4_off();

  }

  return(0);
}
