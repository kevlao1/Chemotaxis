friend[] ohNoes = new friend[25];
int mouseXPos, mouseYPos;

void setup(){
 size(1000, 1000); 
 for(int num = 0; num < ohNoes.length; num++)
 ohNoes[num] = new friend();
}

void draw(){
  background(255);
  mouseXPos = mouseX;
  mouseYPos = mouseY;
  sadness();
 for(int num = 0; num < ohNoes.length; num++){
 ohNoes[num].show();
 ohNoes[num].RUN();
 }
}

void sadness(){
  fill(250, 210, 150);
  ellipse(mouseXPos, mouseYPos, 50, 50);
  strokeWeight(2);
  fill(0, 0, 0);
  line(mouseXPos-7, mouseYPos-15, mouseXPos-7, mouseYPos-3);
  line(mouseXPos+7, mouseYPos-15, mouseXPos+7, mouseYPos-3);
  strokeWeight(0);
  arc(mouseXPos, mouseYPos+15, 20, 25, PI, 2*PI);
}

class friend{
  
int myX, myY, myColor;  
friend(){
myX = (int)(Math.random())*1000;
myY = (int)(Math.random())*1000;
myColor = color(250, 210, 150);
if(myX < mouseXPos+100 && myX >= mouseXPos)
myX = myX + 100;
if(myX > mouseXPos-100 && myX <= mouseXPos)
myX = myX - 100;
if(myY < mouseYPos+100 && myY >= mouseYPos)
myY = myY + 100;
if(myY > mouseYPos-100 && myY <= mouseYPos)
myY = myY - 100;
}

void show(){
fill(myColor);
strokeWeight(2);
stroke(0);
ellipse(myX, myY, 50, 50);
fill(0, 0, 0);
line(myX-7, myY-15, myX-7, myY-3);
line(myX+7, myY-15, myX+7, myY-3);
ellipse(myX, myY+10, 20, 15);
}

void RUN(){
if (dist(mouseXPos, mouseYPos, myX, myY) <= 750){
  //RUN!!!
 if(myX >= mouseXPos && myX >= 50 && myX <= 950)
 myX = myX + ((int)(Math.random()*15)-1);
 if(myX <= mouseXPos && myX >= 50 && myX <= 950) 
 myX = myX - ((int)(Math.random()*15)-1);
  if(myY >= mouseYPos && myY >= 50 && myY <= 950)
 myY = myY + ((int)(Math.random()*15)-1);
 if(myY <= mouseYPos && myY >= 50 && myY <= 950) 
 myY = myY - ((int)(Math.random()*15)-1);
 //edge behavior
 if(myX < 50)
 myX = myX + ((int)(Math.random()*15)-5);
 if(myX > 950)
 myX = myX - ((int)(Math.random()*15)-5);
 if(myY < 50)
 myY = myY + ((int)(Math.random()*15)-5);
 if(myY > 950)
 myY = myY - ((int)(Math.random()*15)-5);
}
else{
   if(myX >= 50 && myX <= 950)
 myX = myX + ((int)(Math.random()*20)-10);
  if(myY >= 50 && myY <= 950)
 myY = myY + ((int)(Math.random()*20)-10);
 //edge behavior
 if(myX < 50)
 myX = myX + ((int)(Math.random()*15)-5);
 if(myX > 950)
 myX = myX - ((int)(Math.random()*15)-5);
 if(myY < 50)
 myY = myY + ((int)(Math.random()*15)-5);
 if(myY > 950)
 myY = myY - ((int)(Math.random()*15)-5);
}
}
}
