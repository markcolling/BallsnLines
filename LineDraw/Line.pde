class Line {
  public color c; 
  public float X1;
  public float Y1;
  public float X2;
  public float Y2;
  public float linelength;
  
    Line(color tempc, float templineX1, float templineY1, float templineX2, float templineY2) {
    c = tempc;
    X1 = templineX1;
    Y1 = templineY1;
    X2 = templineX2;
    Y2 = templineY2;
    linelength = sqrt(pow((X2-X1),2)+pow((Y2-Y1),2));
    }
    
    //Draw the current line to the screen
    void display() {
        stroke(200);
        strokeWeight(4);
        line(X1,Y1,X2,Y2);
    }
    
}


