class Person extends GameObject
{
 
 int personX = 0;
 int personY = -50;
 int personMoveX;
 int personMoveY;
 int personSpeed = 3;
  
 Person(float x, float y)
 {
  super(x, y);
  w = 50.0f;
  halfW = w/2;
 }
 
 void update()
 {
   if (boxY >= height/2)
   {
     personX += personSpeed;
   }
   
   if(keyPressed)
   {
     if(keyCode == LEFT)
     {
        personX -= personSpeed; 
     }
     
     if(keyCode == RIGHT)
     {  
        personX += personSpeed;
     }
     
     if(keyCode == UP)
     {
       personY -= personSpeed;
     }
     
     if(keyCode == DOWN)
     {
       personY += personSpeed;
     }
   }
 }
 
 void render()
 {
  pushMatrix();
  translate(pos.x, pos.y);
  fill(255, 0, 0);
  stroke(255, 0, 0);
  rect(personX, personY, 25, 50);
  popMatrix();
 }
}
