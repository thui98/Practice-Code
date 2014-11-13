void setup(){
  size(600,600);
  textSize(30);
  background(0);
  
  
}

void draw(){
 
  text( pThrm(5,5), width/2,height/2);
  
}

float pThrm (float a, float b){
  float c;
  c= sqrt(sq(a)+sq(b));
  return c;
  
}
