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


int colors = color(255, 0, 0); //start with black
/*
color red = color(255, 0, 0);
color blue = color(0, 0, 128);
color yellow = color(255, 255, 0);
color black = color(0);
color purple = color(148, 0, 211);
color green = color(0, 100, 0);
color orange = color(255, 140, 0);
color brown = color(139, 69, 19);*/
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

public void mouseDragged()
{
	paint();
}

public void paint()
{
	noStroke();
	fill(colors);
	ellipse(mouseX, mouseY, 15, 15);
}

public void erase()
{
	fill(255);
	noStroke();
	ellipse(550, 200, 15, 15); //eraser
}

public void tools()
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
