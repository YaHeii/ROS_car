/***************************************************************
   Motor driver function definitions - by James Nugen
   *************************************************************/




  #define LEFT_DIR1 24
  #define LEFT_DIR2 22
  #define LEFT_PWM 4
  #define RIGHT_DIR1 26
  #define RIGHT_DIR2 28
  #define RIGHT_PWM 5


void initMotorController();
void setMotorSpeed(int i, int spd);
void setMotorSpeeds(int leftSpeed, int rightSpeed);
