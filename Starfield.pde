Particle[]bob;
void setup()
{
  size(300,300)
  background(0);
  bob = new Particle[100];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Particle();
  }
}
void draw()
{
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }
}
class NormalParticle //constructor
{
  double x,y,dSpeed, dDirection;
  Particle(x,y)
  {
    x= (int)(Math.random()*300);
    y =(int)(Math.random()*300);
    dSpeed = Math.random()*10;
    dDirection = (Math.random()*2 * Math.PI);
  }
  void move(){
    x = x +(Math.cos(dDirection) * dSpeed);
   
}
interface Particle
{
  
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}

