float startX;
float startY;
float endX;
float endY;
void setup() {
  size(500, 500);
  strokeWeight(10);
}
void draw() {
  startX = width/2;
  startY = 0;
  endX = 0;
  endY = height - 1;
  frameRate(3);
  stroke(random(255), random(255), random(255));
  background(random(25), random(25), random(25));
  while (endY < height)
  {
    endX = startX + (int)(Math.random()*20-10);
    endY = startY + (int)(Math.random()*9);
    System.out.println(""+startX + " "+ startY+ " "+endX+ " "+endY);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    if (keyPressed == false) {
      System.out.println("an uneasy quiet fills the air");
    }
  }
}
void keyPressed() { // Press a key to make Lightning appear!
  startX = random(400);
  startY = 0;
  endX = 0;
  endY = 150;
  if (keyPressed == true) {
    System.out.println("low rumbles fill the air");
  }
}
