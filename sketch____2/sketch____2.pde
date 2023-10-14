int num=8;
PImage[] img=new PImage[num];
float s;
//int count;

void setup() {
  size(600, 800);
  background(255);
  noStroke();
  img[0] = loadImage("001.png");
  img[0].resize(width, height);
  img[1] = loadImage("1.png");
  img[2] = loadImage("2.png");
  img[3] = loadImage("3.png");
  img[4] = loadImage("4.png");
  img[5] = loadImage("5.png");
  img[6] = loadImage("6.png");
  img[7]=loadImage("7.png");
}

void draw() {
  background(255);
  s = map(mouseX, 0, width, 1, 100);
  for (int y = 0; y < img[0].height; y+=s ) {
    for (int x = 0; x < img[0].width; x+=s) {
      int loc = x + (y * img[0].width);
      //fill(img.pixels[loc]);
      //rectMode(CENTER);
      float bt = brightness(img[0].pixels[loc]);
      int iter = int(map(bt, 0, 255, 10, 0));
      //if (iter > 0) {

      //for (int i = 0; i < iter; i ++) {

      if (iter==10) {
        image(img[7], x, y, s, s);
      }
      if (iter==9) {
        image(img[1], x, y, s, s);
      }
      if (iter==8) {
        image(img[2], x, y, s, s);
      }
      if (iter==6) {
        image(img[3], x, y, s, s);
      }
      if (iter==7) {
        image(img[3], x, y, s, s);
      }
      if (iter==5) {
        image(img[4], x, y, s, s);
      }
      if (iter==4) {
        image(img[5], x, y, s, s);
      }
      if (iter==3) {
        image(img[6], x, y, s, s);
      }
      //noFill();
      strokeWeight(3);
      //rect(x, y, s, s);
      // tile(bt, s, x, y);
      //        }
      //    }
      // count ++;
      //println("count: " + count);
    }
  }
}

//void tile(float bt, float sSize, int rectX, int rectY) {
//  int iter = int(map(bt, 0, 255, 10, 0));
//  if (iter > 0) {
//    //float interval = sSize/ (iter*2);
//    for (int i = 0; i < iter; i ++) {
//      // float rectSize = sSize- interval*i*2;
//      if (iter==10) {
//        image(img[1], x, y, s, s);
//      }
//       if (iter==8) {
//        image(img[2], x, y, s, s);
//      }
//      if (iter==6) {
//        image(img[3], x, y, s, s);
//      }
//      if (iter==5) {
//        image(img[4], x, y, s, s);
//      }
//      if (iter==4) {
//        image(img[5], x, y, s, s);
//      }
//      if (iter==3) {
//        image(img[6], x, y, s, s);
//      }
//      noFill();
//      noStroke();
//      //stroke(0);
//      //strokeWeight(1);
//      //rect(rectX, rectY, rectSize, rectSize);
//    }
//  }
//}
