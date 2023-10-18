int w = 768;
int h = 77;

void setup(){
  size(900,700);
  background(255);
};

float time = 0;
float time2 = 0;
float time3 = 0;
float time4 = 0;
float time5 = 0;
float time6 = 0;

void draw(){
  background(255);

  int posX = (width - 768) / 2;
  int posY = 100;
  
  fill(0);
  textSize(36);
  text("Perlin noise samples", posX, posY - 36);
  
  time = drawNoise2D(posX, posY, 0.01, time);
  
  posY += 100;
  
  time2 = drawNoise2D(posX, posY, 0.04, time2+0.03);
  
  posY += 100;
  time3 = drawNoise2DBoth(posX, posY, 0.01, time3);
  
  posY += 100;
  time4 = drawNoise3D(posX, posY, 0.01, time4);
  
  posY += 100;
  time5 = drawNoise3DMove(posX, posY, 0.01, time5);
  
  posY += 100;
  time6 = drawNoise1D(posX, posY, 0.01, time6);
};
