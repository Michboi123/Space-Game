class Timer{
  int timestamp=0,currenttime=0,timeinterval;
  public Timer(int ti){
    timeinterval=ti;
  }
  public boolean checktime(){
    currenttime=millis();
    if(timestamp+timeinterval<currenttime){
      timestamp=currenttime;
      return(true);
    }
    else{
      return(false);
    }
  }
  public void setinterval(int i){
    timeinterval=i;
  }
}
