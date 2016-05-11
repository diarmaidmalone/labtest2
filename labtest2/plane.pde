class Plane extends GameObject
{
 
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
  fill(150);
  stroke(150);
  rect(planeX, planeY, planeWidth, planeHeight);
  popMatrix();
 }
}
