class Pit{
  PVector loc;
 float size;
 
 Pit(){
   size= 30;
   loc= new PVector (width/2, height/2);
 }
// void eat(){
//   if(loc.dist(other.loc)<d/2+other.d/2){
//   
// }
 void display(){
  ellipse(loc.x,loc.y, size,size); 
 }
}
