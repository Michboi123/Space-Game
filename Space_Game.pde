import java.io.File;
boolean gameover=false;
boolean up,down,left,right,space;
HashMap<String,PImage> imagemap;
PImage playership,missile,enemyship,enemy2ship,enemymissile;
Player pla;
Enemy1 e;
//Background b;
Enemy2 e2;
Enemymis emis;
ArrayList<GameObject> allobjects=new ArrayList<GameObject>(); 
Timer e1t,e2t;
void setup(){
  String folderpath=sketchPath()+"/Images";
  File folder=new File(folderpath);
  String[] filenames=folder.list();
  size(800,800);
  imagemap=new HashMap<String,PImage>();
  for(int e=0;e<filenames.length;e++){
    PImage image=loadImage("Images/"+filenames[e]);
    String k=filenames[e].substring(0,filenames[e].length()-4);
    imagemap.put(k,image);
  }
  //b=new Background(400,400);
  //b=new Background(400,-1000);
  pla=new Player();
  e1t=new Timer(1000);
  e2t=new Timer(1000);
}
void draw(){
  background(0);
  cleanarray();
  for(int i=0;i<allobjects.size();i++){
    allobjects.get(i).update() ;
  } 
  if(e1t.checktime()==true){
    new Enemy1(random(50,750),0);
    e1t.setinterval(int(random(200,2000)));
  }
  if(e2t.checktime()==true){
    new Enemy2(random(50,750),0);
    e2t.setinterval(int(random(350,1750)));
  }
  if(gameover==true){
    fill(255,00,00);
    textAlign(CENTER,CENTER);
    textSize(32);
    text("GAMEOVER",400,400);
    noLoop();
  }
}
public void keyPressed(){
  if(keyCode==UP){
    up=true;
  }
  if(keyCode==DOWN){
    down=true;
  }
  if(keyCode==LEFT){
    left=true;
  }
  if(keyCode==RIGHT){
    right=true;
  }
  if(keyCode==32){
    space=true;
  }
}
public void keyReleased(){
  if(keyCode==UP){
    up=false;
  }
  if(keyCode==DOWN){
    down=false;
  }
  if(keyCode==LEFT){
    left=false;
  }
  if(keyCode==RIGHT){
    right=false;
  }
  if(keyCode==32){
    space=false;
    if(gameover==true){
      allobjects=new ArrayList<GameObject>();
      pla=new Player();
      gameover=false;
      loop();
    }
  }
}
public boolean distance(GameObject a,GameObject b){
  float sideA=a.x-b.x;
  float sideB=a.y-b.y;
  float sideC=sqrt(sideA*sideA+sideB*sideB);
  if(sideC<50){
    return(true);
  }
  return(false);
}
public void cleanarray(){
  for(int a=0;a<allobjects.size();a++){
    if(allobjects.get(a).alive==false){
      allobjects.remove(a);
    }
  }
}
//HOMEWORK:
//ADD SOEMTHING TO THE GAME THAT WILL SURPRISE YOU
