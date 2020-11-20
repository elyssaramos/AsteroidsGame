//your variable declarations here
Spaceship falcon = new Spaceship();
Star [] stargirl = new Star [200];
public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < stargirl.length; i++){
    stargirl[i] = new Star();
    }
}
public void draw() 
{
  background(0);
  falcon.show();
  falcon.move();
    for (int i = 0; i < stargirl.length; i++){
    stargirl[i].setSize(0.5);
    stargirl[i].show();
    }
}
public void keyPressed() // pushes ship in the point direction
{
  if(key == 'a'){
    falcon.turn(-5);
  }
  else if(key == 'd'){
    falcon.turn(5);
  }
  else if(key == 'w'){
    falcon.accelerate(0.5);
  }
  else if(key == 's'){
    falcon.hyperspace(0);
  }
}
