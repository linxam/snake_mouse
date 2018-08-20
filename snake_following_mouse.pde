// by Alexander Kilinkarov

float x, y;
float[] px = new float[5], py = new float[5];
float[] ppx = new float[5], ppy = new float[5];
float[] pppx = new float[5], pppy = new float[5];
float[] ppppx = new float[5], ppppy = new float[5];
float easing = 0.1;
float diameter = 20;
float targetX, targetY;
int counter = 0;
void setup(){
  size(640, 480);
  smooth();
  noStroke();
}

void draw(){
  background(30);
  targetX = mouseX;
  targetY = mouseY;
  
  x += (targetX - x) * easing;
  y += (targetY - y) * easing;
  
  fill(255);
  ellipse(x,y,diameter,diameter);
  fill(255,0,0);
  ellipse(px[counter],py[counter], diameter, diameter);
  fill(0,255,0);
  ellipse(ppx[counter],ppy[counter], diameter, diameter);
  fill(255,255,0);
  ellipse(pppx[counter],pppy[counter], diameter, diameter);
  fill(0,255,255);
  ellipse(ppppx[counter],ppppy[counter], diameter, diameter);
  
  ppppx[counter] = pppx[counter];
  ppppy[counter] = pppy[counter];
  pppx[counter] = ppx[counter];
  pppy[counter] = ppy[counter];
  ppx[counter] = px[counter];
  ppy[counter] = py[counter];
  px[counter] = x;
  py[counter] = y;
  counter++;
  if (counter >= px.length){ counter = 0; }
}
