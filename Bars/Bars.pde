int w=30;

void setup() {
  size(550, 500);
}

void draw() {

  for (int i=0; i< width; i=i+w) {

    if ( mouseX>i && mouseX< i+w) {
      fill(random(255), 150, random(255));
    }
    
    else
    fill(0);
  
   rect(i, 0, w, height);
  }
 
}

