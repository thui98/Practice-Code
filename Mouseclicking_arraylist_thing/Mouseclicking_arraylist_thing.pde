ArrayList<GBall> balls = new ArrayList<GBall> ();
void setup(){
  size(800,600);
    balls.add(new GBall (100,100,100,100));
}

void draw(){
  background(0);
  for(int i=0; i<balls.size(); i++){
   GBall b= balls.get(i);
  b.display();
 b.move();
b.bounce(); 
  }
  
}
void mousePressed(){
 balls.add(new GBall (100,100,mouseX, mouseY)); 
}

