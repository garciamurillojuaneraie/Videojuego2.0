
class circulo{
  float x,y;
  int tamano;
  int r, g, b;
  float t3;
  
  circulo(float x_,float y_,int tamano_,int r_,int g_, int b_){
  x=x_;
  y=y_;
  tamano=tamano_;
  r=r_;
  g=g_;
  b=b_;
  }
  void circulodisplay(){
    noStroke();
    fill(r,g,b);
    ellipse(x,y,t3,t3); 
    
    
      if(((mouseX>x-tamano/2) & (mouseX < x+tamano/2))&((mouseY>y-tamano/2) & (mouseY < y+tamano/2))){
      t3=tamano*1.5;
      }else
      t3=tamano;
  }
}