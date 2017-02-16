private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(109, 107, 103);   
  stroke(81, 43, 18);   
  strokeWeight(5);
  line(380,480,380,380); 
  strokeWeight(2);
  stroke(188, 114, 3); 
  for(double i=150; i>0.8; i --)
  	drawBranches(380,380,i,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double ang1, ang2;
  ang1 = angle-branchAngle;
  ang2 = angle+branchAngle;
  branchLength = branchLength*fractionLength;

  int endX1 = (int)(branchLength*Math.cos(ang1) + x);
  int endY1 = (int)(branchLength*Math.sin(ang1) + y);
  int endX2 = (int)(branchLength*Math.cos(ang2) + x);
  int endY2 = (int)(branchLength*Math.sin(ang2) + y);

  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);

  if(branchLength > smallestBranch){
  	drawBranches(endX1,endY1,branchLength/1.1,angle/1.2);
  	drawBranches(endX2,endY2,branchLength/1.1,angle/1.1);
  }

} 
