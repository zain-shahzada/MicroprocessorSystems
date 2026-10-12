#include "blink_button.h"

int main() {

  button1_init();
  button2_init();
  led1_init();
  led2_init();

  Serial.begin(9600);
  Serial.println("We are doing lab 2!");

  while(1) {

    if(button1_state() == LOW) {
      led1_on();
    }

    else {
      led1_off();
    }

    if(button2_state() == LOW) {
      led2_on();
    }

    else {
      led2_off();
    }
    
  }

  return(0);
}
