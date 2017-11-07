int enter=0;

PImage tituloa;
PImage titulob;
PImage historiaa;
PImage historiab;
PImage instruca;
PImage instrucb;
PImage p1wina;
PImage p1winb;
PImage p2wina;
PImage p2winb;

PImage fiona;
PImage gumbal;
PImage mordeca;
PImage patoi;
PImage ricki;

m fionna;
m gumball;
m mordecai;
m pato;
m rick;
m ave;

m fionnap1;
m gumballp1;
m mordecaip1;
m patop1;
m rickp1;
m avep1;

m fionnap2;
m gumballp2;
m mordecaip2;
m patop2;
m rickp2;
m avep2;

circulo cir1;
circulo cir2;
circulo cir3;
circulo cir4;
circulo cir5;
circulo cir6;
float [] p1 = new float [2];
float [] p2 = new float [2];
int p1p, p2p;
float turno = random(2);
float vidap1, vidap2;

void setup () {
  size(1400, 800);


  tituloa = loadImage("Titulo.png");
  titulob = loadImage("Titulo2.png");
  historiaa = loadImage("Instrucciones.png");
  historiab = loadImage("Instrucciones2.png");
  instruca = loadImage("history.png");
  instrucb = loadImage("history2.png");
  p1wina = loadImage("Finalp1.png");
  p1winb = loadImage("Finalp1B.png");
  p2wina = loadImage("Finalp2.png");
  p2winb = loadImage("Finalp2B.png");
  
  fiona = loadImage("fionna A.png");
  gumbal = loadImage("gumball A.png");
  mordeca = loadImage("mordecai A.png");
  patoi = loadImage("Pato A.png");
  ricki = loadImage("Rick A.png");

  ave = new m(12, 7, 210, 320, -0.4, 0.4);
  fionna = new m(20, 4, 35, 20, 0.25, 0.25);
  gumball = new m(25, 3, 530, 35, -0.23, 0.23);
  mordecai = new m(26, 3, 1120, 15, -0.23, 0.23);
  pato = new m(15, 5, 1140, 40, 0.2, 0.2);
  rick = new m(17, 4, 1120, 300, 0.26, 0.26);

  cir1 = new circulo(150, 150, 150, 234, 217, 85);
  cir2 = new circulo(400, 150, 150, 234, 217, 85);
  cir3 = new circulo(150, 400, 150, 234, 217, 85);
  cir4 = new circulo(1250, 150, 150, 234, 217, 85);
  cir5 = new circulo(1000, 150, 150, 234, 217, 85);
  cir6 = new circulo(1250, 400, 150, 234, 217, 85);

  p1[0]=0;
  p2[0]=0;

  if (turno>1)
    turno=2;
  if (turno<1)
    turno=1;
}

void draw() {
  if (enter == 0) {                                    //Inicio
    pantalla1();
    println (p1[0], p1[1], p2[0], p2[1], key, turno);
  } else if (enter == 1) {                               //Instrucciones
    pantalla2();
  } else if (enter == 2) {                               //seleccion de personajes p1
    pantalla25();
    println (p1[0], p1[1], p2[0], p2[1], key);
  }else if (enter == 3) {                               //seleccion de personajes p1
    pantalla3();
    println (p1[0], p1[1], p2[0], p2[1], key);
  } else if (enter == 4) {                               //seleccion de personajes p2
    background(0);
    println (p1[0], p1[1], p2[0], p2[1], key);
    pantalla4();
  } else if (enter == 5) {                               //game over
    background(39);
    println (p1[0], p1[1], p2[0], p2[1], key, turno);
    pantalla5();
  } else if (enter == 6) {                               //final
    background(0);
    println (p1[0], p1[1], p2[0], p2[1], key, turno);
    pantalla6();
  }
}




