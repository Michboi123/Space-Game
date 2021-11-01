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
  mis.update();
  pla.update();
}
//1)write a move function for GameObject, missle, and player
//2) write an update function for GameObject
//3) in the update function of the GameObject run the move function and the show function
//4) in the move function of the missle make the missile move up
//5) in the move function of the player make the player move right (if you can program up down left right controls that would be better)
//6) in the draw function, instead of telling the missile and player to show up, tell the missile and the player to update
//https://processing.org/reference/
//https://keycode.info/
