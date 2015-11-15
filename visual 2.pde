loat[] fbUsage={4,3,0,1,2,5,0};
float[] lineUsage={2,3,8,1,1,4,2};
float[] instagramUsage={4,5,6,7,8,5,1};
float[] angles= new float[21];

void setup() {
  float sum;
  for(int i=0;i<7;i++){
    sum=fbUsage[i]+lineUsage[i]+instagramUsage[i];
    angles[3*i]=360*fbUsage[i]/sum;
    angles[3*i+1]=360*lineUsage[i]/sum;
    angles[3*i+2]=360*instagramUsage[i]/sum;
  }

  size(640, 360);
  noStroke();
  noLoop();  // Run once and stop
}

void draw() {
  background(100);
  for(int i=0;i<7;i++){
    pieChart(40, i);
  }
}

void pieChart(float diameter, int day) {
  float lastAngle = 0;
  for (int i = 0; i < 3; i++) {
    if(i==0){  //fb
      fill(255,0,0); 
    else if(i==1){  //line
      fill(0,255,0);  
    }
    else if(i==2){  //insta
      fill(0,0,255); 
    }
    arc(width*day/7+40, height/2, diameter, diameter, lastAngle, lastAngle+radians(angles[3*day+i]));
    lastAngle += radians(angles[3*day+i]);
  }
}
