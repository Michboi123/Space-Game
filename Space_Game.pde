HashMap<String,PImage> imagemap;
PImage playership,missile;
Player pla;
Missle mis;
void setup(){
  size(800,800);
  imagemap=new HashMap<String,PImage>();
  playership=loadImage("Images/playerShip.png");
  missile=loadImage("Images/missileimage.png");
  imagemap.put("playership",playership);
  imagemap.put("missile",missile);
  pla=new Player();
  mis=new Missle();
}
void draw(){
  background(255);
  mis.show();
  pla.show();
}
