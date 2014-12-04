GBall[] b= new GBall [150] ;


void setup() {
  size(800, 600);
   colorMode(HSB, 360,100,100,100);
  
  for(int i=0; i<b.length; i++){
  b[i]= new GBall(i/2,i*2);
}

}

void draw() {
  background(0);

for(int i=0; i<b.length; i++){
  b[i].display();
  b[i].move();
  b[i].bounce();
  b[i].colorchange();
}

}

class GBall {
  PVector loc, vel, acc;
  float d, bcolor;

  GBall() {
    loc= new PVector(400,200);
    vel= PVector.random2D();
    acc= new PVector(0,.1);
    d= random(20,50);
    bcolor= frameCount%360;
  }
  
  GBall(float tempd, float tempbcolor){
 loc= new PVector(400,200);

    vel= PVector.random2D();
    acc= new PVector(0,.1);
    d= tempd;
    bcolor= tempbcolor;
  }
  
  void display() {
    
    ellipse(loc.x, loc.y, d, d);
  } 
  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
//if (loc.x>width-d/2 || loc.x<0+d/2) {
//      vel.x= -abs(vel.x);
//}
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
  void colorchange(){
  fill(bcolor,100,100);
  }
}

