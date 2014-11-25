int flakes;
PVector [] vel= new PVector[flakes];
PVector [] acc= new PVector[flakes];
PVector [] loc= new PVector[flakes];
int sz;

void setup(){
 size(800,600);
 vel= new PVector();
 acc= new PVector (random(0,.1));
 loc= new PVector(random(width), random(-height)-sz/s);
 
}

void draw(){
  background(0);
  for(int i=0; i<flakes;i++){
   vel.add(acc);
  loc.add(vel); 
  }
  ellipse(loc[i].x,loc[i].y,sz,sz);
}
