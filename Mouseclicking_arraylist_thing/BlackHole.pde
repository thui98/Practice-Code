class Pit{
  PVector loc;
 float d;
 
 Pit(){
   d= 30;
   loc= new PVector (width/2, height/2);
 }
 void take(GBall e){
   if(loc.dist(e.loc)<d/2+e.d/2){
   e.newPlace();
   }
 }
 void display(){
  
  ellipse(loc.x,loc.y, d,d); 
 }
}
