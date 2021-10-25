PImage playership,missile;
Player pla;
Missle mis;
void setup(){
  size(800,800);
  playership=loadImage("Images/playerShip.png");
  missile=loadImage("Images/missileimage.png");
  pla=new Player();
  mis=new Missle();
}
void draw(){
  background(255);
  mis.show();
  pla.show();
}
