int [] x={150,250,350};
int [] y={150,250,350};
int [] d={20,20,20};
int [] xspeed={5,10,4};
int [] yspeed={4,6,10};

void setup(){
  size(500,500);
  
}

void draw(){
  background(0);
  
  for(int i=0; i<x.length;i++){
  
  ellipse(x[i],y[i],d[i],d[i]);
  
  x[i]+=xspeed[i];
  y[i]+=yspeed[i];
  
  if(x[i]+d[i]/2>width||x[i]-d[i]/2<0){
   xspeed[i]=-xspeed[i]; 
  }
  if(y[i]+d[i]/2>height||y[i]-d[i]/2<0){
  yspeed[i]=-yspeed[i];
  }
  }
}
