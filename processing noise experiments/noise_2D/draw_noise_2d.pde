float drawNoise2D(int posX, int posY, float step, float time){
  
  float dx = 0;
  
  for(int col=0; col<w; col++){
    float dy = 0;
    dx += step;
    
    for(int row=0; row<h; row++){
      dy += step;
      
      int x = col + posX;
      int y = row + posY;
      
      float n = noise(dy, dx + time) * 255;
      set(x,y,color(n));     
    }
  }
  
  return time += 0.01;
};

float drawNoise2DBoth(int posX, int posY, float step, float time){
  
  float dx = 0;
  
  for(int col=0; col<w; col++){
    float dy = 0;
    dx += step;
    
    for(int row=0; row<h; row++){
      dy += step;
      
      int x = col + posX;
      int y = row + posY;
      
      float n = noise(dy + time, dx + time) * 255;
      set(x,y,color(n));     
    }
  }
  
  return time += 0.01;
};
