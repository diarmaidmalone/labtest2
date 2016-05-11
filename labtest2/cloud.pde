class Cloud extends GameObject
{
 
 int cloudWidth = 50;
 int cloudX = width + 2*cloudWidth;
 int cloudY = height/4;
 int cloudHeight = cloudWidth;
 float cloudSpeed = random(1, 4);
  
 Cloud(float x, float y)
 {
   super(x, y);
   w = 50.0f;
   halfW = w/2;
 }
  
  void update()
  {
   cloudX -= cloudSpeed;
  
    if(cloudX <= - 2*cloudWidth)
    {
      cloudX = width + 2*cloudWidth;
      cloudSpeed = random(1, 5);
    } 
  }
  
  void render()
  {
   pushMatrix();
   translate(pos.x, pos.y);
   ellipse(cloudX, cloudY, 50, 50);
   popMatrix();
  }
}
