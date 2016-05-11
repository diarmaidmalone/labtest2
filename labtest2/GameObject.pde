class GameObject
{
  PVector pos;
  float w, halfW;
  
  //Plane Variables also used by Box
  int planeWidth = 60;
  int planeHeight = 30;
  int planeX = - 50;
  int planeY = 50;
  int planeSpeed = 4;
  
  //Box Variables also used by Person
  int boxLandingX;
  float boxLandingY = random(height/2 + 30, height - 30);
  int boxX = planeX;
  int boxY = planeY;
  boolean falling = false;
  int gravity = 4;
  
  GameObject(float x, float y)
  {
   pos = new PVector(x, y); 
  }
  
  void update()
  {
  }
  
  void render()
  {
  }
}
