
int colors = 0;
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

void mouseDragged() {
	paint();
}

void paint(){
	fill(colors);
	ellipse(mouseX, mouseY, 15, 15);
}

void tools(){
	fill(255);
	rect(0, 0, 100, 399); //left side
	ellipse(550, 200, 15, 15); //erser image

	int rightY = 0; 
	while(rightY<399){ //loop for right side
		rect(500, rightY, 100, 133); //right small box
		rightY += 133;
	}

	int left = 0; 
	while(left<399){ //loop for left side
		rect(0, left, 100, 133); //left small box
		left += 133;
	}

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
