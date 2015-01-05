ArrayList<Particle> parts= new ArrayList<Particle>();
PImage ship;//declares ship image
PImage moon; //declares moon image
int sz=100;//initializes and declares size of spaceship
int maxParticles=50;// initializes and declares the amount of particles  
BHole b;//declares BHole as b


void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 600);
  ship= loadImage("Spaceship.png");//initializes spaceship
  moon= loadImage("Moon.jpg");//initializes moon 
  b=new BHole();// initializes b as a new BHole
      
}

void draw() {
  noCursor();
  background(0);
  fill(250);
  text("Press and drag the mouse for a super boost.", 0, 20);//instructions to tell user about mouse dragged option
  image(moon, 0, height/1.6, width, height/1.5); //displays moon at a position

if(parts.size() <maxParticles){//if the amount of particles in the array is less than the max amount set, more particles will be added at the mouse's location
  parts.add(new Particle (mouseX, mouseY));
}
  for (int i=parts.size ()-1; i>=0; i--) {//redraws the particles 
    Particle p= parts.get(i);
    p.display();//calls CParticle display method
    p.move();// calls move method
   
b.display();// calls BlackHole display method
    b.take(p);// calls take method
    if (p.check()) {//checks to see if particle hits at a certain y-value and removes it if the case is true
      parts.remove(i);
    }
  
  }
  image(ship, mouseX-50, mouseY-80, sz, sz);//displays space ship at a position


}
void mouseDragged() {
  if(parts.size() <maxParticles){//if the amount of particles in the array is less than the max amount set, more particles will be added at the mouse's location
  parts.add(new Particle (mouseX, mouseY, random(0, 70), 100));//adds red-orange particles when mouse is dragged
}
}

