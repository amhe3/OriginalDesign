
int colors = 0;
/*color red = color(255, 0, 0);
color blue = color(0, 0, 128);
color yellow = color(255, 255, 0);
color black = color(0);
color purple = color(148, 0, 211);
color green = color(0, 100, 0);
color orange = color(255, 140, 0);
color brown = color(139, 69, 19);*/
color[] a = { color(255, 0, 0), color(0, 0, 128), color(255, 255, 0), color(0) };
color[] b = { color(148, 0, 211), color(0, 100, 0), color(255, 140, 0), color(139, 69, 19) };
//int brushSize = 5;

void setup()
{
	size(600, 400);
	background(255);
}
void draw()
{
	tools();
}

void mouseDragged()
{
	paint();
}

void paint()
{
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
	fill(255);
	int rightY = 0; 
	while(rightY<399){ //loop for right side
		rect(500, rightY, 100, 133); //right small box
		rightY += 133;
	}

	int left = 0;
	while(left < 399){ //loop for left side
		for (int i=0; i < a.length; i++) {
    		fill(a[i]);
  		}
		rect(0, left, 50, 100); //left small box
		for (int i=0; i < a.length; i++) {
    		fill(a[i]);
  		}
		rect(50, left, 50, 100); //right small box
		left += 100;
	}

	fill(255);
	ellipse(550, 200, 15, 15); //eraser image

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