void keyReleased () {

  if (key == ENTER) {
    if (enter == 0) {
      enter+=1;
    } else if (enter == 1) {                               //Instrucciones
      enter+=1;
    } else if (enter == 2) {                               //Instrucciones
      enter+=1;
    }
  } else if (key == BACKSPACE) {
    if (enter == 0) {                                    //Inicio
    } else if (enter == 1) {                               //Instrucciones
      enter-=1;
    } else if (enter == 2) {                               // seleccion de personajes
      enter-=1;
    } else if (enter == 3) {                               // seleccion de personajes
      enter-=1;
    }
  } else if (key == TAB) {
    if (enter == 6) 
      enter = 0;
  }

  if (enter==3||enter==4) {
    if (p1[0] == 0) {
      if (key == '1') {
        p1[0]=ave.atq;
        p1[1]=ave.hp;
        p1p=1;
        enter=4;
        key = 'y';
      }
      if (key == '2') {
        p1[0]=fionna.atq;
        p1[1]=fionna.hp;
        p1p=2;
        enter=4;
        key = 'y';
      }
      if (key == '3') {
        p1[0]=gumball.atq;
        p1[1]=gumball.hp;
        p1p=3;
        enter=4;
        key = 'y';
      }
      if (key == '4') {
        p1[0]=mordecai.atq;
        p1[1]=mordecai.hp;
        p1p=4;
        enter=4;
        key = 'y';
      }
      if (key == '5') {
        p1[0]=pato.atq;
        p1[1]=pato.hp;
        p1p=5;
        enter=4;
        key = 'y';
      }
      if (key == '6') {
        p1[0]=rick.atq;
        p1[1]=rick.hp;
        p1p=6;
        enter=4;
        key = 'y';
      }
    }



    if (p2[0] == 0) {
      if (key == '1') {
        p2[0]=ave.atq;
        p2[1]=ave.hp;
        p2p=1;
        enter=5;
        key = 'y';
      }
      if (key == '2') {
        p2[0]=fionna.atq;
        p2[1]=fionna.hp;
        p2p=2;
        enter=5;
        key = 'y';
      }
      if (key == '3') {
        p2[0]=gumball.atq;
        p2[1]=gumball.hp;
        p2p=3;
        enter=5;
        key = 'y';
      }
      if (key == '4') {
        p2[0]=mordecai.atq;
        p2[1]=mordecai.hp;
        p2p=4;
        enter=5;
        key = 'y';
      }
      if (key == '5') {
        p2[0]=pato.atq;
        p2[1]=pato.hp;
        p2p=5;
        enter=5;
        key = 'y';
      }
      if (key == '6') {
        p2[0]=rick.atq;
        p2[1]=rick.hp;
        p2p=6;
        enter=5;
        key = 'y';
      }
    }
  }
}


void pantalla1() {

  if (second()%2==0) {
    scale(.48);
    image(tituloa, 0, 0);
  } else if (second()%2==1) {
    scale(.48);
    image(titulob, 0, 0);
  }
}

void pantalla2() {

  if (second()%2==0) {
    scale(.48);
    image(historiaa, 0, 0);
  } else if (second()%2==1) {
    scale(.48);
    image(historiab, 0, 0);
  }
}

void pantalla25() {

  if (second()%2==0) {
    scale(.48);
    image(instruca, 0, 0);
  } else if (second()%2==1) {
    scale(.48);
    image(instrucb, 0, 0);
  }
}

void pantalla3() {


  background(0);
  textSize(300);
  fill(255);
  textAlign(CENTER);
  text("P1", width/2, 300);

  cir1.circulodisplay();
  fionna.displayfionna();

  cir2.circulodisplay();
  gumball.displaygumball();

  cir3.circulodisplay();
  ave.displayave();

  cir4.circulodisplay();
  pato.displaypato();

  cir5.circulodisplay();
  mordecai.displaymordecai();

  cir6.circulodisplay();
  rick.displayrick();

  fill(255);
  textSize(50);
  text("1", 150, 550);
  text("2", 150, 300);
  text("3", 400, 300);
  text("4", 1000, 300);
  text("5", 1250, 300);
  text("6", 1250, 550);
}

