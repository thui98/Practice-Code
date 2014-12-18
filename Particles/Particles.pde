ArrayList<Particle> parts= new ArrayList<Particle>();
PImage ship;
PImage moon;
int d=100;
void setup(){
  colorMode(HSB, 360,100,100,100);
  size(800,600);
  ship= loadImage("Spaceship.png");
  moon= loadImage("Moon.jpg");
}

void draw(){
  noCursor();
 background(0);
 fill(250);
  text("Press down and drag the mouse for a super boost.",0,20);
 image(moon,0,height/1.6,width,height/1.5); 
 
  parts.add(new Particle (mouseX,mouseY));
for(int i=parts.size()-1 ;i>=0; i--){
 Particle p= parts.get(i);
 p.display();
 p.move();
 if(p.check()){
parts.remove(i);
 }
 
// for(int j=0;j<parts.size; j++){
//  if(i!=j){
//   CPartcle 
//  } 
// }
 
}
image(ship,mouseX-50,mouseY-80,d,d); 

}
void mouseDragged(){
    parts.add(new Particle (mouseX,mouseY,random(0,70),100));
}

