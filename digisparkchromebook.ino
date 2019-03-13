#include <DigiKeyboard.h>
#define KEY_TAB       43
void setup() {
  DigiKeyboard.sendKeyStroke(0); // needed for some older computers
  DigiKeyboard.delay(500);
  DigiKeyboard.sendKeyStroke(KEY_Q, MOD_CONTROL_LEFT | MOD_SHIFT_LEFT);
  DigiKeyboard.delay(200);
  DigiKeyboard.sendKeyStroke(KEY_Q, MOD_CONTROL_LEFT | MOD_SHIFT_LEFT);
  DigiKeyboard.delay(10000);
  DigiKeyboard.sendKeyStroke(KEY_TAB);
  DigiKeyboard.delay(500);
  DigiKeyboard.sendKeyStroke(KEY_TAB);
  DigiKeyboard.delay(500);
  DigiKeyboard.sendKeyStroke(KEY_TAB);
  DigiKeyboard.delay(500);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(3000);
  DigiKeyboard.println("https://wbte.drcedirect.com/MI"); // autotyping
  DigiKeyboard.delay(200);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(200); 
  DigiKeyboard.sendKeyStroke(KEY_T, MOD_CONTROL_LEFT);
  DigiKeyboard.delay(200);
  DigiKeyboard.println("https://accounts.google.com/signin/v2/identifier?service=classroom");
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  DigiKeyboard.delay(7000);
  DigiKeyboard.println("firstinitiallastname@student.schoolname.edu"); // autotyping
  DigiKeyboard.delay(200);
}


void loop() {}
