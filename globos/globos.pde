class Globo
{
  float x, y,vx,vy;
  color c;
  Globo (float _x, float _y)
  {
   x=_x; //
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
   c = color(random(0,255),200,100);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {

      fill(c);
      ellipse(x,y,100,100);
  
      ///imageMode(CENTER);
      ellipse(x,y,100,100);
      //image(cara, x, y, 40, 40);
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(640,680);
  globos = new ArrayList<Globo>();  
  //cara = loadImage("face.png");
}

void draw()
{
  background(255);
  //image(cara, 0, 0);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
}
