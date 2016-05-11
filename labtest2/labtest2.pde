void setup()
{
  size(700, 800);
  
  //Ground
  groundY = height/2;
  groundWidth = width;
  groundHeight = height/2;
  
  //Cloud
  cloudX = width + 2*cloudWidth;
  cloudY = height/4;
}

boolean[] keys = new boolean[2000];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

//Ground Variables
int groundX = 0;
int groundY;
int groundWidth;
int groundHeight;

//Plane Variables
int planeX = - 50;
int planeY = 50;
int planeWidth = 50;
int planeHeight = planeWidth;

//Cloud Variables
int cloudX;
int cloudY;
int cloudWidth = 50;
int cloudHeight = cloudWidth;

color ground = color(50, 255, 0);
color sky = color(0, 200, 255);

void draw()
{
 background(sky); 
 
 //Plane Movement
 planeX += 5;
 
 if(planeX >= width + 2*planeWidth)
 {
   planeX = -50;
 }
 
 //Cloud Movement
 cloudX -= 2;
 
 if(cloudX <= - 2*cloudWidth)
 {
   cloudX = width + 2*cloudWidth;
 }
 
 //Ground Code
 fill(ground);
 stroke(ground);
 rect(groundX, groundY, groundWidth, groundHeight);

 //Cloud Code
 fill(255);
 stroke(255);
 ellipse(cloudX, cloudY, cloudWidth, cloudHeight);
 
 //Plane Code
 fill(0);
 stroke(0);
 rect(planeX, planeY, planeWidth, planeHeight);
}
