ArrayList<Particle> parts= new ArrayList<Particle>();
void setup(){
   colorMode(HSB, 360,100,100,100);
  size(800,600);
}

void draw(){
 background(0);
  parts.add(new Particle (mouseX,mouseY));
for(int i=0 ;i<parts.size(); i++){
 Particle p= parts.get(i);
 p.display();
 p.move();
 p.edge();
} 
}
