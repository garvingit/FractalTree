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
	background(255);   
	stroke(81, 43, 18);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	private double ang1;
	ang1 += branchAngle;
	private int endX1 = (int)(branchLength*Math.cos(ang1) + x);
	private int endY1 = (int)(branchLength*Math.sin(ang1) + y);
	private double ang2;
	ang2 -= branchAngle;
	private int endX2 = (int)(branchLength*Math.cos(ang2) + x);
	private int endY2 = (int)(branchLength*Math.sin(ang2) + y);
	line(x,y,enddX1,endY1);
	line(x,y,enddX2,endY2);

} 
