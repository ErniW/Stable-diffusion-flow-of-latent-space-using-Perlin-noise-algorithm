float numberOfSteps = 100;

void setup(){
  size(600,600);
  background(255);
  strokeWeight(10);
}

PVector pos = new PVector(100,300);
PVector target = new PVector(200,100);
float d = PVector.dist(pos, target);

float time = 0;

void draw(){
  PVector t = PVector.sub(target, pos);
  PVector perpendicular = PVector.fromAngle(t.heading()-HALF_PI);
  
  float distortion = (noise(time) * 2) - 1;
  
  float lerp = map(t.mag(), 0, d, 0, PI);
  lerp = sin(lerp);

  perpendicular.setMag(lerp * distortion * 150);
  perpendicular.add(pos);
  
  PVector dir = t.copy();
  dir.setMag(d/numberOfSteps);
  pos.add(dir);
  
  point(perpendicular.x, perpendicular.y);
  
  time += 0.02;
}
