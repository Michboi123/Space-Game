class Player extends GameObject{
  Timer t;
  int health;
  public Player(){
    super(400,400,50,50,imagemap.get("playerShip"));
    t=new Timer(100);
    health=1;
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
    this.checkcollision();
  }
  public void shoot(){
    
    if(space==true && t.checktime()==true){
      new Missle(x,y);
    }
  }
  public void checkcollision(){
    for(int a=0;a<allobjects.size();a++){
      if(allobjects.get(a).tag=="enemy"&&distance(this,allobjects.get(a))){
        health=health-1;
        allobjects.get(a).alive=false;

      }
      if(health<=0){
        this.alive=false;
        gameover=true;
      }
    }
  }
}
