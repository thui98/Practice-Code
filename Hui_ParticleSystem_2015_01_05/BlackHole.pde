class BHole {
  PVector loc1, loc2; //declares locations for black hole and portal
  float sz;//delcares the size

  BHole() {
    sz= 30;//initializes size of holes
    loc1= new PVector (width/4, height/1.75);//initializes location of black hole
    loc2= new PVector(width-20, height-(height-20));//initializes location of portal
  }
  void take(Particle e) {// if a particle touches the black hole, it will transport it to a "new place"
    if (loc1.dist(e.loc)<sz/2+e.sz/2) {
      e.newPlace();
    }
  }
  void display() {// displays the black hole and the portal
  
  fill(260,50,50,50);
    ellipse(loc1.x, loc1.y, sz+20, sz+20); //ellipse that is the black hole
    fill(260,50,50,50);
    ellipse(loc2.x, loc2.y, sz,sz);//ellipse that is the portal
  }
}

