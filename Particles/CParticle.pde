class Particle {
  PVector loc, vel;
  float d, pcolor;

  Particle(float x, float y) {
    loc= new PVector(x, y);
    vel= PVector.random2D();
    d= random(10, 20);
    pcolor= random(360);
  }
  void display() {
    ellipse(loc.x, loc.y, d, d); 
    fill(pcolor, 100, 100, 100); 
}
void move() {
  loc.add(vel); 
}
void edge() {
  if (loc.y>height-d/2) {
    d=0;
  }

  if (loc.x>width-d/2) {
    d=0;
  }
  if (loc.x<0+d/2) {
    d=0;
  }
}

}
