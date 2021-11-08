class Player extends GameObject{
  Timer t;
  public Player(){
    super(400,400,50,50,imagemap.get("playerShip"));
    t=new Timer(1000);
  }
  public void move(){
    if(up==true){
      y=y-10;
    }
    if(down==true){
      y=y+10;
    }
    if(left==true){
      x=x-10;
    }
    if(right==true){
      x=x+10;
    }
  }
  public void update(){
    this.move();
    this.show();
    this.shoot();
  }
  public void shoot(){
    
    if(space==true && t.checktime()==true){
      new Missle(x,y);
    }
  }
}
