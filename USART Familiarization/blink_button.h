#ifdef __ASSEMBLER__

#else

  extern "C" void button1_init(void);
  extern "C" void button2_init(void);

  extern "C" void led1_init(void);
  extern "C" void led2_init(void);

  extern "C" int button1_state(void);
  extern "C" int button2_state(void);

  extern "C" void led1_on(void);
  extern "C" void led2_on(void);

  extern "C" void led1_off(void);
  extern "C" void led2_off(void);


#endif
