class Star{
  private int myX, myY;
  private double mySize;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void setSize (double starSize){
    mySize = starSize * Math.random()*3;
  }
  public void show(){
    // draws star
    fill(255, 255, 255);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
}
