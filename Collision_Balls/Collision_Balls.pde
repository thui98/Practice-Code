PVector loc;
PVector mouse;
int sz;

void setup(){
 size(800,800);
 loc= new PVector(width/2,height/2);

 sz= 100;
}

void draw (){
   mouse= new PVector(mouseX, mouseY); 
  background(0);
  
  if(loc.dist(mouse) < sz/2){
   loc.set(random(width),random(height));

  }
  else 

   ellipse(loc.x,loc.y, sz,sz);
  
}
