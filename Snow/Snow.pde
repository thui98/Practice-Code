int flakes=50;
PVector [] vel= new PVector[flakes];
PVector [] acc= new PVector[flakes];
PVector [] loc= new PVector[flakes];
float [] sz= new float[flakes];
PImage snow;

void setup(){
 size(800,600);
snow= loadImage("Snowflake.png");
  
 for(int i=0;i<flakes;i++){
    sz[i] = random(20,55);
    loc[i] = new PVector(random(width), random(-height*1.5, -sz[i]/2));
    vel[i] = new PVector(0, random(1));
    acc[i] = new PVector(0, .01);
 }
 
}

void draw(){
  background(0,0,50);
  fill(255);
  for(int i=0; i<flakes;i++){
   vel[i].add(acc[i]);
  loc[i].add(vel[i]); 
  
     image(snow,loc[i].x,loc[i].y,sz[i],sz[i]); 
//  ellipse(loc[i].x,loc[i].y,sz[i],sz[i]);
if (loc[i].y-sz[i]/2>height){
  loc[i].set(random(width), random(-height, -sz[i]/2));
      vel[i].set(0, 1);
}

}

}
