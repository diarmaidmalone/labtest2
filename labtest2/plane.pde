class Plane extends GameObject
{
 
 //Plane Variables
 int planeX = - 50;
 int planeY = 50;
 int planeWidth = 50;
 int planeHeight = planeWidth;
 int planeSpeed = 5;
  
 Plane(float x, float y)
 {
   super(x, y);
 }
 
 void update()
 {
   //Plane Movement
   planeX += planeSpeed;
   
   if(planeX >= width + 2*planeWidth)
   {
     planeX = -50;
   }
 }
 
 void render()
 {
  pushMatrix();
  translate(pos.x, pos.y);
  rect(planeX, planeY, planeWidth, planeHeight);
  popMatrix();
 }
}
