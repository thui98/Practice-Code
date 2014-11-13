int [] numberArray= {0,1,2,3,4};

void setup(){
size(500,500);  
textSize(20);
background(0);
}

void draw(){
 
  
for(int i=0; i<numberArray.length;i++){
  text(numberArray[i],0, 20 + i*50);

}

//for(int j=0; j<numberArray.length; j++){
// text(numberArray[j],20+j*50, 20); 
//}

}

//  if(i>=numberArray.length){
//  i=0;
//  }

