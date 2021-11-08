class Missle extends GameObject{
  public Missle(float x,float y){
    super(x,y,20,50,imagemap.get("missileimage"));
  }
  public void move(){
    y=y-5;
  }
  public void update(){
    this.show();
    this.move();
  }
}
