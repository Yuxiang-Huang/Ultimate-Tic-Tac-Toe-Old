public class Unit{
  float x; 
  float y;    
  float wid;
  float hei;
  boolean over = false;
  
  String pos;

  public Unit(float x, float y, float wid, float hei, String pos) {
    this.x = x;
    this.y = y;
    this.wid = wid;
    this.hei = hei;
    this.pos = pos;
  }
  
  void update() {
    //update over
    if (isOver()){
      over = true;
    } 
    else {
      over = false;
    }
    
    //display depend on over
    if (over){
      fill(highlight);
      handCursor = true;
    } else{
      fill(255);
    }
    stroke(255);
    rect(x, y, wid, hei);
    stroke(0);
    fill(0);
  }
    
  boolean isOver()  {
    if (mouseX >= x-wid/2 && mouseX <= x+wid/2 && 
        mouseY >= y-hei/2 && mouseY <= y+hei/2) {
      return true;
    } else {
      return false;
    }
  }
}
