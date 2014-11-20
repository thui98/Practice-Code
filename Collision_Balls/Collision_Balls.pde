PVector loc;
PVector mouse;
int sz;

void setup(){
 size(800,800);
 loc= new PVector(width/2,height/2);
 mouse= new PVector(mouseX, mouseY); 
 sz= 100;
}

void draw (){
  background(255);
  
  if(loc.dist(mouse) < sz/2){
   loc.set(random(width),random(height)); 
  }
   ellipse(loc.x,loc.y, sz,sz);
  
}
