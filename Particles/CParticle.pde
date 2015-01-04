class Particle {
  PVector loc, vel,acc;
  float d, pcolor, psaturation,ptransparency;

  Particle(float x, float y) {
    loc= new PVector(x, y);
    vel= PVector.random2D();
    acc= new PVector(0,.08);
    d= random(10, 20);
       ptransparency=100;
    pcolor= 100;
    }
    
    Particle(float x, float y,float tempc,float tempsat) {
    loc= new PVector(x, y);
    vel= PVector.random2D();
    acc= new PVector(0,.7);
    d= random(10, 20);
    ptransparency=100;
pcolor= tempc;
psaturation= tempsat;
    }

  void display() {//displays particles as ellipses
    ellipse(loc.x, loc.y, d, d); 
    fill(pcolor, psaturation, 100, ptransparency); 
    ptransparency-=1;//particle becomes less 
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
//void edge() {
//  if (loc.y-d/2>height) {
//    d=0;
//  }
//
//  if (loc.x-d/2>width) {
//    d=0;
//  }
//  if (loc.x+d/2<0) {
//    d=0;
//  }
//}

}
