//Diarmaid Malone, C15527843, c15527843@mydit.ie
void setup()
{
  size(700, 800);
  frameRate(60);

  //Ground
  gameObjects.add(new Ground(0, 0));
  
  //Person
  gameObjects.add(new Person(100, height/4 * 3));
  
  //Clouds
  for(int i = 0; i < 5; i ++)
  {
    cloudYPosition[i] = random(-150, 150);
  }
  gameObjects.add(new Cloud(0, cloudYPosition[0]));
  gameObjects.add(new Cloud(0, cloudYPosition[1]));
  gameObjects.add(new Cloud(0, cloudYPosition[2]));
  gameObjects.add(new Cloud(0, cloudYPosition[3]));
  gameObjects.add(new Cloud(0, cloudYPosition[4]));
  
  //Box
  gameObjects.add(new Box(0, 0));
  
  //Plane
  gameObjects.add(new Plane(0, 0));
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

float [] cloudYPosition = new float[5];

color c = color(255);
color sky = color(0, 200, 255);

void draw()
{
 background(sky); 

 for(int i = 0; i < gameObjects.size(); i++)
 {
   GameObject g = gameObjects.get(i);
   g.render();
   g.update();
 }
}
