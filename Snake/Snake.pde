int count =50;
float []x= new float[count];
float []y= new float[count];
int speed=2;

void setup(){
  size(500,500);
 for(int i=0; i<count; i++){
  x[i]= mouseX;
  y[i]=mouseY;
 }
  
}

void draw(){
  background(0);
  
 if(keyPressed){
   if(key=="s"){
     y[count-1]=speed;}
     if(key=="w"){
       y[count-1]=-speed;}
  
//  x[count-1]=mouseX;
//  y[count-1]=mouseY;
  for(int i=0;i<count-1;i++){
  x[i]= x[i+1];
  y[i]= y[i+1];
  }
  for(int i=0; i<count;i++){
   ellipse(x[i],y[i],1+i*1,1+i*1); 
  } 
   
}
