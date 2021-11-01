class Player extends GameObject{
  public Player(){
    super(400,400,50,50,imagemap.get("playership"));
  }
  public void move(){
    if(keyCode==UP){
      y=y-5;
    }
    if(keyCode==DOWN){
      y=y+5;
    }
    if(keyCode==LEFT){
      x=x-5;
    }
    if(keyCode==RIGHT){
      x=x+5;
    }
  }
  public void update(){
    this.move();
    this.show();
  }
}
