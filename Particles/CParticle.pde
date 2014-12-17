class Particle {
  PVector loc, vel,acc;
  float d, pcolor, t;

  Particle(float x, float y) {
    loc= new PVector(x, y);
    vel= PVector.random2D();
    acc= new PVector(0,.08);
    d= random(10, 20);
    t=100;
//    pcolor= 0;
    }

  void display() {
    ellipse(loc.x, loc.y, d, d); 
    fill(100, 10, 100, t); 
    t-=2;
}
void move() {
  vel.add(acc);
  loc.add(vel); 
}
//void transparent(){
// for(int j=100; j>0; j--){
//  fill(100, 10, 100, j);
// } 
//}
boolean check(){
 if(loc.y>height/1.5){
  return true;
 } 
 else{
  return false; 
 }
}
//void takeOut(){
//  
//}
//boolean check(){
//  if (loc.y-d/2>height){
//    return true;
//  }
//   else if (loc.x-d/2>width) {
//return true;
//  }
//  else if (loc.x+d/2<0) {
//    return true;
//  }
//  else{ 
//    return false;
//  }
//    
//}
void edge() {
  if (loc.y-d/2>height) {
    d=0;
  }

  if (loc.x-d/2>width) {
    d=0;
  }
  if (loc.x+d/2<0) {
    d=0;
  }
}

}
