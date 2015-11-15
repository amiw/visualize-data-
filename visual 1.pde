size(400,300);
background(0);

int[] fbUsage={4,3,0,1,2,5,0};
int[] lineUsage={2,3,8,1,1,4,2};
int[] instagramUsage={4,5,6,7,8,5,1};

for(int i=0;i<7;i++)
{
  for(int j=0;j<fbUsage[i];j++)
  {
   fill( 0,0,255);
   ellipse(10+i*60,190-j*10,5,5);
  }
  for(int j=0;j<lineUsage[i];j++)
  {
   fill(0,255,0);
   ellipse(30+i*60,190-j*10,5,5);
  }
  for(int j=0;j<instagramUsage[i];j++)
  {
   fill(255,0,0);
   ellipse(50+i*60,190-j*10,5,5);
  }
}
