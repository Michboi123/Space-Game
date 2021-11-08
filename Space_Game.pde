import java.io.File;
boolean up,down,left,right,space;
HashMap<String,PImage> imagemap;
PImage playership,missile,enemyship,enemy2ship,enemymissile;
Player pla;
Enemy1 e;
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
  pla=new Player();
  e=new Enemy1(200,200);
  e2=new Enemy2(3,7);
  emis=new Enemymis(234,56);
  e1t=new Timer(1000);
  e2t=new Timer(1000);
}
void draw(){
  background(255);
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
  }
}
