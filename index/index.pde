int W, H;
color BG=#c5c5c5;
color STROKE=#202020;
int STROKE_WIDTH=30;
PVector[][] path;

void setup() {
  size(500, 600);
  W=width;
  H=height-100;
  path=new PVector[1][];
  background(BG);
}
void mouseDragged() {
  path.add(new PVector(mouseX, mouseY));
}
void keyPressed() {
  println(keyCode);
  if (keyCode==67) {
    background(BG);
  }
}
void draw() {
  ellipseMode(CENTER);
  noStroke();
  fill(STROKE);
  while (to_draw.size()>0) {
    ellipse(to_draw.get(0).x, to_draw.get(0).y, STROKE_WIDTH, STROKE_WIDTH);
    to_draw.remove(0);
  }
  noStroke();
  fill(55);
  rect(0, H, width, 100);
}
