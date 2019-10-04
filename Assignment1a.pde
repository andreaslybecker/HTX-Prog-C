float x;
float y;
float yDelta;
int MoveX[] = new int[20];
int MoveY[] = new int[20];
int A[] = new int[20];
int B[] = new int[20];
int C[] = new int[20];
int xSpeed[] = new int[20];
int ySpeed[] = new int[20];

void setup() {
  size(600, 600);

  //Background
  background(0);


  for (int antalSnowman=0; antalSnowman<20; antalSnowman++) {
    MoveX[antalSnowman] = (int)random(-600, 600);
    MoveY[antalSnowman] = (int)random(-600, 600);

  }

}



void draw() {

  for (int antalSnowman=0; antalSnowman<20; antalSnowman++) {
    
    MoveX[antalSnowman] = MoveX[antalSnowman] + (int)random(-20,21);
    MoveY[antalSnowman] = MoveY[antalSnowman] + (int)random(-20,21);
    snowman(MoveX[antalSnowman], MoveY[antalSnowman], antalSnowman/4.0);
  
fill(A[antalSnowman] = (int)random(0, 256),B[antalSnowman] = (int)random(0, 256),C[antalSnowman] = (int)random(0, 256));    


    //Jump
    yDelta=sin(x/5)*10;
  }
}



void snowman(int x, int y, float sizeFactor) {

  //Head (x,y,width,height)
  ellipse(x, y+50*sizeFactor+yDelta, 50*sizeFactor, 50*sizeFactor);

  //Eyes (x,y,width,height)
  ellipse(x+10*sizeFactor, y+50*sizeFactor+yDelta, 10*sizeFactor, 10*sizeFactor);
  ellipse(x-10*sizeFactor, y+50*sizeFactor+yDelta, 10*sizeFactor, 10*sizeFactor);

  //Belly (x,y,width,height)
  ellipse(x, y+100*sizeFactor+yDelta, 75*sizeFactor, 75*sizeFactor);

  //Nose (x,y,width,height)
  rectMode(CENTER);
  rect(x, y+62*sizeFactor+yDelta, 10*sizeFactor, 10*sizeFactor);
}
