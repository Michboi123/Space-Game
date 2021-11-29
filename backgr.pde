class Background extends GameObject{
  public Background(float x,float y){
    super(x,y,800,1400,imagemap.get("spacebackground"));
  }
  public void move(){
    y=y+5;
    if(y>1500){
      y=-1350;
    }
  }
  public void update(){
    this.show();
    this.move();
  }
}
