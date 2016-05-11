class Box extends GameObject
{
 
 int boxX = planeX;
 int boxY = planeY;
 int boxWidth = 20;
 int boxHeight = 20;
 int gravity = 4;
 
 boolean falling = false;
  
 Box(float x, float y)
 {
   super(x, y);
 }
  
  void update()
  {
    if(boxY == planeY)
    {
      boxX += planeSpeed;
    }
    if(boxX >= width + 2*planeWidth && boxY == planeY)
   {
     boxX = -50;
   }
   
   if(keyPressed)
   {
     if(key == ' ')
     {
       boxLandingX = boxX;
       falling = true;
     }
   }
   
   if(falling)
   {
     if(boxY <= boxLandingY)
     {
       boxY += gravity;
     }
   }
   
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    fill(0);
    stroke(0);
    rect(boxX, boxY, boxWidth, boxHeight);
    popMatrix();
  }
}
