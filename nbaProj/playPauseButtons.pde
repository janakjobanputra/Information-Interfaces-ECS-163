int buttonX=515, buttonY=280-25, buttonWidth=26, buttonHeight=25;
boolean playing = true;

//-----------------------------------------------------------------------------------------------------------------drawPause

void updatePlayPause()
{
  if(playing)
    drawPause(0, 255);
  else if(!playing)
    drawPlay(0,255);
  if( overButton(buttonX, buttonY-35, buttonWidth, buttonHeight) )
  {
    drawRestart(255,0);
    if(mousePressed)
      i=0;
  }
  else
    drawRestart(0,255);
  drawKey();
}

//-------------------------------------------------------------------------------------------------------------------drawKey

void drawKey()
{
  textAlign(LEFT, BOTTOM);
  textSize(15);
  fill(0);
  text("Key", 550, 216);
  strokeWeight(2);
  stroke(0);
  fill(200);
  rect(550, 218, 110, 64);
  strokeWeight(0);
  stroke(0);
  fill(0);
  textSize(10);
  textAlign(CENTER, TOP);
  if(IDgame.charAt(IDgame.length()-3)=='1')
    text("Conf. Quarter Finals", 550+55, 220+5);
  textSize(12);
  if(IDgame.charAt(IDgame.length()-3)=='2')
    text("Conf. Semi Finals", 550+55, 220+4);
  textSize(14);
  if(IDgame.charAt(IDgame.length()-3)=='3')
    text("Conf. Finals", 550+55, 220+3);
  textSize(16);
  if(IDgame.charAt(IDgame.length()-3)=='4')
    text("Finals", 550+55, 220+2);
  textSize(12);
  textAlign(LEFT, CENTER);
  text("Game #"+IDgame.charAt(IDgame.length()-1), 550+5, 218+30);
  textAlign(LEFT, BOTTOM);
  text("Event #"+eventNum, 550+5, 220+60-5);
}

//---------------------------------------------------------------------------------------------------------------drawRestart

void drawRestart(int bars, int background)
{
  strokeWeight(2);
  stroke(background);
  fill(background);
  rect(buttonX, buttonY-35, buttonWidth, buttonHeight);
  strokeWeight(0);
  stroke(background);
  fill(bars);
  ellipse(buttonX+13.5, buttonY-35+13, 20,20);
  stroke(bars);
  fill(background);
  ellipse(buttonX+13.5, buttonY-35+13, 10,10);
  stroke(background);
  fill(background);
  strokeWeight(0);
  triangle(buttonX+15.5+4, buttonY-35, buttonX+15.5-10+2, buttonY-35+3-3, buttonX+15.5, buttonY-35+3+10-2);
  stroke(bars);
  fill(bars);
  strokeWeight(2);
  triangle(buttonX+15.5, buttonY-35+5, buttonX+15.5-9, buttonY-35+3, buttonX+15.5-4, buttonY-35+3+10);
  
}  

//------------------------------------------------------------------------------------------------------------------drawPlay

void drawPlay(int bars, int background)
{
  strokeWeight(2);
  stroke(background);
  fill(background);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  strokeWeight(0);
  stroke(background);
  fill(bars);
  triangle(buttonX+5.5, buttonY+3, buttonX+5.5, buttonY+buttonHeight-3, buttonX+7+(2*buttonWidth/3),buttonY+(buttonHeight)/2);
}  

//-----------------------------------------------------------------------------------------------------------------drawPause

void drawPause(int bars, int background)
{
  strokeWeight(2);
  stroke(background);
  fill(background);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  strokeWeight(0);
  stroke(background);
  fill(bars);
  rect(buttonX+4.5, buttonY+3.5, buttonWidth/3, buttonHeight-6);
  strokeWeight(0);
  stroke(background);
  fill(bars);
  rect(buttonX+buttonWidth-11.5, buttonY+3.5, buttonWidth/3, buttonHeight-6);
}  

//-----------------------------------------------------------------------------------------------------------updatePlayPause

void updatePlayPause(int xmouse, int ymouse)
{
  if(overButton(buttonX, buttonY, buttonWidth, buttonHeight))
  {
    if(playing)
      drawPause(255, 0);
    else if(!playing)
      drawPlay(255, 0);
  }
  if(mousePressed&&overButton(buttonX, buttonY, buttonWidth, buttonHeight))
  {
    if(playing)
      playing=false;
    else if(!playing)
      playing=true;
  }
}

//----------------------------------------------------------------------------------------------------------------overButton

boolean overButton(float buttonX, float buttonY, float buttonWidth, float buttonHeight)
{
  if (mouseX >= buttonX  && mouseX <= buttonX+buttonWidth &&
      mouseY >= buttonY  && mouseY <= buttonY+buttonHeight)
    return true;
  else
    return false;
}

//-------------------------------------------------------------------------------------------------------------nextPrevEvent

void nextPrevEvent()
{
  strokeWeight(2.5);
  stroke(0);
  fill(125);
  rect(177/2, 112.5/2-25, 35, 20);
  textSize(15);
  textAlign(CENTER, CENTER);
  textAlign(CENTER);
  fill(255);
  text("<", 177/2+17.5, 112.5/2-10); // left arrow
  
  if( overButton(177/2+17.5, 112.5/2-25, 35, 20) )
  {
    strokeWeight(2.5);
    stroke(0);
    fill(255);
    rect(177/2, 112.5/2-25, 35, 20);
    textSize(15);
    textAlign(CENTER, CENTER);
    textAlign(CENTER);
    fill(125);
    text("<", 177/2+17.5, 112.5/2-10); // left arrow
    if(mousePressed)
    {
      eventNum=eventNum-2;
      i=0;
    }
  }
  
  strokeWeight(2.5);
  stroke(0);
  fill(125);
  rect((177/2+(94*9/2)-35), 112.5/2-25, 35, 20);
  textSize(15);
  textAlign(CENTER, CENTER);
  textAlign(CENTER);
  fill(255);
  text(">", (177/2+(94*9/2)-17.5), 112.5/2-10); // right arrow
  
  if( overButton((177/2+(94*9/2)-35), 112.5/2-25, 35, 20) )
  {
    strokeWeight(2.5);
    stroke(0);
    fill(255);
    rect((177/2+(94*9/2)-35), 112.5/2-25, 35, 20);
    textSize(15);
    textAlign(CENTER, CENTER);
    textAlign(CENTER);
    fill(125);
    text(">", (177/2+(94*9/2)-17.5), 112.5/2-10); // right arrow
    if(mousePressed)
    {
      eventNum++;
      i=0;
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------

//score - json files on stats.nba.com
//weird event 2
//dropdown menu
//how to get extra data