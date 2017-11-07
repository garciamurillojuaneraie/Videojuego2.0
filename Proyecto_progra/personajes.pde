class m{
  int hp,atq;
  float x,y;
  float scalax,scalay;
  
  m(int hp_,int atq_, float x_, float y_,float scalax_,float scalay_){
  hp = hp_;
  atq = atq_;
  x = x_;
  y = y_;
  scalax = scalax_;
  scalay=scalay_;
  }
  
  void displayfionna (){
   noStroke();
     pushMatrix();
       translate(x,y);
       scale(scalax,scalay);
       image(fiona, 0, 0);
     popMatrix();
  }
  
  
  void displaygumball (){
   noStroke();
     pushMatrix();
       translate(x,y);
       scale(scalax,scalay);
       image(gumbal, 0, 0);
     popMatrix();
  }
  
  
  
  
  
  
  void displaymordecai(){
   noStroke();
     pushMatrix();
       translate(x,y);
       scale(scalax,scalay);
       image(mordeca, 0, 0);
     popMatrix();
  }
  
  
  
  void displaypato(){
   noStroke();
     pushMatrix();
       translate(x,y);
       scale(scalax,scalay);
       image(patoi, 0, 0);
     popMatrix();
  }
  
  
  
  void displayrick(){
   noStroke();
     pushMatrix();
       translate(x,y);
       scale(scalax,scalay);
       image(ricki, 0, 0);
     popMatrix();
  }
  
  void displayave(){
    pushMatrix();
    translate(x,y);
    scale(scalax,scalay);
  noStroke();
  fill(#626262);
  beginShape();
    vertex(173,392);
    vertex(166,401);
    vertex(156,402);
    vertex(147,396);
    vertex(154,374);
  endShape();
  
  fill(#7E7E7E);
  beginShape();
    vertex(190,325);
    vertex(196,370);
    vertex(191,389);
    vertex(177,398);
    vertex(158,384);
    vertex(145,399);
    vertex(131,402);
    vertex(114,391);
    vertex(114,369);
    vertex(126,354);
    vertex(140,323);
  endShape();
  
  
  
  fill(#673F24);
  beginShape();
    vertex(95,310);
    vertex(245,310);
    vertex(274,312);
    vertex(328,340);
    vertex(333,365);
    vertex(289,366);
    vertex(286,351);
    vertex(266,329);
    vertex(100,324);
    vertex(68,345);
    vertex(63,362);
    vertex(54,362);
    vertex(61,333);
  endShape();
  
  
  fill(#989898);
  beginShape();
    vertex(130,85);
    vertex(185,95);
    bezierVertex(185,95,163,126,130,85);
    vertex(141,153);
    vertex(130,85);
    vertex(128,181);
    vertex(107,163);
    vertex(100,175);
    vertex(94,198);
    vertex(101,222);
    vertex(90,233);
    vertex(77,267);
    vertex(82,292);
    vertex(95,310);
    
    vertex(245,310);
    
    vertex(262,170);
    vertex(271,163);
    vertex(273,155);
    vertex(253,140);
    vertex(279,147);
    vertex(285,147);
    vertex(291,140);
    vertex(288,137);
    vertex(286,131);
    vertex(267,113);
    vertex(282,117);
    vertex(287,115);
    vertex(289,108);
    vertex(284,101);
    vertex(249,83);
    vertex(268,90);
    vertex(272,91);
    vertex(274,87);
    vertex(270,80);
    vertex(223,67);
    vertex(171,65);
  endShape();
  
  fill(#F0D477);
  beginShape();
    vertex(141,153);
    vertex(128,181);
    vertex(110,169);
    vertex(72,150);
    vertex(39,148);
    vertex(58,106);
  endShape();
  
  
  fill(#FFEC81);
  beginShape();
    vertex(172,63);
    vertex(49,56);
    vertex(38,72);
    vertex(34,148);
    vertex(39,155);
    vertex(44,140);
    vertex(92,135);
    vertex(141,153);
    vertex(140,118);
    vertex(130,85);
  endShape();
  
  
  fill(#7E7E7E);
  beginShape();
    vertex(203,184);
    vertex(226,156);
    vertex(317,198);
    vertex(297,224);
    vertex(363,226);
    vertex(400,258);
    vertex(362,293);
    vertex(262,302);
    vertex(213,280);
    vertex(242,214);
  endShape();
  
  fill(0);
  ellipse(124,72,15,10);
  
  
  fill(255);
  beginShape();
    vertex(130,85);
    vertex(185,95);
    bezierVertex(185,95,163,126,130,85);
  endShape();
  popMatrix();
  }
  
}