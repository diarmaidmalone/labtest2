class GameObject
{
  PVector pos;
  
  float w, halfW;
  
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
