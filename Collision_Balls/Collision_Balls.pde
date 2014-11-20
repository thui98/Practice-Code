PVector loc, vel, acc;
PVector loc2, vel2, acc2;
int sz,sz2;

void setup() {
  size(400, 400);
  loc= new PVector(width/2, height/2);
  vel= PVector.random2D();
  acc= new PVector();
  sz= 40;
  loc2= new PVector(width/2, height/2);
  vel2= PVector.random2D();
  acc2= new PVector();
  sz2= 80;
}

void draw () {

  background(0);

  vel.add(acc);
  loc.add(vel);
  vel2.add(acc2);
  loc2.add(vel2);
  if (loc.dist(loc2) < sz/2+sz2/2) {


    if (loc.x< loc2.x) {
      vel.x =-abs(vel.x);
    }
    if (loc.x> loc2.x) {
      vel.x =abs(vel.x);
    }
    if (loc.y> loc2.y) {
      vel.y =-abs(vel.x);
    }
    if (loc.y< loc2.y) {
      vel.y =abs(vel.x);
    }
  }

  if (loc.x>width-sz/2||loc.x<0+sz/2) {
    vel.mult(-1);
  }
  if (loc.y>height-sz/2 || loc.y<0+sz/2) {
    vel.mult(-1);
  }
  if (loc2.x>width-sz/2||loc2.x<0+sz/2) {
    vel.mult(-1);
  }
  if (loc2.y>height-sz/2 || loc2.y<0+sz/2) {
    vel.mult(-1);
  }

  ellipse(loc.x, loc.y, sz, sz);
  ellipse(loc2.x,loc2.y,sz2,sz2);
}

