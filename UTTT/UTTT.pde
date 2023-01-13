

void setup(){
  background(255);
  size(600, 720);
  //lines
  for (int i = 1; i < 9; i ++){
    if (i % 3 == 0){
      strokeWeight(2);
    } else{
      strokeWeight(1);
    }
    line(i * (width - 0) / 9, 0, i * (width - 0) / 9, height);
    line(0, i * (height - 0) / 9, width, i * (height - 0) / 9);
  }
}
