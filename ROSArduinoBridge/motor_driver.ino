#include "commands.h";
#include <Wire.h>;
#include "motor_driver.h"
//#include <Adafruit_PWMServoDriver.h>
//Adafruit_PWMServoDriver drive = Adafruit_PWMServoDriver(0x41);


boolean directionLeft = false;
boolean directionRight = false;
#define MAX_PWM 255

 void initMotorController(){
  //pwm输出
    pinMode(LEFT_PWM,OUTPUT);
    pinMode(RIGHT_PWM,OUTPUT);
   //电机方向
    pinMode(LEFT_DIR1,OUTPUT);
    pinMode(LEFT_DIR2,OUTPUT);
    pinMode(RIGHT_DIR1,OUTPUT);
    pinMode(RIGHT_DIR2,OUTPUT);
    
    //默认初始化电机驱动器为 停止状态 。
    digitalWrite(LEFT_DIR1, LOW);
    digitalWrite(LEFT_DIR2, LOW);
    digitalWrite(RIGHT_DIR1, LOW);
    digitalWrite(RIGHT_DIR2, LOW);
 }

  //设置单个电机的速度
  void setMotorSpeed(int i, int spd) {  
  unsigned char reverse = 0;  
  if (spd < 0) {  
    spd = -spd;  
    reverse = 1;  
  }  
  if (spd > 255) {  
    spd = 255;  
  }  
  if (i == LEFT) {   
    if (reverse == 1) { // 正转  
      digitalWrite(LEFT_DIR1, LOW);  
      digitalWrite(LEFT_DIR2, HIGH);  
    } else { // 反转  
      digitalWrite(LEFT_DIR1, HIGH);  
      digitalWrite(LEFT_DIR2, LOW);  
    }  
    analogWrite(LEFT_PWM, spd);  
  } else if (i == RIGHT) {   
    if (reverse == 1) { // 正转  
      digitalWrite(RIGHT_DIR1, LOW);  
      digitalWrite(RIGHT_DIR2, HIGH);  
    } else { // 反转  
      digitalWrite(RIGHT_DIR1, HIGH);  
      digitalWrite(RIGHT_DIR2, LOW);  
    }  
    analogWrite(RIGHT_PWM, spd);  
  }  
}
  //设置两个电机的速度
  void setMotorSpeeds(int leftSpeed, int rightSpeed){
    setMotorSpeed(RIGHT, rightSpeed);
    setMotorSpeed(LEFT, leftSpeed);
  }
