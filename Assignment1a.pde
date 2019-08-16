float x;
float y;
float yDelta;


void setup() {
  size(600,600);

}

void draw() {

//Background
background(0);

snemand();

//Movement:
//x-axis
x++;

//y-axis
y++;

//Jump
yDelta=sin(x/5)*10;

//Size

}

void snemand() {
  
//Head (x,y,width,height)
  ellipse(x,y+50+yDelta,50,50);

//Eyes (x,y,width,height)
  ellipse(x+10,y+50+yDelta,10,10);
  ellipse(x-10,y+50+yDelta,10,10);

//Belly (x,y,width,height)
  ellipse(x,y+100+yDelta,75,75);

//Nose (x,y,width,height)
  rectMode(CENTER);
  rect(x,y+62+yDelta,10,10);
}
