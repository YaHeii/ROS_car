// 定义电机PWM控制范围
#define MAX_PWM        255

/* PID setpoint info For a Motor */
typedef struct {
  double TargetTicksPerFrame;    // target speed in ticks per frame
  long Encoder;                  // encoder count
  long PrevEnc;                  // last encoder count
  int PrevInput;                // last input
  int ITerm;                    //integrated term
  long output;                    // last motor setting
}
SetPointInfo;

SetPointInfo leftPID, rightPID;

/* PID Parameters */
int Kp1 = 60;
int Kd1 = 45;
int Ki1 = 0.0001;
int Ko1 = 0;

int Kp2 = 60;
int Kd2 = 45;
int Ki2 = 0.0001;
int Ko2 = 0;

int left_Kp=Kp1;
int left_Kd=Kd1;
int left_Ki=Ki1;
int left_Ko=Ko1;

int right_Kp=Kp2;
int right_Kd=Kd2;
int right_Ki=Ki2;
int right_Ko=Ko2;

unsigned char moving = 0; // is the base in motion?

void resetPID(){
 leftPID.TargetTicksPerFrame = 0.0;
 leftPID.Encoder = readEncoder(LEFT);
 leftPID.PrevEnc = leftPID.Encoder;
 leftPID.output = 0;
 leftPID.PrevInput = 0;
 leftPID.ITerm = 0;

 rightPID.TargetTicksPerFrame = 0.0;
 rightPID.Encoder = readEncoder(RIGHT);
 rightPID.PrevEnc = rightPID.Encoder;
 rightPID.output = 0;
 rightPID.PrevInput = 0;
 rightPID.ITerm = 0;
}

//* PID routine to compute the next motor commands */
void dorightPID(SetPointInfo * p) {
  long Perror;
  long output;
  int input;

  input = p->Encoder - p->PrevEnc;
  Perror = p->TargetTicksPerFrame - input;
  output = (right_Kp * Perror - right_Kd * (input - p->PrevInput) + p->ITerm) / right_Ko;
  p->PrevEnc = p->Encoder;
  
  Serial.println(input);
  
  output += p->output;
  if (output >= MAX_PWM)
    output = MAX_PWM;
  else if (output <= -MAX_PWM)
    output = -MAX_PWM;
  else
    p->ITerm += Ki2 * Perror;

  p->output = output;
  p->PrevInput = input;
}

/* PID routine to compute the next motor commands */
void doleftPID(SetPointInfo * p) {
  long Perror;
  long output;
  int input;

  //Perror = p->TargetTicksPerFrame - (p->Encoder - p->PrevEnc);
  input = p->Encoder - p->PrevEnc;
  Perror =p->TargetTicksPerFrame - input;

  output = (left_Kp * Perror - left_Kd * (input - p->PrevInput) + p->ITerm) / left_Ko;
  p->PrevEnc = p->Encoder;

  Serial.println(input);

  output += p->output;

  if (output >= MAX_PWM)
    output = MAX_PWM;
  else if (output <= -MAX_PWM)
    output = -MAX_PWM;
  else
    p->ITerm += Ki1 * Perror;

  p->output = output;
  p->PrevInput = input;
}


void updatePID() {
  /* Read the encoders */
  leftPID.Encoder =readEncoder(LEFT);
  rightPID.Encoder = readEncoder(RIGHT);

  /* If we're not moving there is nothing more to do */
  if (!moving){
    if (leftPID.PrevInput != 0 || rightPID.PrevInput != 0) resetPID();
    return;
  }

  /* Compute PID update for each motor */
  dorightPID(&rightPID);//执行右马达PID
  doleftPID(&leftPID);//执行左马达PID

  /* Set the motor speeds accordingly */
  setMotorSpeeds(leftPID.output, rightPID.output);

}


long readPidIn(int i) {
  long pidin=0;
    if (i == LEFT){
    pidin = leftPID.PrevInput;
  }else {
    pidin = rightPID.PrevInput;
  }
  return pidin;
}

long readPidOut(int i) {
  long pidout=0;
    if (i == LEFT){
    pidout = leftPID.output;
  }else {
    pidout = rightPID.output;
  }
  return pidout;
}
