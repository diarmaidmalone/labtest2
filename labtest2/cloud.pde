class Cloud extends GameObject
{
 
 int cloudWidth = 70;
 int cloudX = width + 2*cloudWidth;
 int cloudY = height/5;
 int cloudHeight = 40;
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
   fill(c);
   stroke(c);
   ellipse(cloudX, cloudY, cloudWidth, cloudHeight);
   ellipse(cloudX - cloudWidth/2, cloudY, 50, 25);
   ellipse(cloudX + cloudWidth/2, cloudY, 50, 25);
   popMatrix();
  }
}
