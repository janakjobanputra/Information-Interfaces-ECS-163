//--------------------------------------------------------------------------------------------------------------drawBracket
void drawBracket()
{
  int bracketX=1200-535, bracketY=5, bracketW=525, bracketH=325;
  fill(200);
  stroke(0);
  strokeWeight(3);
  rect(bracketX, bracketY, bracketW, bracketH-25);
  noFill();
  noStroke();
  image(bracketPic, bracketX, bracketY, bracketW, bracketH); //origin at 665,10
  
  
  round1W(bracketX, bracketY);
  round2W(bracketX, bracketY);
  round3W(bracketX, bracketY);
  round1E(bracketX, bracketY);
  round2E(bracketX, bracketY);
  round3E(bracketX, bracketY);
  finalEW(bracketX, bracketY);
  
  //1gsw = fill(255, 204, 51);
  //2hou = fill(196, 206, 211);
  //3lac = fill(0, 107, 182);
  //4por = fill(240, 22, 58);
  //5mem = fill(35, 55, 91);
  //6sas = fill(255, 255, 255);
  //7dal = fill(0, 0, 0);
  //8nop = fill(180, 151, 90);
  //1atl = fill(195, 214, 0);
  //2cle = fill(134, 0, 56);
  //3chi = fill(206, 17, 65);
  //4tor = fill((196, 206, 211);
  //5was = fill(194, 204, 204);
  //6mil = fill(0, 71, 27);
  //7bos = fill(0, 131, 72);
  //8bkn = fill(255, 255, 255);
  
}

//-------------------------------------------------------------------------------------------------------------------------

