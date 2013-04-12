class Ball{

  color c;
  PVector loc;
  PVector v;
  PVector a;
  float d = 30;
  
  Ball(float tempX, float tempY){
  
  loc = new PVector(tempX,tempY);
  c = color(random(255),random(255),random(255));
  v = new PVector(random(0,3),random(-2,2));
  a = new PVector(0,0.05);
  }
  
  void display(){
    stroke(c);
    strokeWeight(d);
    point(loc.x,loc.y);
  }
  
  void move(){
    v.add(a);
    loc.add(v);
  }
  
  void collide(){
    for(int i = 1; i <lines.length; i++){
      if(lines[i]!=null) {
        //Work out if ball is within lines
        PVector l1toBall=new PVector(loc.x-lines[i].X1,loc.y-lines[i].Y1);
        PVector l2toBall=new PVector(lines[i].X1-loc.x,lines[i].Y2-loc.y);
        PVector l1tol2=new PVector(lines[i].X2-lines[i].X1,lines[i].Y2-lines[i].Y1);
        float r = l1tol2.dot(l1toBall)/l1tol2.dot(l1tol2);
        //Calc percentage along line the nearest point is
        //float r = ((loc.x-lines[i].X1)*(lines[i].X2-lines[i].X2))+((loc.y-lines[i].Y1)*(lines[i].Y2-lines[i].Y1))/pow(lines[i].linelength,2);
        
        //Calc position of closest point on line
        if(r>=0 && r<=1){
          float closestX = lines[i].X1+(r*(lines[i].X2-lines[i].X1));
          float closestY = lines[i].Y1+(r*(lines[i].Y2-lines[i].Y1));
          //Calc position relative to point 1 on line
          float distToPointX = closestX - loc.x;
          float distToPointY = closestY - loc.y;
          //Calc dist to point from line
          float distToPoint = sqrt(pow(distToPointX,2)+pow(distToPointY,2));
       
          //If less than the radius, a collision has occured.
          if(distToPoint<=d/2){
            c = color(random(255),random(255),random(255));
            
            float vToNorm = PVector.angleBetween(v,l1tol2);
            v.rotate(vToNorm);
            
          }
        }
      }
    }  
  }
}
