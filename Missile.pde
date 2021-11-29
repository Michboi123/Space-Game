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
    this.checkcollision();
  }
  public void checkcollision(){
    for(int a=0;a<allobjects.size();a++){
      if(allobjects.get(a).tag=="enemy"&&distance(this,allobjects.get(a))){
        allobjects.get(a).alive=false;
        alive=false;
      }
    }
  }
}
