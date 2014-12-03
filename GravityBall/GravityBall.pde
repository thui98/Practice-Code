GBall[] b= new GBall [50] ;

void setup() {
  size(800, 600);
  
  for(int i=0; i<b.length; i++){
  b[i]= new GBall();
}
}

void draw() {
  background(0);

for(int i=0; i<b.length; i++){
  b[i].display();
  b[i].move();
  b[i].bounce();
}
}

class GBall {
  PVector loc, vel, acc;
  float d;

  GBall() {
    loc= new PVector(random(width), random(height/2));
    vel= PVector.random2D();
    acc= new PVector(0,.3);
    d= random(50,80);
  }
  void display() {
    fill(0,50,100);
    ellipse(loc.x, loc.y, d, d);
  } 
  void move() {
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {

    if (loc.y>height-d/2 || loc.y<0+d/2) {
      vel.mult(-1);
    }
  }
}

