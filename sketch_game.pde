float [] x, y, d, vx, vy;
float px,py,pd;
int i;
int s=1;
float dd;
void setup(){
  size(1200, 900);
  a=600;
  b=500;
  c=10;
  x=new float[30];
  y=new float[30];
  d=new float[30];
  vx=new float[30];
  vy=new float[30];
  for(int i=0; i<30; i++){
    x[i]=random(0,width);
    y[i]=random(0,height);
    d[i]=random(4,8);
    vx[i]=random(2,4);
    vy[i]=random(2,4);
    px=random(width);
    py=random(height);
    pd=3;
  }
}
void draw(){
  background(120);
  f1(px,py,pd);
  for(int i=0;i<30;i++){
  x[i]+=vx[i];
  frog(x[i],y[i],d[i]);
  y[i]+=vy[i];
  frog(x[i],y[i],d[i]);
  if(x[i]<0 || x[i]>width) vx[i]= -vx[i];
  if(y[i]<0 || y[i]>height) vy[i]= -vy[i];
  collide(i);
  if(s>10){
    fill(255,0,0);
    textSize(150);
    text("GAME OVER!",250,300);
    fill(255);
    face1();
    beard();
    remain();
  }
 
  }
}
void keyPressed(){
    if(key =='d') px+=5;
    else if(key =='a') px-=5;
    else if(key == 'w') py-=5;
    else if(key == 's') py+=5;
}
void player(float px1, float px2, float pxd){
  fill(255);
  circle(px1,px2,pxd);
  fill(0);
  circle(px1-10,px2-10,15);
  circle(px1+10,px2-10,15);
  fill(255,153,0);
  triangle(px1-3,px2-3,px1+3,px2+10,px1+30,px2-10);
  fill(0);
  rect(px1-20,px2+15,40,5);
  fill(255);
}
  void snow(float x1, float y1, float d1){
    circle(x1,y1,d1*5);
  }
  void collide(int k){
    float dx = px-x[k];
    float dy = py+50-y[k];
    dd =sqrt(dx*dx+dy*dy);
    if(dd<70){
      vx[k] = -vx[k];
      vy[k] = -vy[k];
      fill(255,0,0);
      textSize(60);
      text("Hit:"+s+"!",px,py-60);
      s++;
      fill(255);
    }
  }
