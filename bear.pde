float a; float b; float c;

void face1()//얼굴 외형
{ 
  fill(255,153,051);
  circle(a-9*c,b-13*c,c*7);
  circle(a+9*c,b-13*c,c*7);
  circle(a,b,c*30);
}
void beard()//수염
{
  fill(255,255,255);
  circle(a-2*c,b+5*c,c*5);
  circle(a+2*c,b+5*c,c*5);
}
void remain()//눈썹,눈,코
{
  fill(0,0,0);
  circle(a-5*c,b,c*1.5);
  circle(a+5*c,b,c*1.5);
  ellipse(a+5*c,b-7*c,c*5,c);
  ellipse(a-5*c,b-7*c,c*5,c);
  circle(a,b+3*c,c*2);
}
