int numBall=10;
PVector [] loc= new PVector [numBall];
PVector [] vel= new PVector [numBall];
PVector [] acc= new PVector [numBall];

//PVector mouse;
int [] sz= new int [numBall];


void setup(){
 size(800,800);
// loc= new PVector(width/2,height/2);
// loc2= new PVector (width/2+100,height/2+100);
////mouse= new PVector(); 
//vel= PVector.random2D();
//vel2=PVector.random2D();
//acc= new PVector();
//acc2= new PVector();
//sz= 200;
//sz2= 180;

  for( int i; i=0; i++){
    sz[i]=random(20, 40); 
    loc[i]= new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    vel[i]= PVector.random2D(); 
    acc[i]= new PVector (0,0);
    
}

void draw (){
//   mouse.set(mouseX,mouseY);
//   acc.set(.1,.1);
  background(0);
  
  for( int i; i=0; i++){
    
  vel[i].add(acc[i]);
  loc[i].add(vel[i]);
  
  if(loc[i].dist(loc[
  }
//  vel.add(acc);
//  loc.add(vel);
//  vel2.add(acc2);
//  loc2.add(vel2);
//  if(loc.dist(loc2) < sz/2){
// 
//  
//  if (loc.x< loc2.x){
//   vel.x =-abs(vel.x);
//  vel2.x=-abs(vel2.x); 
//  }
//  if (loc.x> loc2.x){
//   vel.x =abs(vel.x);
//  vel2.x =abs(vel2.x);
//  }
//  if (loc.y> loc2.y){
//   vel.y =-abs(vel.x); 
//   vel2.y =-abs(vel2.x); 
//  }
//  if (loc.y< loc2.y){
//   vel.y =abs(vel.x); 
//   vel2.y =abs(vel2.x); 
//  }
//  }
//  
//  if(loc.x>width-sz/2||loc.x<0+sz/2){
//   vel.mult(-1); 
//  }
//  if(loc.y>height-sz/2 || loc.y<0+sz/2){
//   vel.mult(-1); 
//  }
//
//  if(loc2.x>width-sz2/2||loc2.x<0+sz2/2){
//   vel2.mult(-1); 
//  }
//  if(loc2.y>height-sz2/2 || loc2.y<0+sz2/2){
//   vel2.mult(-1); 
//  }
//  
//  if(dist(loc.x,loc.y,loc2.x,loc2.y)<
//   ellipse(loc.x,loc.y, sz,sz);
////   ellipse(mouse.x,mouse.y,sz2,sz2);
//   ellipse(loc2.x,loc2.y,sz2,sz2);
  
}
