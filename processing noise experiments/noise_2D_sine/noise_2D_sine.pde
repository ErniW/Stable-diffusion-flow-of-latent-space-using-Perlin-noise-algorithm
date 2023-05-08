void setup(){
  size(400,400);
}

float t=0;

void draw(){

  float dx = 0;
  
  for(int x = 0; x<width; x++){
    
    float dy = 0;
    dx += 0.01;
    
    for(int y = 0; y<height;y++){
      dy += 0.01;
      
      float c = noise(dx, dy, t)*255;
      
      //float z = (cos(c*0.2) + 1) / 2;
      
      float z = cos(c * 0.4)* sin(c *0.5);
      c*= z;
      
      //c = floor(c) * 2;
      //c*= cos(c* 0.2) * sin(c*t/2);
      //c = (c * 2) - c;
      set(x,y, color(c));
      
    }
  }
  t += 0.01;
};
