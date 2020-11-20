class Spaceship extends Floater  
{   
    public Spaceship() // constructor
    {
    corners = 10;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0;
    yCorners[0] = -9;
    xCorners[1] = 12;
    yCorners[1] = -3;
    xCorners[2] = 3;
    yCorners[2] = -3;
    xCorners[3] = 3;
    yCorners[3] = 3;
    xCorners[4] = 12;
    yCorners[4] = 3;
    xCorners[5] = 0;
    yCorners[5] = 9;
    xCorners[6] = -6;
    yCorners[6] = 9;
    xCorners[7] = -12;
    yCorners[7] = 3;
    xCorners[8] = -12;
    yCorners[8] = -3;
    xCorners[9] = -6;
    yCorners[9] = -9;
    myColor = color(255, 255, 255);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = (int)(Math.random() * 360);
    }
    public void hyperspace(double x){
      myColor = color(255, 255, 255, 50);
      myXspeed = myYspeed = x;
      myPointDirection = (int)(Math.random() * 360);
      myCenterX = myCenterY = (int)(Math.random() * 500);
    }
}
