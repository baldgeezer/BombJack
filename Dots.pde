class dots
{
  float x;
  float y;
  float xSpeed;
  float ySpeed;   
  float cSize;
 
  dots(float xpos, float ypos, float csize) {
    x = xpos;
    y = ypos;
    cSize = csize;
     
    xSpeed = random(-10, 10);
    ySpeed = random(-10, 10);
     
  }
 
  void update() {
    x += xSpeed;
    y += ySpeed; 
  }
   
  void dotBounce() {
     
    float r = cSize/2;
     
    if ( (x<r) || (x>width-r)){
      xSpeed = -xSpeed;
    } 
     
    if( (y<r) || (y>height-r)) {
      ySpeed = -ySpeed; 
    }
     
  }
   
  void drawDots() {
     
    fill(242,7,7);
    ellipse(x, y, cSize, cSize);
     
  }
}
