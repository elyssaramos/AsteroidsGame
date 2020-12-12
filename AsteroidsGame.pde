//your variable declarations here
Spaceship falcon = new Spaceship();
Star [] stargirl = new Star [200];
ArrayList <Asteroid> kuiperBelt = new ArrayList <Asteroid> ();
public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < stargirl.length; i++){
    stargirl[i] = new Star();
  }
  for (int i = 0; i <= 20; i++){
    kuiperBelt.add(new Asteroid());
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
    for (int i = 0; i < kuiperBelt.size(); i++){
    kuiperBelt.get(i).show();
    kuiperBelt.get(i).move();
    float d = dist((float)falcon.getX(), (float)falcon.getY(), (float)kuiperBelt.get(i).getX(), (float)kuiperBelt.get(i).getY());
    if (d < 20){
      kuiperBelt.remove(i);
    }
  }
}
public void keyPressed() // pushes the ship in the direction
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
