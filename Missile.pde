class Missle extends GameObject{
  public Missle(){
    super(400,300,20,50,imagemap.get("missile"));
  }
  public void move(){
    y=y-5;
  }
  public void update(){
    this.show();
    this.move();
  }
}
