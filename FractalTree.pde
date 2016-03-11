private double fractionLength = .815; 
private int smallestBranch = 8; 
private double branchAngle = .5;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(255);   
	
	stroke(130,70,0);   


	strokeWeight(25);
	line(320,480,320,400);
	//stroke(0,255,0);
	strokeWeight(0.5);   
	drawBranches(320, 400, 100, 3*Math.PI/2, 20);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle, float width) 
{   
	double angle1, angle2;
	int endX1, endX2, endY1, endY2;
	
	angle1 = angle + branchAngle;
	angle2 = angle - branchAngle;

	strokeWeight(width);

	branchLength = branchLength*fractionLength;
	
	endX1 = (int)(branchLength*Math.cos(angle1) + x);
	endY1 = (int)(branchLength*Math.sin(angle1) + y);
	endX2 = (int)(branchLength*Math.cos(angle2) + x);
	endY2 = (int)(branchLength*Math.sin(angle2) + y);

	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	
	if(branchLength > smallestBranch) 
	{
		drawBranches(endX1, endY1, branchLength, angle1, width*.6);
		drawBranches(endX2, endY2, branchLength, angle2, width*.6);

	}//your code here    
} 
