void frog(float x,float y,float d){
  face(x,y,d);
  eye(x,y,d);
  nose(x,y,d);
  mouth(x,y,d);
  fill(255);
  stroke(0);
}
void face(float x,float y,float d){
  fill(150,250,150);
  stroke(150,250,150);
  ellipse(x,y,3*d,2*d);
}
void eye(float x,float y,float d){
  fill(250);
  ellipse(x-d,y-0.8*d,0.4*d,0.8*d);
  ellipse(x+d,y-0.8*d,0.4*d,0.8*d);
  fill(0);
  stroke(0);
  ellipse(x-d,y-0.8*d,0.2*d,0.4*d);
  ellipse(x+d,y-0.8*d,0.2*d,0.4*d);
}
void nose(float x,float y,float d){
  fill(0);
  circle(x-0.1*d,y+0.4*d,0.05*d);
  circle(x+0.1*d,y+0.4*d,0.05*d);
}
void mouth(float x,float y,float d){
  stroke(250,0,0);
  line(x-0.4*d,y+0.6*d,x+0.4*d,y+0.6*d);
}
void cheek(float x,float y,float d){
  stroke(255,100,150);
  fill(255,100,150);
  ellipse(x-d,y,0.4*d,0.2*d);
  ellipse(x+d,y,0.4*d,0.2*d);
}