void pantalla4() {


  background(0);
  textSize(300);
  fill(255);
  text("P2", width/2, 300);

  cir1.circulodisplay();
  fionna.displayfionna();

  cir2.circulodisplay();
  gumball.displaygumball();

  cir3.circulodisplay();
  ave.displayave();

  cir4.circulodisplay();
  pato.displaypato();

  cir5.circulodisplay();
  mordecai.displaymordecai();

  cir6.circulodisplay();
  rick.displayrick();
  textSize(50);
  fill(255);
  text("1", 150, 550);
  text("2", 150, 300);
  text("3", 400, 300);
  text("4", 1000, 300);
  text("5", 1250, 300);
  text("6", 1250, 550);
}


void pantalla5 () {
  personajes ();
  if (turno==1) {
    textSize(50);
    text("P1", 700, 55);
    if (key == 'a' || key == 'A') {
      p2[1]=p2[1]-p1[0];
      if (p2[1]<=0) {
        enter = 6;
      } else
        turno=2;
    }
  }


  if (turno==2) {
    textSize(50);
    text("P2", 700, 55);
    if (key == 'l' || key == 'L') {
      p1[1]=p1[1]-p2[0];
      if (p1[1]<=0) {
        enter = 6;
      } else
        turno=1;
    }
  }

  float e=0, d=0;

  vidap1=p1[1]*10/p1[1];
  vidap2=p2[1]*10/p2[1];

  e=p1[1]/vidap1;
  d=p2[1]/vidap2;

  rect(150, 750, e*100, 30);
  rect(750, 750, d*100, 30);
}

void personajes () {
  avep1 = new m(12, 7, 450, 90, -1, 1);              //
  fionnap1 = new m(20, 4, 650, 0, -0.7, 0.7);
  gumballp1 = new m(25, 3, 600, 200, -0.5, 0.5);
  mordecaip1 = new m(30, 3, 150, 150, 0.5, 0.5);
  patop1 = new m(15, 5, 600, 150, -0.5, 0.5);            //
  rickp1 = new m(17, 4, 800, 140,- 1, 1);

  avep2 = new m(12, 7, 700, 90, 1, 1);             //
  fionnap2 = new m(20, 4, 750, 0, 0.7, 0.7);
  gumballp2 = new m(25, 3, 775, 200, 0.5, 0.5);
  mordecaip2 = new m(30, 3, 1270, 150, -0.5, 0.5);
  patop2 = new m(15, 5, 800, 150, 0.5, 0.5);              //
  rickp2 = new m(17, 4, 600, 140, 1, 1);


  if (p1p == 1) {
    avep1.displayave();
  }
  if (p1p == 2) {
    fionnap1.displayfionna();
  }
  if (p1p == 3) {
    gumballp1.displaygumball();
  }
  if (p1p == 4) {
    mordecaip1.displaymordecai();
  }
  if (p1p == 5) {
    patop1.displaypato();
  }
  if (p1p == 6) {
    rickp1.displayrick();
  }



  if (p2p == 1) {
    avep2.displayave();
  }
  if (p2p == 2) {
    fionnap2.displayfionna();
  }
  if (p2p == 3) {
    gumballp2.displaygumball();
  }
  if (p2p == 4) {
    mordecaip2.displaymordecai();
  }
  if (p2p == 5) {
    patop2.displaypato();
  }
  if (p2p == 6) {
    rickp2.displayrick();
  }
}

void pantalla6() {
  if (turno==1) {

  if (second()%2==0) {
    scale(.4);
    image(p1wina, 250, 0);
  } else if (second()%2==1) {
    scale(.4);
    image(p1winb, 250, 0);
  }
    p1[0]=0;
    p1[1]=0;
    p2[0]=0;
    p2[1]=0;
  }

  if (turno==2) {

  if (second()%2==0) {
    scale(.4);
    image(p2wina, 250, 0);
  } else if (second()%2==1) {
    scale(.4);
    image(p2winb, 250, 0);
  }
    p1[0]=0;
    p1[1]=0;
    p2[0]=0;
    p2[1]=0;
  }
}