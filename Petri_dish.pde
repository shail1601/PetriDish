/**
* Assignment: Petri Dish Assignment
* Date: 04/30/2017
* Author: Shail Thakkar
* Description: Petri Dish Assignment
*/
Ball Ball1;
Ball Ball2;
Ball Ball3;
int status = 0;
int diameter = 500;
float x3BallsRadius = 50;
 float CountainerX = 400 ;
 float CountainerY = 400;
 float Radius = 250;
 int a = 45;
 int textsize = 20;
 int background = 150;
 String Name = ("Petri Dish Assignment");
 String Increase = ("Press I To Increase Speed");
 String Decrease = ("Press D To Decrease Speed");
 String PauseOrStart = ("Press P To Pause/Resume");
 String Reset = (" Press R To Reset The Program");
 int Rect0 = 0;
 int NameX = 400;
 int width = 800;
 int height = 800;
 int NaviX = 20;
 int NaviY2 = 60;
 int NaviY3 = 90;
 int NaviY4 = 120;
 int NaviY1= 30;
  double MinDistance = 200;
 int power = 2;
 color Orange = #FC650D;
 color Blue = #0DFCF6;
 color Green = #1FFC0D ;
 color Yellow = #EBF79D;
 color White = 255;
 color Black = 0;
class Sprite {
  float r = Radius;
 float x,y;
 float directionx, directiony;
 float xspeed;
 float yspeed;
 float SpeedIncrease = 0.1;
 float SpeedDecrease = 0.1;
 float MinSpeed = -0.0;
 

}
 class Ball extends Sprite {
float dia;
color Color;
void render() {
 
  fill(Color);
  ellipse(x,y,dia,dia);
  if(status == 0) {
    x = x + directionx*xspeed;
    y = y + directiony*yspeed;
  }
  
 double eucliDist = Math.sqrt(Math.pow(CountainerX - x, power) + Math.pow(CountainerY - y, power));

 if(eucliDist >= MinDistance){
   directionx *= -1;
   directiony *= -1;
   
 }
 if (xspeed < MinSpeed && yspeed < MinSpeed) {
   xspeed = 0;
   yspeed = 0;
 }
}
void increase(){
   xspeed += SpeedIncrease;
   yspeed += SpeedIncrease;
   
}
void decrease(){
   xspeed -= SpeedDecrease;
   yspeed -= SpeedDecrease;
   

}}
 
void setup() {
 size(800,800); 
 PFont Font;
 Font = createFont("Arial",textsize);
 textFont(Font,textsize);
 status = 0;
 Ball1 = new Ball();
Ball2 = new Ball();
Ball3 = new Ball();

Ball1.x = 500;
Ball1.y = 350;
Ball1.directionx = 1;
Ball1.directiony = 1;
Ball1.dia = 100;
Ball1.xspeed = 1.1;
Ball1.yspeed = 1.2;
Ball1.r = x3BallsRadius;
Ball1.Color = color (Orange);
Ball2.x = 400;
Ball2.y = 400;
Ball2.directionx = 1;
Ball2.directiony = 1;
Ball2.dia = 100;
Ball2.xspeed = 1.1;
Ball2.yspeed = 1;
Ball2.r = x3BallsRadius;
Ball2.Color = color (Blue);
Ball3.x = 250;
Ball3.y = 450;
Ball3.directionx = 1;
Ball3.directiony = 1;
Ball3.dia = 100;
Ball3.xspeed = 1.2;
Ball3.yspeed = 1.1;
Ball3.r = x3BallsRadius;
Ball3.Color = color (Green);

}
void draw(){
  background(background);
fill(Yellow);
   ellipse(CountainerX,CountainerY,diameter,diameter);
  Ball1.render();
  Ball2.render();
  Ball3.render();
  
 fill(White);
  rect(Rect0,Rect0,width,130);
  fill(Black);
  textAlign(CENTER);
  text(Name,NameX,NaviX);
  textAlign(LEFT);
  text(Increase,NaviX,NaviY1);
  textAlign(LEFT);
  text(Decrease,NaviX,NaviY2);
  textAlign(LEFT);
  text(PauseOrStart,NaviX,NaviY3);
  textAlign(LEFT);
  text(Reset,NaviX,NaviY4);
}
void keyPressed(){
  if(key == 'i'){
    Ball1.increase();
    Ball2.increase();
    Ball3.increase();
  }if(key == 'd'){
    Ball1.decrease();
    Ball2.decrease();
    Ball3.decrease();
  }if(key == 'r'){
    setup();
  }
  if (key == 'p'){
    status++;
    status %= 2;
  }
}
