particle[] bob;

void setup()
{
  size(500,500);
  bob = new particle[2000];
  frameRate(100);
  for (int i = 0; i < bob.length; i++){
    bob[i] = new normalParticle();
  }
  bob[0] = new oddballParticle();
  bob[1] = new jumboParticle();
}
void draw()
{
   background(0);
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }
}
interface particle
{ 
  public void move();
  public void show();
}
class oddballParticle implements particle //uses an interface
{
  double x,y,widthNum, heightNum,dSpeed,dDirection;
  oddballParticle(){
    x = 250;
    y = 250;
    widthNum = 75;
    heightNum = 75;
    dSpeed = (double)(Math.random()*5);
    dDirection = (Math.random()*5 * Math.PI);
  }
  public void show (){
    fill(230,21,74);
    rect((float) x, (float) y, (float) widthNum, (float) heightNum);
  }
  public void move(){
    
    x = y + (Math.cos(dDirection) * dSpeed);
    y = x - (Math.sin(dDirection) * dSpeed);
  }
}
class jumboParticle extends normalParticle //uses inheritance
{
   public void show(){
   fill(myColor);
    noStroke();
    ellipse((float)x,(float)y,20,20);
   }
}
class normalParticle implements particle//constructor
{
  int myColor;
  double x,y, dSpeed, dDirection;
  normalParticle()
  {
    myColor = color(255);
    x = 200;
    y = 200;
    dSpeed =(double)(Math.random() * 10);
    dDirection = (Math.random()*5 * Math.PI);
  }
   void move(){
    
     x = x + (Math.cos(dDirection) * dSpeed);
     y = y + (Math.sin(dDirection) * dSpeed);
    
    } 
  
   void show(){
    fill(myColor);
    noStroke();
    ellipse((float)x,(float)y,5,5);
  
  }
}
   

