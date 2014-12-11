ArrayList<GBall> balls = new ArrayList<GBall> ();
void setup(){
  size(800,600);
    balls.add(new GBall (random(20,45),100,100,100));
    
}

void draw(){
  background(0);
  for(int i=0; i<balls.size(); i++){
   GBall b= balls.get(i);
  b.display();
 b.move();
b.bounce();
  Pit p= new Pit();
  p.display();
  p.take(b);

for(int j=0; j<balls.size(); j++){
 if(i!=j){
   GBall c= balls.get(j);
  b.collision(c);
 } 
}
  }
 

}
void mousePressed(){
 balls.add(new GBall (random(20,45),100,mouseX, mouseY)); 
}

