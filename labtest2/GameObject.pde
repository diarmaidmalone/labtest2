class GameObject
{
  PVector pos;
  float w, halfW;
  
  //Plane Variables
  int planeWidth = 50;
  int planeHeight = planeWidth;
  int planeX = - 50;
  int planeY = 50;
  int planeSpeed = 4;
  
  //Box Variables
  int boxLandingX;
  float boxLandingY = random(height/2 + 30, height - 30);
  
  GameObject(float x, float y)
  {
   pos = new PVector(x, y); 
   w = 50.0f;
   halfW = w/2;
  }
  
  void update()
  {
  }
  
  void render()
  {
  }
}
