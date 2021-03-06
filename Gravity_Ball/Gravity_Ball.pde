float locX, locY;
float sz;
float velX, velY;
float gravity;
float accX;


void setup () {
  size(800, 600);
  locX= width/2;
  locY=0;
  sz=20;
  gravity=1;
  velX=0;
  velY=0;
}

void draw () {
  background(0);
  ellipse(locX, locY, sz, sz); 

  velY+=gravity;
  velX+=accX;
  locX+=velX;
  locY+=velY;

  if (locY+sz/2>height) {
    velY*=-1; 
    locY=height-sz/2;
  }
}

