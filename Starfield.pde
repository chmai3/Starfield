normalParticle[] bob;
oddballParticle[] dub;
jumboParticle[] cub;

void setup()
{
  size(300,300);
  background(31,70,219);
  bob = new normalParticle[100];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new normalParticle();
  }
  dub = new oddballParticle();
  cub = new jumboParticle();
  
}
void draw()
{
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }
}
class normalParticle //constructor
{
  double x,y,dSpeed, dDirection;
  normalParticle()
  {
    x= (int)(Math.random()*300);
    y =(int)(Math.random()*300);
    dSpeed = Math.random()*10;
    dDirection = (Math.random()*2 * Math.PI);
  }
  void move(){
    x = x +(Math.cos(dDirection) * dSpeed);
    y = y +(Math.sin(dDirection) * dSpeed);
  }
  void show(){
    ellipse((float)x,(float)y,10,10);
  }
   
}
interface particle
{ 
  public void show();
  public void move();
 
}
class oddballParticle implements particle //uses an interface
{
  rect(200,300,200,200);
}
class jumboParticle implements particle //uses inheritance
{
  
}
