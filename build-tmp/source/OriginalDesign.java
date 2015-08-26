import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {


int colors = 0;
//int brushSize = 5;

public void setup()
{
	size(600, 400);
	background(255);
}
public void draw()
{
	tools();
}

public void mouseDragged() {
	paint();
}

public void paint(){
	fill(colors);
	ellipse(mouseX, mouseY, 15, 15);
}

public void tools(){
	fill(255);
	rect(0, 0, 100, 399); //left side

	int rightY = 0; 
	while(rightY<399){ //loop for right side
		rect(500, rightY, 100, 133); //right small box
		rightY += 133;
	}

	ellipse(550, 200, 15, 15); //erser image

	fill(0);
	textAlign(CENTER, CENTER); //text below//
	textSize(70);
	text("X", 550, 50);
	textSize(15);
	text("Clear", 550, 120);
	text("Eraser", 550, 250);
	text("Hold, click,\nand drag\nyour mouse\nto draw", 550, 340);
	//text("Brush Size", 550, 380);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
