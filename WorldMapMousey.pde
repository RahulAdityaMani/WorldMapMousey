/* @pjs preload = "world-political-map-2000px.jpg";*/
PImage b;
Point NewDelhi;
Point Istanbul;
Point Arlington;
Point McLean;
Point Bethesda;
Point Danville;
Point Cupertino;
Point Saratoga;
Point Zhuhai;
Point Tainan;
Point Taichung;
Point Greenwich;
Point HongKong;
Point Suzhou;
Point Stanford;

Point[] cities = new Point[16];

void setup(){
  size(999, 741);
  int[] points = {1000, 750};
  NewDelhi = new Point();
  Istanbul = new Point();
  Arlington = new Point();
  McLean = new Point();
  Bethesda = new Point();
  Danville = new Point();
  Cupertino = new Point();
  Saratoga = new Point();
  Zhuhai = new Point();
  Tainan = new Point();
  Taichung = new Point();
  Greenwich = new Point();
  HongKong = new Point();
  Suzhou = new Point();
  Stanford = new Point();
  cities[0] = Stanford;
  cities[1] = Cupertino;
  cities[2] = Saratoga;
  cities[3] = Danville;
  cities[4] = McLean;
  cities[5] = Arlington;
  cities[6] = Bethesda;
  cities[7] = Greenwich;
  cities[8] = Istanbul;
  cities[9] = NewDelhi;
  cities[10] = HongKong;
  cities[11] = Zhuhai;
  cities[12] = Tainan;
  cities[13] = Taichung;
  cities[14] = Suzhou;
  cities[15] = Stanford;  
}
void draw(){
  b = loadImage("world-political-map-2000px.jpg");
  background(b);
  NewDelhi.drawPoint(685, 387, color(255, 0, 0));
  Istanbul.drawPoint(550, 340, color(255, 0, 0));
  Arlington.drawPoint(264, 357, color(255, 0, 0));
  Bethesda.drawPoint(260, 354, color(255, 0, 0));
  McLean.drawPoint(258, 360, color(255, 0, 0));
  Danville.drawPoint(137, 350, color(255, 0, 0));
  Cupertino.drawPoint(139, 355, color(255, 0, 0));
  Saratoga.drawPoint(140, 354, color(255, 0, 0));
  Zhuhai.drawPoint(790, 395, color(255, 0, 0));
  Tainan.drawPoint(802, 396, color(255, 0, 0));
  Taichung.drawPoint(805, 393, color(255, 0, 0));
  Greenwich.drawPoint(265, 340, color(255, 0, 0));
  HongKong.drawPoint(775, 398, color(255, 0, 0));
  Suzhou.drawPoint(798, 366, color(255, 0, 0));
  Stanford.drawPoint(137, 352, color(0, 0, 255));
  for(int i = 0; i<15; i++){
    drawLine(cities[i], cities[i+1]);
  }
}
class Point { 
  int xpos;
  int ypos;
  // The Constructor is defined with arguments.
  Point() { 
    xpos = 0;
    ypos = 0;
    }
   void drawPoint(int tempXpos, int tempYpos, color c)
   {
     fill(c);
     ellipseMode(CENTER);
     ellipse(tempXpos, tempYpos, 8, 8);
     xpos = tempXpos;
     ypos = tempYpos;
   }
    int getX(){
      return xpos;
    }
    int getY(){
      return ypos;
    }
}   
   void drawLine(Point city1, Point city2){
  line(city1.getX(), city1.getY(), city2.getX(), city2.getY());
   }
  
