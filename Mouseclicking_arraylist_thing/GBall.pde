class GBall {
  PVector loc, vel, acc;
  float d, bcolor;

  GBall() {
    loc= new PVector(random(width),random(height/2));
    vel= PVector.random2D();
    acc= new PVector(0,.1);
    d= random(20,50);
    bcolor= frameCount%360;
  }
  
  GBall(float tempd, float tempbcolor, float templocx, float templocy){
 loc= new PVector(templocx, templocy);
//loc= new PVector (400,200);
    vel= PVector.random2D();
    acc= new PVector(0,.05);
    d= tempd;
    bcolor= tempbcolor;
  }
  
  void display() {

    ellipse(loc.x, loc.y, d, d);
    textSize(30);
  } 
  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    if (loc.y>height-d/2) {
      vel.y= -abs(vel.y);
      
    }
    
    if(loc.x>width-d/2){
     vel.x= -abs(vel.x); 
    }
    if(loc.x<0+d/2){
     vel.x= abs(vel.x); 
    }
  }
  void ballColor(){
  fill(bcolor,100,100, 50);
  }
  
  void collision(GBall other){
   if(loc.dist(other.loc)<d/2+other.d/2){
    vel= PVector.sub(loc,other.loc);
    vel.normalize();
   }
   } 
   void newPlace(){
     loc.set(mouseX, mouseY);
    vel = PVector.random2D();
   }
  }

