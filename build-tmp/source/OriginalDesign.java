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

int birdX = 275;

public void setup()
{
	size(400, 400);
}
public void draw()
{
	background(255);
    bird();
}
public void bird()
{
	noStroke();
	fill(0);
	rect(birdX+38, 50, 5, 10); //left leg
	fill(105); 
	arc(birdX+40, 60, 75, 75, 0, PI); //body
	triangle(birdX-10, 45, birdX-45, 55, birdX-10, 65); //beak
	ellipse(birdX, 50, 50, 50); //head
	fill(0);
	ellipse(birdX-10, 40, 7,7); //eye
	arc(birdX+43, 65, 45, 45, 0, PI); //wing
	fill(255);
	ellipse(birdX-9, 39, 3,3); //lightcatcher


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
