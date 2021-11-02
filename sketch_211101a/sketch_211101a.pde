Particle [] particles;
void setup() {
  size(400, 500);
  particles = new Particle[1000]; 
  for (int i=0; i<particles.length; i++) {
    particles[i]=new Particle(200, 250);
  }
}
void draw() {
  background(255, 255, 255);

  for (int i=0; i<particles.length; i++) {
    particles[i].update();


    particles[i].draw();
  }
  //System.out.print(PI);
}
class Particle {
  int x;
  int y;
  int x2;
  int y2;
  float angle;
  float mag;

  Particle(int x, int y) {
    this.x = x;
    this.y = y;
    this.x2=x;
    this.y2=y;
    angle = random(0, 2*PI); 
    mag = random(5, 10);
  }
  void update() {
   
    if (x>width || x<=0 || y> height || y<=0) {
      x=width/2;
      y = height/2;
      x2 = width/2;
      y2 = height/2;
      angle = random(2*PI);
      mag = random(2*PI);
    }
    else{
       x=x2;
    y=y2;
    x2 += mag*cos(angle);
    y2 += mag*sin(angle);
    }
  }
  void draw() {
    stroke(0, 0, 0);
    strokeWeight(5);
    line(x, y, x2, y2);
  }
}
