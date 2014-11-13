void setup() {
  size(500, 500);
}

void draw() {
  background(100);
  randomSq(mouseX, mouseY, 50); 

  if (mouseX>width/2) {
    randomCircle(mouseX-width/3, mouseY, 50);
  }
  
  if(mouseX>0&&mouseX<width/2){
   diamond(mouseX, mouseY-height/3, 50); 
  }
}

void randomSq (int x, int y, int sz) {
  fill(random(255), random(255), random(255));
  //rotate(PI/4);
  rect(x-sz/2, y-sz/2, sz, sz);
}

void randomCircle(int x, int y, int sz) {
  fill(random(255), random(255), random(255));
  ellipse(x, y, sz, sz);
}

void diamond(int x, int y, int sz) {
  fill(random(255), random(255), random(255));
  rotate(PI/4);
  rect(x, y, sz, sz);
}

