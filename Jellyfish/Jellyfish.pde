  PImage jellyfish;

void setup(){
  size(800,600);

  jellyfish= loadImage("Jellyfish.jpeg");

 
}

void draw(){
  
image(jellyfish, width/2,height/2,300,300);

}
