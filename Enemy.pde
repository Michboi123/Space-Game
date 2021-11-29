class Enemy1 extends GameObject{
  public Enemy1(float x,float y){
    super(x,y,50,50,imagemap.get("enemyShip"));
    tag="enemy";
  }
  public void move(){
    y=y+5;
  }
  public void update(){
    this.move();
    this.show();
  }
}
class Enemy2 extends GameObject{
  Timer t;
  public Enemy2(float x,float y){
    super(x,y,50,50,imagemap.get("enemyShip2"));
    t=new Timer(500);
    tag="enemy";
  }
  public void move(){
    y=y+5;
  }
  public void shoot(){
    if(t.checktime()==true){
      new Enemymis(x,y);
    }
  }
  public void update(){
    this.move();
    this.show();
    this.shoot();
  }
}
class Enemymis extends GameObject{
  public Enemymis(float x, float y){
    super(x,y,30,50,imagemap.get("alienMissile"));
    tag="enemy";
  }
  public void move(){
    y=y+20;
  }
  public void update(){
    this.move();
    this.show();
  }
}
//Homework:
//1)Program the Enemy2 to shoot EnemyMissiles using a time.
//2) Program a collision check function with 2 GameObjects as parameter.
//-calculate the xDistance and calculate the yDistance
//-then calculate the hypothenuse
//-check if the hypothenuse(distance) is short enough for them to collide
//return either true or false
