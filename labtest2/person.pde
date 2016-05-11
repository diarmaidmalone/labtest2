class Person extends GameObject
{
 
 int personX;
 int personY;
 int personMoveX;
 int personMoveY;
  
 Person(float x, float y)
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
  fill(255, 0, 0);
  stroke(255, 0, 0);
  triangle(- halfW, halfW, 0, -halfW, halfW, halfW);
  popMatrix();
 }
}
