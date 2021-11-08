class Enemy1 extends GameObject{
  public Enemy1(float x,float y){
    super(x,y,50,50,imagemap.get("enemyShip"));
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
  public Enemy2(float x,float y){
    super(x,y,50,50,imagemap.get("enemyShip2"));
  }
  public void move(){
    y=y+5;
  }
  public void update(){
    this.move();
    this.show();
  }
}
class Enemymis extends GameObject{
  public Enemymis(float x, float y){
    super(x,y,30,50,imagemap.get("alienMissile"));
  }
  public void move(){
    y=y+5;
  }
  public void update(){
    this.move();
    this.show();
  }
}
//Homework, make a Enemy2 object and an EnemyMissile object
//make them both fall down
