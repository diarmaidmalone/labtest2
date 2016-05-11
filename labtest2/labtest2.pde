//Diarmaid Malone, C15527843, c15527843@mydit.ie

void setup()
{
  size(700, 800);
  frameRate(60);

  gameObjects.add(new Ground(0, 0));
  gameObjects.add(new Person(100, height/4 * 3));
  gameObjects.add(new Cloud(0, cloudYPosition1));
  gameObjects.add(new Cloud(0, cloudYPosition2));
  gameObjects.add(new Cloud(0, cloudYPosition3));
  gameObjects.add(new Cloud(0, cloudYPosition4));
  gameObjects.add(new Cloud(0, cloudYPosition5));
  gameObjects.add(new Plane(0, 0));
  gameObjects.add(new Box(0, 0));
  
  //Ground
  groundY = height/2;
  groundWidth = width;
  groundHeight = height/2;
  
  //Person
  personX = 100;
  personY = height/4 * 3;
}

boolean[] keys = new boolean[2000];

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

//Ground Variables
int groundX = 0;
int groundY;
int groundWidth;
int groundHeight;

//Cloud Variables
int cloudX;
int cloudY;
float cloudYPosition1 = random(-150, 150);
float cloudYPosition2 = random(-150, 150);
float cloudYPosition3 = random(-150, 150);
float cloudYPosition4 = random(-150, 150);
float cloudYPosition5 = random(-150, 150);

//Person Variables
int personX;
int personY;

color ground = color(50, 255, 0);
color sky = color(0, 200, 255);
color c = color(255);

void draw()
{
 background(sky); 
 
 for(int i = 0; i < gameObjects.size(); i++)
 {
   GameObject g = gameObjects.get(i);
   g.render();
   g.update();
 }
 
 println(frameRate);
}
