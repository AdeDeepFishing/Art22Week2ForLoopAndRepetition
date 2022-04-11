/*
 * Course: ART 22  - Computer Programming for the Arts
 * Assignment: Week 2 Practice ColorLoopsAnimation
 *
 * by Yanwen Chen
 *
 * Initiated: 2022/04/04
 * Last updated: 2022/04/06
 *
 * CITATIONS: List all sources you used for this assignment.
 *
 * NOTE: This is where you write any notes you would like
 * to leave yourself or others using your code.
 *
 * */

void setup() {
  size(800, 800);
  frameRate(1);
}

void draw() {
  background(#FEFFD3);

  //horizontal lines
  for (int x=0; x<width; x+=50) {
    //verticle lines
    for (int y=0; y<height; y+=50) {
      noStroke();
      //when the mouseX is in the left 1/3 place, middle place, right 1/3 place,
      //have different series random color's circles.
      if (mouseX<width/3) {
        fill(random(255), 0, random(255), 50);
      } else if (mouseX>width/3 && mouseX<2*width/3) {
        fill( 0, random(255), random(255), 50);
      } else {
        fill(random(255), random(255), 0, 50);
      }

      //normal:circle, keypress=>square
      if (keyPressed) {
        if (key=='r' || key=='R') {
          //fill the grids with squares
          rect(x+2.5, y+2.5, 45, 45);
        } else {
          //fill the grids with circles
          circle(x+25, y+25, 45);
        }
      } else {
        //fill the grids with circles
        circle(x+25, y+25, 45);
      }
    }
  }
}
