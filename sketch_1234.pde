public int start_x = 75;
public int start_y = 300;
public final static int HEAD_WIDTH_HEIGHT = 120;
public final static int BODY_HEIGHT = 100;
public final static int BODY_WIDTH = 100;
public final static int SPEED = 20;
public final static int WHITE = 255;
PImage bg;

void setup() {
    size(640, 400);
    bg = loadImage("grass.jpg");
    bg.resize(640,400);
}

void drawCreature(int point_x, int point_y) {
    background(200);
    background(bg);

    //Head
    fill(65,100,218);
    ellipse(point_x+250+HEAD_WIDTH_HEIGHT/2, point_y + BODY_HEIGHT/7 - HEAD_WIDTH_HEIGHT/5, HEAD_WIDTH_HEIGHT, HEAD_WIDTH_HEIGHT);

    //Body
    fill(150);
    ellipse(point_x+45, point_y, BODY_WIDTH, BODY_HEIGHT);
    ellipse(point_x+110, point_y, BODY_WIDTH, BODY_HEIGHT);
    ellipse(point_x+175, point_y, BODY_WIDTH, BODY_HEIGHT);
    ellipse(point_x+240,point_y,BODY_WIDTH,BODY_HEIGHT);

    //Eye
    //light blue
    fill(5);
    rect(point_x+335,point_y-50, 5, 40, 20);
}

void draw() {
    drawCreature(start_x, start_y);
}

//KeyPress... Allows users to use their arrow keys to move creature
void keyReleased() {

  if(key == CODED) {
    if(keyCode == 37 && start_x > 0) {
      start_x -= SPEED;
    }
    else if(keyCode == 38 && start_y > 0) {
      start_y -= SPEED;
    }
    else if(keyCode == 39 && start_x < width - (50 + BODY_WIDTH + HEAD_WIDTH_HEIGHT)) {
      start_x += SPEED;
    }
    else if(keyCode == 40 && start_y < height - (50 + BODY_HEIGHT)) {
      start_y += SPEED;
    }
  }
}
