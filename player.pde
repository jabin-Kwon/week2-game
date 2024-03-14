void f1(float a, float b, float c){
  fill(0);
  rect(a-25*c,b+10*c,50*c,3*c);
  fill(255);
  circle(a,b+25*c,c*40);
  circle(a,b,c*20);
  fill(0);
  circle(a-3*c,b-3*c,2*c);
  circle(a+3*c,b-3*c,2*c);
  circle(a,b+15*c,3*c);
  circle(a,b+25*c,3*c);
  circle(a,b+35*c,3*c);
  fill(0);
  rect(a-5*c,b+4*c,10*c,c);
  fill(255,0,0);
  triangle(a-8*c,b-8*c,a,b-20*c,a+8*c,b-8*c);
  fill(255);
}
