class BHole {
  PVector loc1, loc2;
  float d, pcolor;

  BHole() {
    d= 30;//size of holes
    loc1= new PVector (width/4, height/1.75);//location of black hole
    loc2= new PVector(width-20, height-(height-20));//location of portal
  }
  void take(Particle e) {// if a particle touhes the black hole, it will transport it to a "new place"
    if (loc1.dist(e.loc)<d/2+e.d/2) {
      e.newPlace();
    }
  }
  void display() {// displays the black hole and it's portal
    ellipse(loc1.x, loc1.y, d+20, d+20); //black hole
    ellipse(loc2.x, loc2.y, d, d);//portal
  }
}

