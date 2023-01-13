color highlight = color (0, 255, 255);
boolean handCursor;

ArrayList<Unit> units = new ArrayList<Unit>();

void setup(){
  background(255);
  size(600, 720);
  rectMode(CENTER);
  
  int leftBound = 10;
  int rightBound = width - 10;
  int downBound = 10;
  int upBound = height - 10;
  
  float wid = (rightBound - leftBound) / 9.0;
  float hei = (upBound - downBound) / 9.0;

  for (int i = 0; i < 10; i ++){
    //lines
    if (i % 3 == 0){
      strokeWeight(2);
    } else{
      strokeWeight(1);
    }
    line(i * wid + leftBound, downBound, i * wid + leftBound, upBound);
    line(leftBound, i * hei + downBound, rightBound, i * hei + downBound);
  }
  
  for (int i = 0; i < 9; i ++){
    for (int j = 0; j < 9; j ++){
      //units
      units.add(new Unit (i * wid + leftBound + wid / 2, j * hei + downBound + hei / 2, wid - 5, hei - 5, "left"));
    }
  }
}

void draw(){
  for (Unit curr : units){
    curr.update();
  }
}
