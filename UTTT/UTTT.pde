color highlight = color(200);
boolean handCursor;

Unit test;

void setup(){
  background(255);
  size(600, 720);
  
  int leftBound = 10;
  int rightBound = width - 10;
  int downBound = 10;
  int upBound = height - 10;
  //lines
  for (int i = 0; i < 10; i ++){
    if (i % 3 == 0){
      strokeWeight(2);
    } else{
      strokeWeight(1);
    }
    line((rightBound - leftBound) / 9.0 * i + leftBound, downBound, (rightBound - leftBound) / 9.0 * i + leftBound, upBound);
    line(leftBound, (upBound - downBound) / 9.0 * i + downBound, rightBound, (upBound - downBound) / 9.0 * i + downBound);
  }
  
  test = new Unit (0, 0, width / 9, height / 9, "left");
}

void draw(){
  //test.update();
}
