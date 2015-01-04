class BHole{
  PVector loc1,loc2;
 float d, pcolor;
 
 BHole(){
   d= 30;
   loc1= new PVector (width/4, height/1.75);
   loc2= new PVector(width-20, height-(height-20));
 }
 void take(Particle e){
   if(loc1.dist(e.loc)<d/2+e.d/2){
   e.newPlace();
   }
 }
 void display(){
  
   
  ellipse(loc1.x,loc1.y, d+20,d+20); 
  
  ellipse(loc2.x,loc2.y,d,d);
 }

}
