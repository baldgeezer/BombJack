import ddf.minim.*;

Minim tune;
AudioPlayer music;

void setup()
{
    tune = new Minim(this);
    music = tune.loadFile("bombjack.mp3");
    music.loop();
  
    size(1000,600,P3D); 
    for(int i=0; i<dotArray.length; i++) {
    dotArray[i] = new dots(200,200,10);  
  }
} 

dots[] dotArray = new dots[500]; 

float x = 300;
float y = 100;
int time;
 
void bomb()
{
  strokeWeight(0);
  // pyramid bombs
  ellipse (740, 260, x/10, y/10);
  ellipse (710, 230, x/10, y/10);
  ellipse (680, 200, x/10, y/10);
  // head bomb 
  ellipse (250, 300, x, y);
  ellipse (300, 300, x/2, y/2);
  
  fill (time/500, time/250, time/500);
}

void draw()
{  
  background (time, 180, 10);
  
  bomb();
  
//Pyramid, Ground & Sun
fill(246, 255, 18);
ellipse(500, 200, 80, 80);    
fill(206, 178, 19);
rect(340, 280, 1000, 120);
fill(209, 204, 72);
triangle(650, 200, 430, 350, 700, 350);
fill(0); 
triangle(650, 200, 530, 350, 800, 350);   
 
//face
fill(42, 44, 134);
rect(140, 280, 220, 120);
ellipse(250, 275, 220, 150);
fill(255, 200, 200);
ellipse(140, 365, 50, 40);
ellipse(360, 365, 50, 40);
ellipse(250, 350, 20, 25);
arc(250, 350, 250, 250, 0, PI, CHORD);
 
//eyes
fill(255);
arc(187, 350, 75, 200, -PI, 0);
arc(313, 350, 75, 200, -PI, 0);
fill(87);
ellipse(165, 330, 30, 30);
ellipse(290, 330, 30, 30);
fill(0);
ellipse(165, 330, 18, 18);
ellipse(290, 330, 18, 18);

//mouth
noFill();
strokeWeight(5);
stroke(0); 
curve(500, 40, 150, 370, 350, 370, 100, 110); 
 
//horns
strokeWeight(0);
fill(42, 44, 134);
triangle(150, 260, 120, 150, 220, 220);
triangle(380, 150, 300, 210, 345, 280);

   time = millis();    
   fill(0); 
   
     if (time > 3000) {
     x+=1; y+=1;     
    
     if (x >= 400) {
     x-=50;
         
     if (y>=400){
     y-=50;
     
     if (time > 100) {
      x+=10; y+=10;
      fill (250, 0, 0);
       
      if (time > 150) {
      x+=10; y+=10;
      fill (250, 0, 0);
       
      if (time > 200) {
      x+=10; y+=10;
      fill (250, 0, 0);
       
      if (time > 250) {
      x+=150; y+=150;     
     
    //text
    translate(width * .4, height*.5,0);
    rotateY(map(mouseX,0,width,-PI,PI));
    rotateX(map(mouseY,0,height,-PI,PI));
    pushMatrix();
    fill (255);
    textSize(70);     
    text("BOMB JACK!", -2, 0, 100);
    popMatrix();   
     
  for(int i=0; i<dotArray.length; i++) {
     
    dotArray[i].update();
    dotArray[i].dotBounce();
    dotArray[i].drawDots();
 
     
  }   
 
}
  }
  }
  }
      }
  }
}
}




