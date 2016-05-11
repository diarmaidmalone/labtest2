class Ground extends GameObject
{
 color ground = color(50, 255, 0);
  
 Ground(float x, float y)
 {
   super(x, y);
   w = 50.0f;
   halfW = w/2;
 }
  
 void update()
 {
   
 }
 
 void render()
 {
  pushMatrix();
  translate(pos.x, pos.y);
  color(0, 255, 0);
  rect(0, height/2, width, height/2);
  popMatrix();
 }
}
