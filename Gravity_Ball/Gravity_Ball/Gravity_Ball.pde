float locX, locY;
float sz;
float velX, velY;
float gravity;
float accX;


void setup () {
  size(800, 600);
  locX= width/2;
  locY=0;
  sz=50;
  gravity=1;
  velX=6;
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
    velY*=.8;
  }

  if (locX-sz/2<0) {
    velX=abs(velX)*.8;
  }

  if (locX+sz/2>width) {
    velX=-abs(velX)*.8;
  }
}

