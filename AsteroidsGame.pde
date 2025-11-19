Spaceship space1 = new Spaceship();
Star[] nightSky = new Star[200];

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++) {
     nightSky[i] = new Star(); 
  }
} 

public void keyPressed() {
  if(key == ' ') {
    space1.setDirectionX(0); 
    space1.setDirectionY(0);
    space1.setX((int)(Math.random()*500));
    space1.setY((int)(Math.random()*500));
  }
  if(key == 'w') {
    space1.accelerate(.2);
  }
  if(key == 'a') {
    space1.turn(-10);
  }
  if(key == 's') {
    space1.accelerate(-.2);
  }
  if(key == 'd') {
    space1.turn(10);
  }
}

public void draw() 
{
  background(0,0,0);
  
  // Draw all the stars
  for(int i = 0; i < nightSky.length; i++) {
    nightSky[i].show(); 
  }

  // Draw and move the spaceship
  space1.show();
  space1.move();
  space1.decellerate();
}
