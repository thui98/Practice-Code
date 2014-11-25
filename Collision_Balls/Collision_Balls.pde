int numBall=50;
PVector [] loc= new PVector [numBall];
PVector [] vel= new PVector [numBall];
PVector [] acc= new PVector [numBall];
//PVector mouse;
float [] sz= new float [numBall];
float [] mass=new float [numBall];
int minDiam=10;
int maxDiam=40;

void setup() {
  size(800, 800);
  fill(0,100,200);

  for (int i=0; i<numBall; i++) {
    sz[i]=random(minDiam, maxDiam); 
    loc[i]= new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    vel[i]= PVector.random2D(); 
    acc[i]= new PVector (0, 0);
    mass[i]=map(sz[i], minDiam, maxDiam, .5, 1.5);
  }
}

  void draw() {
    background(0);
    
    for ( int i=0; i<numBall; i++) {

      vel[i].add(acc[i]);
      loc[i].add(vel[i]);

      for (int j=0; j<numBall; j++) {
        if (i!=j) {

          if (loc[i].dist(loc[j])<sz[i]/2+sz[j]/2) {
            vel[i]= PVector.sub(loc[i], loc[j]);
            vel[i].normalize();
            vel[i].div(mass[i]);
            
          }
        }
      }
    
    ellipse(loc[i].x,loc[i].y,sz[i],sz[i]);
    if(loc[i].x+sz[i]/2>width||loc[i].x-sz[i]/2<0){
     vel[i].x*= -1;
    }
    if(loc[i].y+sz[i]/2>height||loc[i].y-sz[i]/2<0){
     vel[i].y*= -1 ;
    }
  }
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

