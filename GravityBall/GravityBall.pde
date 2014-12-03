GravityBall b;

void setup(){
  size(800,600);
  b= new GravityBall();
}

void draw(){
  background(0);
 
  b.move();
  b.bounce();
  b.display();
  
}

class GravityBall{
 PVector loc,vel,acc;
 float d;

GravityBall(){
 loc= new PVector(random(width/2), random(height/2));
 vel= PVector.random2D();
 acc= new PVector(0.1,.5);
 d= random(10,50);

}

void display(){
 ellipse(loc.x,loc.y,d,d);
} 

void bounce(){
   if(loc.x>width-d/2||loc.x<0+d/2){
   vel.mult(-1); }
   
   if(loc.y>height-d/2 || loc.y<0+d/2){
   vel.mult(-1); 
   
   }
}

void move(){
  vel.add(acc);
  loc.add(vel);
}

}



