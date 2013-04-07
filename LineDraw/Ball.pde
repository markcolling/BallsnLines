class Ball{
<<<<<<< HEAD
  float x;
  float y;
  PVector v;
  color c = color(0);
=======
  color c;
  PVector loc;
  PVector v;
  PVector a;
>>>>>>> Ball Motion
  
  Ball(float tempX, float tempY){
  
  loc = new PVector(tempX,tempY);
  c = color(random(255),random(255),random(255));
  v = new PVector(random(0,3),random(-2,2));
  a = new PVector(0,0.05);
  }
  
  void display(){
    stroke(c);
    strokeWeight(20);
    point(loc.x,loc.y);
  }
  void move(){
    v.add(a);
    loc.add(v);
  }
<<<<<<< HEAD
  
void display(){
  stroke(random(255));
  strokeWeight(20);
  point(x,y);
}

void move(){
   
}
=======
>>>>>>> Ball Motion
}
