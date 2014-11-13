
void setup() {
  size(500, 500);
}

void draw() {

  background(200);
  for (int y=0; y<height; y=y+30) {
    strokeWeight(3);
    line(0, y, width, y);
  }

  for ( int x=0; x<width; x=x+30) {
    strokeWeight(3);
    line(x, 0, x, height);
  }
}

