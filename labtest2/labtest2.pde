void setup()
{
  size(700, 800);
  groundY = height/2;
  groundWidth = width;
  groundHeight = height/2;
}

int groundX = 0;
int groundY;
int groundWidth;
int groundHeight;

color ground = color(50, 255, 0);
color sky = color(0, 200, 255);

void draw()
{
 background(sky); 
 
 fill(ground);
 stroke(ground);
 rect(groundX, groundY, groundWidth, groundHeight);
}
