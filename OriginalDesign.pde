
color colors = color(0); //start with black
//int brushSize = 5;

void setup()
{
	size(600, 400);
	background(255);
}
void draw()
{
	tools();
	//fill(colors);
	//stroke(0);
	//ellipse(mouseX, mouseY, 15, 15); //color image
}

void mouseClicked()
{
	if(mouseX>500 && mouseX<600 && mouseY<133 && mouseY>0) //clear
	{
		fill(255);
		rect(-1, -1, 602, 402);
		tools();
	}
	if(mouseX>500 && mouseX<600 && mouseY<266 && mouseX>133) //eraser
	{
		colors = color(255);
		//fill(255);
		//ellipse(mouseX, mouseY, 15, 15); //color image
	}
	if(mouseX>0 && mouseX<50 && mouseY<100 && mouseY>0) //red
	{
		colors = color(255, 0, 0);
		//fill(255, 0, 0);
		//ellipse(mouseX, mouseY, 15, 15); //color image
	}
	if(mouseX>0 && mouseX<50 && mouseY<200 && mouseY>100) //blue
	{
		colors = color(0, 0, 128);
		//fill(0, 0, 128);
		//ellipse(mouseX, mouseY, 15, 15); //color image
	}
	if(mouseX>0 && mouseX<50 && mouseY<300 && mouseY>200) //yellow
	{
		colors = color(255, 255 0);
		//fill(255, 255 0);
		//ellipse(mouseX, mouseY, 15, 15); //color image
	}
	if(mouseX>0 && mouseX<50 && mouseY<100 && mouseY>0) //black
	{
		colors = color(0, 0, 0);
		//fill(0);
		//ellipse(mouseX, mouseY, 15, 15); //color image
	}
	if(mouseX>50 && mouseX<100 && mouseY<100 && mouseY>0) //purple
	{
		colors = color(255, 0, 0);
		//fill(255, 0, 0);
		//ellipse(mouseX, mouseY, 15, 15); //color image
	}
	if(mouseX>50 && mouseX<100 && mouseY<200 && mouseY>100) //green
	{
		colors = color(0, 100, 0);
		//fill(0, 100, 0);
		//ellipse(mouseX, mouseY, 15, 15); //color image
	}
	if(mouseX>50 && mouseX<100 && mouseY<300 && mouseY>200) //orange
	{
		colors = color(255, 140, 0);
		//fill(255, 140, 0);
		//ellipse(mouseX, mouseY, 15, 15); //color image
	}
	if(mouseX>50 && mouseX<100 && mouseY<400 && mouseY>300) //browm
	{
		colors = color(139, 69, 19);
		//fill(139, 69, 19);
		//ellipse(mouseX, mouseY, 15, 15); //color image
	}
}

void mouseDragged()
{
	paint();
}

void paint()
{
	noStroke();
	fill(colors);
	ellipse(mouseX, mouseY, 15, 15);
}

void erase()
{
	fill(255);
	noStroke();
	ellipse(550, 200, 15, 15); //eraser
}

void tools()
{	
	stroke(0);
	fill(255);
	int rightY = 0; 
	while(rightY<399){ //loop for right side
		rect(500, rightY, 100, 133); //right small box
		rightY += 133;
	}

	int left = 0;
	while(left < 399){ //loop for left side
		rect(0, left, 50, 100); //left small box
		rect(50, left, 50, 100); //right small box
		left += 100;
	}

	fill(255);
	ellipse(550, 200, 15, 15); //eraser image
	fill(255, 0, 0);
	ellipse(25, 50, 15, 15); //red
	fill(0, 0, 128);
	ellipse(25, 150, 15, 15); //blue
	fill(255, 255, 0);
	ellipse(25, 250, 15, 15); //yellow
	fill(0);
	ellipse(25, 350, 15, 15); //black
	fill(148, 0, 211);
	ellipse(75, 50, 15, 15); //purple
	fill(0, 100, 0);
	ellipse(75, 150, 15, 15); //green
	fill(255, 140, 0);
	ellipse(75, 250, 15, 15); //orange
	fill(139, 69, 19);
	ellipse(75, 350, 15, 15); //brown

	fill(0);
	textAlign(CENTER, CENTER); //text below//
	textSize(70);
	text("X", 550, 50);
	textSize(15);
	text("Clear", 550, 120);
	text("Eraser", 550, 250);
	text("Hold, click,\nand drag\nyour mouse\nto draw.", 550, 340);
	//text("Brush Size", 550, 380);
}