void round1W(int x, int y)
{
  int circleStartX=x+15, circleStartY=y+74, rad=5;
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX, circleStartY, rad, rad);// gsw nop 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400141";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+10, circleStartY, rad, rad);// gsw nop 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400142";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+20, circleStartY, rad, rad);// gsw nop 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400143";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+30, circleStartY, rad, rad);// gsw nop 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400144";
      eventNum=0;
      i=0;
    }
  }
  
  //--------
  
  circleStartY=y+74+60;
  strokeWeight(1);
  stroke(35, 55, 91);
  fill(35, 55, 91);
  ellipse(circleStartX, circleStartY, rad, rad);// por mem 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400171";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(35, 55, 91);
  fill(35, 55, 91);
  ellipse(circleStartX+10, circleStartY, rad, rad);// por mem 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400172";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(35, 55, 91);
  fill(35, 55, 91);
  ellipse(circleStartX+20, circleStartY, rad, rad);// por mem 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400173";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(240, 22, 58);
  fill(240, 22, 58);
  ellipse(circleStartX+30, circleStartY, rad, rad);// por mem 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400174";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(35, 55, 91);
  fill(35, 55, 91);
  ellipse(circleStartX+40, circleStartY, rad, rad);// por mem 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400175";
      eventNum=0;
      i=0;
    }
  }
  
  //--------
  
  circleStartY=y+74+60+58;
  strokeWeight(1);
  stroke(0, 107, 182);
  fill(0, 107, 182);
  ellipse(circleStartX, circleStartY, rad, rad);// lac sas 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400161";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0);
  fill(255, 255, 255);
  ellipse(circleStartX+10, circleStartY, rad, rad);// lac sas 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400162";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0);
  fill(255, 255, 255);
  ellipse(circleStartX+20, circleStartY, rad, rad);// lac sas 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400163";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0, 107, 182);
  fill(0, 107, 182);
  ellipse(circleStartX+30, circleStartY, rad, rad);// lac sas 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400164";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0);
  fill(255, 255, 255);
  ellipse(circleStartX+40, circleStartY, rad, rad);// lac sas 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400165";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0, 107, 182);
  fill(0, 107, 182);
  ellipse(circleStartX+50, circleStartY, rad, rad);// lac sas 6
  if( overButton(circleStartX+50-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+50-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400166";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0, 107, 182);
  fill(0, 107, 182);
  ellipse(circleStartX+60, circleStartY, rad, rad);// lac sas 7
  if( overButton(circleStartX+60-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+60-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400167";
      eventNum=0;
      i=0;
    }
  }
  
  //--------
  
  circleStartY=y+74+60+58+60;
  strokeWeight(1);
  stroke(196, 206, 211);
  fill(196, 206, 211);
  ellipse(circleStartX, circleStartY, rad, rad);// hou dal 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400151";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(196, 206, 211);
  fill(196, 206, 211);
  ellipse(circleStartX+10, circleStartY, rad, rad);// hou dal 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400152";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(196, 206, 211);
  fill(196, 206, 211);
  ellipse(circleStartX+20, circleStartY, rad, rad);// hou dal 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400153";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  ellipse(circleStartX+30, circleStartY, rad, rad);// hou dal 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400154";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(196, 206, 211);
  fill(196, 206, 211);
  ellipse(circleStartX+40, circleStartY, rad, rad);// hou dal 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400155";
      eventNum=0;
      i=0;
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void round1E(int x, int y)
{
  int circleStartX=x+450, circleStartY=y+74, rad=5;
  strokeWeight(1);
  stroke(195, 214, 0);
  fill(195, 214, 0);
  ellipse(circleStartX, circleStartY, rad, rad);// atl bkn 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400101";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(195, 214, 0);
  fill(195, 214, 0);
  ellipse(circleStartX+10, circleStartY, rad, rad);// atl bkn 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400102";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0);
  fill(255, 255, 255);
  ellipse(circleStartX+20, circleStartY, rad, rad);// atl bkn 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400103";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0);
  fill(255, 255, 255);
  ellipse(circleStartX+30, circleStartY, rad, rad);// atl bkn 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400104";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(195, 214, 0);
  fill(195, 214, 0);
  ellipse(circleStartX+40, circleStartY, rad, rad);// atl bkn 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400105";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(195, 214, 0);
  fill(195, 214, 0);
  ellipse(circleStartX+50, circleStartY, rad, rad);// atl bkn 6
  if( overButton(circleStartX+50-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+50-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400106";
      eventNum=0;
      i=0;
    }
  }
  
  //--------
  
  circleStartY=y+74+60;
  strokeWeight(1);
  stroke(194, 204, 204);
  fill(194, 204, 204);
  ellipse(circleStartX, circleStartY, rad, rad);// tor was 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400131";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(194, 204, 204);
  fill(194, 204, 204);
  ellipse(circleStartX+10, circleStartY, rad, rad);// tor was 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400132";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(194, 204, 204);
  fill(194, 204, 204);
  ellipse(circleStartX+20, circleStartY, rad, rad);// tor was 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400133";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(194, 204, 204);
  fill(194, 204, 204);
  ellipse(circleStartX+30, circleStartY, rad, rad);// tor was 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400134";
      eventNum=0;
      i=0;
    }
  }
  
  //--------
  
  circleStartY=y+74+60+58;
  strokeWeight(1);
  stroke(206, 17, 65);
  fill(206, 17, 65);
  ellipse(circleStartX, circleStartY, rad, rad);// chi mil 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400121";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(206, 17, 65);
  fill(206, 17, 65);
  ellipse(circleStartX+10, circleStartY, rad, rad);// chi mil 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400122";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(206, 17, 65);
  fill(206, 17, 65);
  ellipse(circleStartX+20, circleStartY, rad, rad);// chi mil 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400123";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0, 71, 27);
  fill(0, 71, 27);
  ellipse(circleStartX+30, circleStartY, rad, rad);// chi mil 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400124";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0, 71, 27);
  fill(0, 71, 27);
  ellipse(circleStartX+40, circleStartY, rad, rad);// chi mil 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400125";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(206, 17, 65);
  fill(206, 17, 65);
  ellipse(circleStartX+50, circleStartY, rad, rad);// chi mil 6
  if( overButton(circleStartX+50-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+50-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400126";
      eventNum=0;
      i=0;
    }
  }
  
  //--------
  
  circleStartY=y+74+60+58+60;
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX, circleStartY, rad, rad);// cle bos 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400111";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+10, circleStartY, rad, rad);// cle bos 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400112";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+20, circleStartY, rad, rad);// cle bos 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400113";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+30, circleStartY, rad, rad);// cle bos 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400114";
      eventNum=0;
      i=0;
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void round2W(int x, int y)
{
  int circleStartX=x+15+81, circleStartY=y+74+30, rad=5;
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX, circleStartY, rad, rad);// gsw mem 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400221";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(35, 55, 91);
  fill(35, 55, 91);
  ellipse(circleStartX+10, circleStartY, rad, rad);// gsw mem 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400222";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(35, 55, 91);
  fill(35, 55, 91);
  ellipse(circleStartX+20, circleStartY, rad, rad);// gsw mem 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400223";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+30, circleStartY, rad, rad);// gsw mem 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400224";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+40, circleStartY, rad, rad);// gsw mem 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400225";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+50, circleStartY, rad, rad);// gsw mem 6
  if( overButton(circleStartX+50-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+50-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400226";
      eventNum=0;
      i=0;
    }
  }
  
  //--------
  
  circleStartY=y+74+30+60+58;
  strokeWeight(1);
  stroke(0, 107, 182);
  fill(0, 107, 182);
  ellipse(circleStartX, circleStartY, rad, rad);// lac hou 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400231";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(196, 206, 211);
  fill(196, 206, 211);
  ellipse(circleStartX+10, circleStartY, rad, rad);// lac hou 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400232";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0, 107, 182);
  fill(0, 107, 182);
  ellipse(circleStartX+20, circleStartY, rad, rad);// lac hou 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400233";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(0, 107, 182);
  fill(0, 107, 182);
  ellipse(circleStartX+30, circleStartY, rad, rad);// lac hou 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400234";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(196, 206, 211);
  fill(196, 206, 211);
  ellipse(circleStartX+40, circleStartY, rad, rad);// lac hou 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400235";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(196, 206, 211);
  fill(196, 206, 211);
  ellipse(circleStartX+50, circleStartY, rad, rad);// lac hou 6
  if( overButton(circleStartX+50-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+50-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400236";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(196, 206, 211);
  fill(196, 206, 211);
  ellipse(circleStartX+60, circleStartY, rad, rad);// lac hou 7
  if( overButton(circleStartX+60-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+60-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400237";
      eventNum=0;
      i=0;
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void round2E(int x, int y)
{
  int circleStartX=x+15+353, circleStartY=y+74+30, rad=5;
  strokeWeight(1);
  stroke(194, 204, 204);
  fill(194, 204, 204);
  ellipse(circleStartX, circleStartY, rad, rad);// atl was 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400201";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(195, 214, 0);
  fill(195, 214, 0);
  ellipse(circleStartX+10, circleStartY, rad, rad);// atl was 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400202";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(194, 204, 204);
  fill(194, 204, 204);
  ellipse(circleStartX+20, circleStartY, rad, rad);// atl was 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400203";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(195, 214, 0);
  fill(195, 214, 0);
  ellipse(circleStartX+30, circleStartY, rad, rad);// atl was 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400204";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(195, 214, 0);
  fill(195, 214, 0);
  ellipse(circleStartX+40, circleStartY, rad, rad);// atl was 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400205";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(195, 214, 0);
  fill(195, 214, 0);
  ellipse(circleStartX+50, circleStartY, rad, rad);// atl was 6
  if( overButton(circleStartX+50-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+50-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400206";
      eventNum=0;
      i=0;
    }
  }
  
  //--------
  
  circleStartY=y+74+30+60+58;
  strokeWeight(1);
  stroke(206, 17, 65);
  fill(206, 17, 65);
  ellipse(circleStartX, circleStartY, rad, rad);// chi cle 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400211";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+10, circleStartY, rad, rad);// chi cle 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400212";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(206, 17, 65);
  fill(206, 17, 65);
  ellipse(circleStartX+20, circleStartY, rad, rad);// chi cle 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400213";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+30, circleStartY, rad, rad);// chi cle 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400214";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+40, circleStartY, rad, rad);// chi cle 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400215";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+50, circleStartY, rad, rad);// chi cle 6
  if( overButton(circleStartX+50-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+50-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400216";
      eventNum=0;
      i=0;
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void round3W(int x, int y)
{
  int circleStartX=x+15+80+50, circleStartY=y+74+60+29, rad=5;
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX, circleStartY, rad, rad);// gsw hou 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400311";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+10, circleStartY, rad, rad);// gsw hou 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400312";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+20, circleStartY, rad, rad);// gsw hou 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400313";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(196, 206, 211);
  fill(196, 206, 211);
  ellipse(circleStartX+30, circleStartY, rad, rad);// gsw hou 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400314";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+40, circleStartY, rad, rad);// gsw hou 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400315";
      eventNum=0;
      i=0;
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void round3E(int x, int y)
{
  int circleStartX=x+15+305, circleStartY=y+74+60+29, rad=5;
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX, circleStartY, rad, rad);// atl cle 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400301";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+10, circleStartY, rad, rad);// atl cle 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400302";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+20, circleStartY, rad, rad);// atl cle 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400303";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+30, circleStartY, rad, rad);// atl cle 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400304";
      eventNum=0;
      i=0;
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void finalEW(int x, int y)
{
  int circleStartX=x+272-35, circleStartY=y+238, rad=5;
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX, circleStartY, rad, rad);// gsw cle 1
  if( overButton(circleStartX+0-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+0-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400401";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+10, circleStartY, rad, rad);// gsw cle 2
  if( overButton(circleStartX+10-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+10-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400402";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(134, 0, 56);
  fill(134, 0, 56);
  ellipse(circleStartX+20, circleStartY, rad, rad);// gsw cle 3
  if( overButton(circleStartX+20-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+20-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400403";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+30, circleStartY, rad, rad);// gsw cle 4
  if( overButton(circleStartX+30-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+30-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400404";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+40, circleStartY, rad, rad);// gsw cle 5
  if( overButton(circleStartX+40-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+40-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400405";
      eventNum=0;
      i=0;
    }
  }
  strokeWeight(1);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  ellipse(circleStartX+50, circleStartY, rad, rad);// gsw cle 6
  if( overButton(circleStartX+50-2.5, circleStartY-2.5, rad*2, rad*2) )
  {
    stroke(0);
    fill(0);
    rect(circleStartX+50-2.5, circleStartY-2.5, rad, rad);
    if(mousePressed)
    {
      IDgame="0041400406";
      eventNum=0;
      i=0;
    }
  }
}

//-------------------------------------------------------------------------------------------------------------------------