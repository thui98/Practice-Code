ArrayList<Particle> parts= new ArrayList<Particle>();
PImage ship;
PImage moon; 
int d=100;//initializes and declares size of spaceship
void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 600);
  ship= loadImage("Spaceship.png");
  moon= loadImage("Moon.jpg");
}

void draw() {
  noCursor();
  background(0);
  fill(250);
  text("Press down and drag the mouse for a super boost.", 0, 20);//instructions to tell user about mouse dragged option
  image(moon, 0, height/1.6, width, height/1.5); 

  parts.add(new Particle (mouseX, mouseY));//continuously adds particles where the mouse is
  for (int i=parts.size ()-1; i>=0; i--) {
    Particle p= parts.get(i);
    p.display();//calls display function
    p.move();// calls move function

    BHole b = new BHole();
    b.display();
    b.take(p);
    if (p.check()) {//checks to see if particle hits at certain y value and removes it if the case is true
      parts.remove(i);
    }
  }
  image(ship, mouseX-50, mouseY-80, d, d);
}
void mouseDragged() {
  parts.add(new Particle (mouseX, mouseY, random(0, 70), 100));//adds red-orange particles when mouse is dragged
}

