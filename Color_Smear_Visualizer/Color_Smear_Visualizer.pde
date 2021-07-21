float rotX,rotY,size;
float r,g,b;
int dir=0;

void setup(){
  rotX=0; rotY=0; size=1080;
  r=random(0,255); g=random(0,255); b=random(0,255);
  
  //size(600,600,P3D);
  fullScreen(P3D);
  frameRate(999);
}

void draw(){
  translate(width/2,height/2,0);
  rotateX(rotX);
  rotateY(rotY);
  fill(r,g,b);
  stroke(r,g,b);
  
  rectMode(CENTER);
  box(size);
  
  rotX+=.01; rotY+=.01;
  if(dir==0){
    dir=0;
    size*=.999;
    if(size<10){
      dir=1;
      r=random(0,255); g=random(0,255); b=random(0,255);
    }
  }else if(dir==1){
    dir=1;
    size*=1.001;
    if(size>1080){
      dir=0;
      r=random(0,255); g=random(0,255); b=random(0,255);
    }
  }
  r=r+random(-1,1); g=g+random(-1,1); b=b+random(-1,1);
}

void keyPressed(){
  exit();
}

void mousePressed(){
  exit();
}
