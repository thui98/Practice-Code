PVector loc,vel,acc;
PVector mouse;
int sz;

void setup(){
 size(800,800);
 loc= new PVector(width/2,height/2);
mouse= new PVector(); 
vel= PVector.random2D();
acc= new PVector();
sz= 100;
}

void draw (){
   mouse.set(mouseX,mouseY);
//   acc.set(.1,.1);
  background(0);
  
  vel.add(acc);
  loc.add(vel);
  if(loc.dist(mouse) < sz/2){
 
  
  if (loc.x< mouse.x){
   vel.x =-abs(vel.x); 
  }
  if (loc.x> mouse.x){
   vel.x =abs(vel.x); 
  }
  if (loc.y> mouse.y){
   vel.y =-abs(vel.x); 
  }
  if (loc.y< mouse.y){
   vel.y =abs(vel.x); 
  }
  }
  
  if(loc.x>width-sz/2||loc.x<0+sz/2){
   vel.mult(-1); 
  }
  if(loc.y>height-sz/2 || loc.y<0+sz/2){
   vel.mult(-1); 
  }

   ellipse(loc.x,loc.y, sz,sz);
  
}
