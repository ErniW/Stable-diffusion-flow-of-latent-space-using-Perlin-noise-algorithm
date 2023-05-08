float[][] latentSpace = new float[77][768];

void setup(){
  size(768, 77);
  background(255);
  
  for(int row=0; row<77; row++){
    for(int col=0; col<768; col++){
      latentSpace[row][col] = random(-1,1);
    }
  }
}

float t = 0;

void draw(){

  float dx = 0;
  
  for(int row=0; row<77; row++){
    
    float dy = 0;
    dx += 0.001;
    
    for(int col=0; col<768; col++){
      dy += 0.001;
      
      float n = (noise(dx,dy, t) * 2) - 1;
      float curr = latentSpace[row][col] + n;
      
      curr *= 255;
      curr *= cos(curr * 0.2);
      
      color c = color(curr);
       
      set(col, row, c);
    }
  }
  t += 0.005;
}
