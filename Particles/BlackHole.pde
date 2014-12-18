class Pit{
  PVector loc;
 float d, pcolor;
 
 Pit(){
   d= 30;
   loc= new PVector (width/2, height/2);
   pcolor=260;
 }
// void take(Particle e){
//   if(loc.dist(e.loc)<d/2+e.d/2){
//   e.newPlace();
//   }
// }
 void display(){
  
  ellipse(loc.x,loc.y, d,d); 
 }
 void pitColor(){
  fill(pcolor,55,35,50); 
 }
}
