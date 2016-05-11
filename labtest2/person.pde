class Person extends GameObject
{
 
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
  triangle(- halfW, halfW, 0, -halfW, halfW, halfW);
  popMatrix();
 }
}
