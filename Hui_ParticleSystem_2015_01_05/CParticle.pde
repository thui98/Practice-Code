class Particle {
  PVector loc, vel, acc;
  float sz, pcolor, psaturation, ptransparency;

  Particle(float x, float y) {// takes preset values for the location
    loc= new PVector(x, y);
    vel= PVector.random2D();
    acc= new PVector(0, .1);
    sz= random(10, 20);
    ptransparency=100;
    pcolor= 100;
  }

  Particle(float x, float y, float tempc, float tempsat) {// takes preset values for the location, color, and saturation. Used for superboost particles
    loc= new PVector(x, y);
    vel= PVector.random2D();
    acc= new PVector(0, .7);
    sz= random(10, 20);
    ptransparency=100;
    pcolor= tempc;
    psaturation= tempsat;
  }

  void display() {//displays particles as ellipses
    fill(pcolor, psaturation, 100, ptransparency); 
    ptransparency-=1;//particle becomes less transparent
    ellipse(loc.x, loc.y, sz, sz); 
    
  }
  void move() {// makes particles fall
    vel.add(acc);
    loc.add(vel);
  }

  void newPlace() {// assigns a new velocity and location to the particle. 
    loc.set(width-20, height-(height-20));
    vel = PVector.random2D();
    ptransparency=100; //resets transparency to 100
  }
  boolean check() { //checks if particle has hit a certain y-value
    if (loc.y>height/1.5) {
      return true;
    } else {
      return false;
    }
  }
}

