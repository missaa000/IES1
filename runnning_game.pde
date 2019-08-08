import java.util.Random;

//画像
PImage ground;
PImage human[] = new PImage[2];
PImage object[] = new PImage[4];

//位置
float human1x, human1y;
float human2x, human2y;
float objectx[] = new float[4];
float objecty[] = new float[4];

int tex;
Random r = new Random();
boolean randFlag;
int rand;

void setup() {
  size(600, 500);

  ground = loadImage("image/ground.png");
  human[0] = loadImage("image/human1.png");
  human[1] = loadImage("image/human2.png");
  object[0] = loadImage("image/rock.png");
  object[1] = loadImage("image/reef.png");
  object[2] = loadImage("image/raspberry.png");
  object[3] = loadImage("image/raspberrypi.png");

  human1x = 10;
  human1y = 290;
  human2x = 10;
  human2y = 2900;
  
  objectx[0] = 1000;
  objecty[0] = 345;
  objectx[1] = 1000;
  objecty[1] = 330;
  objectx[2] = 1000;
  objecty[2] = 310;
  objectx[3] = 1000;
  objecty[3] = 310;

  tex = 0000;
  
  rand = 5;
  randFlag = true;
}

void draw() {
  background(155, 255, 255);
  image(ground, 0, 0);
  image(human[0], human1x, human1y);
  image(human[1], human2x, human2y);
  image(object[0], objectx[0], objecty[0]);
  image(object[1], objectx[1], objecty[1]);
  image(object[2], objectx[2], objecty[2]);
  image(object[3], objectx[3], objecty[3]);

  fill(255);
  rect(60, 50, 140, 100);

  fill(0);
  textSize(20);
  text("Score", 80, 80);
  text(String.valueOf(tex), 80, 100);
  
  if(randFlag){
    rand = r.nextInt(4);
    randFlag = false;
  }
  
  if(rand == 0){
    objectx[0] -= 10;
    
    if(objectx[0] < -30){
      objectx[0] = 1000;
      tex += 100;
      randFlag = true;
    }
  }
  
  if(rand == 1){
    objectx[1] -= 10;
    
    if(objectx[1] < -30){
      objectx[1] = 1000;
      tex += 100;
      randFlag = true;
    }
  }
  
  if(rand == 2){
    objectx[2] -= 10;
    
    if(objectx[2] < -30){
      objectx[2] = 1000;
      tex += 100;
      randFlag = true;
    }
  }
  
  if(rand == 3){
    objectx[3] -= 10;
    
    if(objectx[3] < -30){
      objectx[3] = 1000;
      tex += 100;
      randFlag = true;
    }
  }
}

void keyPressed() {
  human1y = 2900;
  human2y = 200;
  
}

void keyReleased() {
  human1y = 290;
  human2y = 1900;
  
}