float p1=100,p2=100,p3=random(15,34);
int pantalla=1, j1=0, j2=0, turno=0, v=0, ganador=0;
PFont a,b,c,d;
float puntos;

class Personajes
{
  String numero;
  int display;
  int puntaje;
  
  Personajes (String numero_, int display_, int puntaje_)
  {
    numero = numero_;
    display = display_;
    puntaje = puntaje_;
  }
  
  void puntaje()
  {
    switch (puntaje)
    {
      case 1:
      puntos=random(20,70);
      break;
      case 2:
      puntos=random(30,90);
      break;
      case 3:
      puntos=random(55,100);
      break;
      case 4:
      puntos=random(10,60);
      break;
      case 5:
      puntos=random(5,40);
      break;
    }
  }
  
  void dibujar()
  { 
    switch (display)
    {
       case 1:
       noStroke();
       fill (#687473);
       rect (40,180,60,30);
       rect (145,180,60,30);
       fill (#848988);
       rect (80,30,90,90);
       fill (#687473);
       rect (90,120,70,20);
       fill (#848988);
       rect (80,140,90,140,4);
       rect (30,175,20,20);
       rect (30,195,20,20);
       rect (25,175,10,15);
       rect (25,200,10,15);
       rect(200,175,20,40);
       rect(220,175,10,15);
       rect(220,200,10,15);
       fill (#687473); //color oscuro
       rect (90,280,25,50);
       rect (130,280,25,50);
       fill (#848988); //color claro
       rect (130,330,35,20);
       rect (80,330,35,20);
       
       
       fill (255);
       stroke(0);
       rect (85,90,20,20);
       rect (105,90,20,20);
       rect (125,90,20,20);
       rect (145,90,20,20);
       ellipse (105,60,25,25);
       ellipse (145,60,25,25);       
       break;
       
       case 2:
       noStroke();
       fill (#4DB72E);
       rect (85,85,150,100);
       rect (100,185,35,50);
       rect (180,185,35,50);
       
       fill (#3C5F31);
       rect (90,235,55,15);
       rect (90,245,15,15);
       rect (130,245,15,15);
       rect (170,235,55,15);
       rect (170,245,15,15);
       rect (210,245,15,15);
       
       fill (#3C5F31);
       rect (150,40,10,45);
       ellipse (155,35,20,20);
       
       fill (255);
       rect (110,120,30,30);
       rect (180,120,30,30);
       fill (0);
       rect (120,130,10,10);
       rect (190,130,10,10);
       break;
       
       case 3:
       
       fill (#AD31D3);
       rect(180,60,35,80);
       rect(250,180,80,35);
       rect(180,250,35,80);
       rect(70,180,80,35);
       
       fill (#D331BE);
       rect (170,50,55,20);
       rect (170,40,10,10);
       rect (215,40,10,10);
       
       rect (330,170,20,55);
       rect (350,170,10,10);
       rect (350,215,10,10);
       
       rect (170,330,55,20);
       rect (170,350,10,10);
       rect (215,350,10,10);
       
       rect (60,170,20,55);
       rect (55,170,10,10);
       rect (55,215,10,10);
       
       fill (#D331BE);
       noStroke();
       ellipse (200,200,130,130);
       fill (0);
       ellipse (160,200,20,20);
       ellipse (170,170,20,20);
       ellipse (165,230,20,20);
       ellipse (190,200,20,20);
       ellipse (195,150,20,20);
       ellipse (195,250,20,20);
       ellipse (220,240,20,20);
       ellipse (195,250,20,20);
       ellipse (235,215,20,20);
       ellipse (215,195,20,20);
       ellipse (215,170,20,20);
       ellipse (240,175,20,20);    
       break;
       
       case 4:
       noStroke();
       fill (#78817F);
       rect (135,85,150,100);
       rect (155,185,20,50);
       rect (200,185,20,50);
       rect (240,185,20,50);
       
       rect (85,120,50,25);
       rect (285,120,50,25);
       
       pushMatrix();
       scale (0.7,0.7);
       translate (355,65);
       rotate(95.8);
       rect (90,235,55,15);
       rect (90,245,15,15);
       rect (130,245,15,15);
       popMatrix();
       
       pushMatrix();
       scale (0.7,0.7);
       translate (385,-75);
       rect (90,235,15,55);
       rect (100,235,15,15);
       rect (100,275,15,15);
       popMatrix();
       
      
       
       fill (#A2A5A4);
       pushMatrix();
       scale (0.7,0.7);
       translate (115,90);
       rect (90,235,55,15);
       rect (90,245,15,15);
       rect (130,245,15,15);
       popMatrix();
       pushMatrix();
       scale (0.7,0.7);
       translate (185,90);
       rect (90,235,55,15);
       rect (90,245,15,15);
       rect (130,245,15,15);
       popMatrix();
       pushMatrix();
       scale (0.7,0.7);
       translate (245,90);
       rect (90,235,55,15);
       rect (90,245,15,15);
       rect (130,245,15,15);
       popMatrix();
       
       fill (255);
       rect (180,110,60,30);
       fill (0);
       rect (195,115,30,20);
       break;
       
       case 5:
       noStroke();
       fill (#FEFF46);
       rect (80,80,200,90);
       rect (110,150,30,60);
       rect (200,150,30,60);
       rect (110,150,30,60);
       
       rect (60,110,30,30);
       rect (270,110,30,30);
       
       fill (255);
       rect (95,85,50,60);
       rect (205,85,50,60);
       
       fill (0);
       rect (105,95,20,20);
       rect (210,95,20,20);
       rect (160,140,20,20);
       break;
    }
  }
  
  
}

Personajes uno,dos,tres,cuatro,cinco;

void setup()
{
  size (900,600);
  uno = new Personajes ("uno",1,1);
  dos = new Personajes ("dos",2,2);
  tres = new Personajes ("tres",3,3);
  cuatro = new Personajes ("cuatro",4,4);
  cinco = new Personajes ("cinco",5,5);
  
  
  a = loadFont("a.vlw");
  b = loadFont("b.vlw");
  c = loadFont("c.vlw");
  d = loadFont("d.vlw");
  p3=random (5,8);
 
}

void draw()
{
  //uno.dibujar();
  //dos.dibujar();
  //tres.dibujar();
  //cuatro.dibujar();
  //cinco.dibujar();
  
  if (pantalla==1)
  {
    pantallaUno();
    keyPressed();
    
    if (key=='z' || key=='Z')
    {
      pantalla=2;
    }
  }
  
  if (pantalla==2)
  {
    pantallaDos();
    
    if (j1!=0)
    {
      pantalla=3;
      println (pantalla);
    }
  }
  
  if (pantalla==3)
  {
    pantallaTres();
    if (j2!=0)
    {
      pantalla=4;
      println (pantalla);
    }
  }
  
  if (pantalla==4)
  {
    pantallaCuatro();
    println (pantalla);
    
    if (p1<=0 || p2<=0)
    {
      pantalla=5;
    }
  }
  
  if (pantalla==5)
  {
    
    stroke (0);
    strokeWeight(2);
    fill (#FACE53);
    rect (50,50,800,500);
    noStroke();
    textFont(c);
    fill (0);
    text ("¡TENEMOS UN GANADOR!",180,height/2);
    textFont(d);
    text ("Pulsa la tecla cinco para descubrirlo",250,400);
    
    if (p1>p2)
    {
    ganador=j1;
    }
    
    else if (p2>p1)
    {
    ganador=j2;
    }
    
    if (v==1)
    {
      pantalla=6;
    }
  }
  
  if (pantalla==6)
  {
    pantallaSeis();
    
    if (mousePressed && (mouseX>570) && (mouseX<=570+130) && (mouseY>185) && (mouseY<=185+50))
    {
      pantalla=1;
      p1=100;
      p2=100;
      j1=1;
      j2=2;
      turno=0;
      v=0;
      ganador=0;
    }
    
    else if (mousePressed && (mouseX>570) && (mouseX<=570+130) && (mouseY>385) && (mouseY<=385+50))
    {
      exit();
    }

    
  }
  
  
  //rect (570,185,130,50,4);
  //rect (570,385,130,50,4);

}

void pantallaUno()
{
  background (0);
  noStroke();

  fill (#C9C9C3);
  ellipse(width/2,580,950,450);
  fill (#AAAAAA);
  ellipse(140,530,190,100);
  ellipse(340,420,160,80);
  ellipse(390,530,190,100);
  ellipse(560,460,160,70);
  ellipse(730,535,180,80);
  
  fill (0,0,random(1,255));
  textFont (a);
  text ("STEELHITS",320,150);
  pushMatrix();
  translate(24,260);
  scale(0.8,0.8);
  uno.dibujar();
  popMatrix();
  
  pushMatrix();
  translate(550,260);
  scale(0.7,0.7);
  tres.dibujar();
  popMatrix();
  
  fill (255);
  textFont(b);
  text ("PRESIONA Z PARA JUGAR",330,250);
}

void pantallaDos()
{
  background (0);
  textFont(b);
  fill(255);
  text ("JUGADOR 1. SELECCIONA A TU PERSONAJE",250,50);
  text ("CON LA TECLA CORRESPONDIENTE",290,80);
  
  //personaje1
  pushMatrix();
  translate(24,160);
  scale(0.5,0.5);
  uno.dibujar();
  popMatrix();
  
  //personaje2
  pushMatrix();
  translate(150,200);
  scale(0.5,0.5);
  dos.dibujar();
  popMatrix();
  
  //personaje3
  pushMatrix();
  translate(280,150);
  scale(0.5,0.5);
  tres.dibujar();
  popMatrix();
  
  //personaje4
  pushMatrix();
  translate(480,200);
  scale(0.5,0.5);
  cuatro.dibujar();
  popMatrix();
  
  //personaje5
  pushMatrix();
  translate(690,200);
  scale(0.5,0.5);
  cinco.dibujar();
  popMatrix();
  
  fill(255);
  text ("a",80,380);
  text ("b",220,380);
  text ("c",370,380);
  text ("d",580,380);
  text ("e",790,380);
}

void pantallaTres()
{
  background (0);
  textFont(b);
  fill(255);
  text ("JUGADOR 2. SELECCIONA A TU PERSONAJE",250,50);
  text ("CON LA TECLA CORRESPONDIENTE",290,80);
  
  //personaje1
  pushMatrix();
  translate(24,160);
  scale(0.5,0.5);
  uno.dibujar();
  popMatrix();
  
  //personaje2
  pushMatrix();
  translate(150,200);
  scale(0.5,0.5);
  dos.dibujar();
  popMatrix();
  
  //personaje3
  pushMatrix();
  translate(280,150);
  scale(0.5,0.5);
  tres.dibujar();
  popMatrix();
  
  //personaje4
  pushMatrix();
  translate(480,200);
  scale(0.5,0.5);
  cuatro.dibujar();
  popMatrix();
  
  //personaje5
  pushMatrix();
  translate(690,200);
  scale(0.5,0.5);
  cinco.dibujar();
  popMatrix();
  
  fill(255);
  text ("f",80,380);
  text ("g",220,380);
  text ("h",370,380);
  text ("i",580,380);
  text ("j",790,380);
}

void pantallaCuatro()
{
  
  background (0);
  for (int i=0;i<=875;i=i+75)
  {
    for (int j=0;j<=375;j=j+25)
    {
    fill (#C15617);
    rect (i,j,50,50);
  }
  }
  
  fill (#464646);
  rect (0,375,900,300);
  
  switch (j1)
  {
    case 1:
    pushMatrix();
    scale(0.8,0.8);
    translate(140,213);
    uno.dibujar();
    popMatrix();
    break;
    
    case 2:
    pushMatrix();
    scale(0.8,0.8);
    translate(120,295);
    dos.dibujar();
    popMatrix();
    break;
    
    case 3:
    pushMatrix();
    scale(0.8,0.8);
    translate(50,275);
    tres.dibujar();
    popMatrix();
    break;
    
    case 4:
    pushMatrix();
    scale(0.8,0.8);
    translate(50,275);
    cuatro.dibujar();
    popMatrix();
    break;
    
    case 5:
    pushMatrix();
    scale(0.8,0.8);
    translate(50,325);
    cinco.dibujar();
    popMatrix();
    break;
  }
  
  switch (j2)
  {
    case 1:
    pushMatrix();
    scale(0.8,0.8);
    translate(725,213);
    uno.dibujar();
    popMatrix();
    break;
    
    case 2:
    pushMatrix();
    scale(0.8,0.8);
    translate(720,295);
    dos.dibujar();
    popMatrix();
    break;
    
    case 3:
    pushMatrix();
    scale(0.8,0.8);
    translate(650,235);
    tres.dibujar();
    popMatrix();
    break;
    
    case 4:
    pushMatrix();
    scale(0.8,0.8);
    translate(630,285);
    cuatro.dibujar();
    popMatrix();
    break;
    
    case 5:
    pushMatrix();
    scale(0.8,0.8);
    translate(730,325);
    cinco.dibujar();
    popMatrix();
    break;
  }
  stroke (0);
  strokeWeight(3);
  fill (255);
  rect (100,100,(p1)*2,40);
  rect (560,100,(p2)*2,40);
  noStroke();
  
  fill (255);
  textFont(b);
  text ("PRESIONA TECLA UNO",120,480);
  text ("PRESIONA TECLA CERO",600,480);
  
}

void pantallaSeis()
{
  stroke (0);
  strokeWeight(2);
  fill (#FACE53);
  rect (50,50,800,500);
  noStroke();
  textFont(a);
  fill (255);
  text ("¡FELICIDADES!",75,150);
  
  strokeWeight(2);
  stroke(0);
  fill (255);
  rect (570,185,130,50,4);
  rect (570,385,130,50,4);
  
 fill (0);
 noStroke();
 textFont(d);
 text ("JUGAR",595,220);
 text ("SALIR",605,420);
  
  switch(ganador)
  {
    case 1:
    pushMatrix();
    scale(1,1);
    translate(105,150);
    uno.dibujar();
    popMatrix();
    break;
    
    case 2:
    pushMatrix();
    scale(1,1);
    translate(105,150);
    dos.dibujar();
    popMatrix();
    break;
    
    case 3:
    pushMatrix();
    scale(1,1);
    translate(105,150);
    tres.dibujar();
    popMatrix();
    break;
    
    case 4:
    pushMatrix();
    scale(1,1);
    translate(105,150);
    cuatro.dibujar();
    popMatrix();
    break;
    
    case 5:
    pushMatrix();
    scale(1,1);
    translate(105,150);
    cinco.dibujar();
    popMatrix();
    break;
  }
  
}


void keyPressed()
{
  if (pantalla<=2)
  {
  switch (key)
  {
    case 'z':
    pantalla=2;
    println (pantalla);
    break;
    case 'Z':
    pantalla=2;
    println (pantalla);
    break;
    
    case 'a':
    j1=1;
    println (j1);
    break;
    
    case 'b':
    j1=2;
    println (j1);
    break;
    
    case 'c':
    j1=3;
    println (j1);
    break;
    
    case 'd':
    j1=4;
    println (j1);
    break;
    
    case 'e':
    j1=5;
    println (j1);
    break;
  }
  }
  
  if (pantalla==3 && j1!=0)
  {
    switch (key)
    {
    case 'f':
    j2=1;
    println (j2);
    break;
    
    case 'g':
    j2=2;
    println (j2);
    break;
    
    case 'h':
    j2=3;
    println (j2);
    break;
    
    case 'i':
    j2=4;
    println (j2);
    break;
    
    case 'j':
    j2=5;
    println (j2);
    break;
    }
  }
  
  if (turno==0 && pantalla==4 && key=='1')
  {
    p1=p1-p3;
    println (p1);
    turno=1;
  }
  
  if (turno==1 && pantalla==4 && key=='0')
  {
    p2=p2-p3;
    println (p2);
    turno=0;
  }
  
  if (pantalla==5 && key=='5')
  {
      v=1;  
  }

}