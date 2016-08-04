String playerExtra = "Stephen Curry", teamExtra = "Golden State Warriors";
int playerExtraNum = 201939, teamExtraNum=1610612744;
String teamImagePath = "teamLogos/"+teamExtraNum+".png";
PImage teamImg;
String playerImagePath = "playerProfiles/"+playerExtraNum+".png";
PImage playerImg;

//--------------------------------------------------------------------------------------------------------------------drawMisc

void drawMisc()
{
  fill(200);
  stroke(0);
  strokeWeight(3);
  rect(975-12.5, 450, 1180-(975-12.5), 275);
  textAlign(LEFT, BOTTOM);
  textSize(15);
  fill(0);
  text("Other", 975-12.5, 448);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Project Info", 975-12.5+(1180-(975-12.5))/2, 465);
  stroke(0);
  strokeWeight(2);
  line(975-12.5, 490, 1180, 490);
  
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Janak H. Jobanputra", 975-12.5+(1180-(975-12.5))/2, 520);
  text("99819389", 975-12.5+(1180-(975-12.5))/2, 570);
  text("ECS 163 Project 2", 975-12.5+(1180-(975-12.5))/2, 545);
  
  image(warriorsChamps, 975-12.5+((17.5+75)/2), 585, 125, 125*(817/750));
}

//--------------------------------------------------------------------------------------------------------------drawPlayerInfo

void drawCommentary()
{
  fill(200);
  stroke(0);
  strokeWeight(3);
  rect(525, 320, 1180-525, 30);
  rect(525, 355, 1180-525, 30);
  rect(525, 390, 1180-525, 30);
  textAlign(LEFT, BOTTOM);
  textSize(15);
  fill(0);
  text("Commentary", 525, 318);
  textAlign(LEFT, CENTER);
  textSize(15);
  fill(0);
  text("Home:      "+homeComments, 530, 320+15);
  text("Neutral:   "+neutralComments, 530, 355+15);
  text("Away:      "+visitorComments, 530, 390+15); 
}

//--------------------------------------------------------------------------------------------------------------drawPlayerInfo

void drawPlayerInfo()
{
  Table tablePlayer = loadTable("data/players.csv", "csv");
  Table tableTeamExtra = loadTable("teamExtraInfo.csv", "csv");
  fill(200);
  stroke(0);
  strokeWeight(3);
  rect(525, 450, 425, 275);
  textAlign(LEFT, BOTTOM);
  textSize(15);
  fill(0);
  text("Player Info", 525, 448);
  textAlign(CENTER, CENTER);
  textSize(30);
  text(playerExtra, 525+(425/2), 465);
  stroke(0);
  strokeWeight(2);
  line(525, 490, 1200-250, 490);
  playerImagePath = "playerProfiles/"+playerExtraNum+".png";
  playerImg = loadImage(playerImagePath);
  float playerImgW = map(playerImg.width, 0, playerImg.width, 0, 200);
  float playerImgH = map(playerImg.height, 0, playerImg.width, 0, 200);
  //print(playerImg.width, " ",  playerImg.height, "\n");
  //print(playerImg, " ",  playerImg, "\n");
  image(playerImg, 527, (310+750-335)-playerImgH-1, playerImgW, playerImgH);
  for(int iPlayerExtra=0; iPlayerExtra<221;iPlayerExtra++) // through players csv
  {
    if( playerExtraNum==tablePlayer.getInt(iPlayerExtra, 0) ) // found matching player
    {
      //boolean test = ((tableTeamExtra.getString(iTeamExtra,3)).charAt(0)=='w');
      //int playerID = tablePlayer.getInt(iPlayerExtra, 0);
      int playerJers = tablePlayer.getInt(iPlayerExtra, 3);
      int playersTeam = tablePlayer.getInt(iPlayerExtra, 5);
      String playerPos = "", playerPosTable=tablePlayer.getString(iPlayerExtra, 4);
      if(playerPosTable.length()==1)
      {
        if( playerPosTable.charAt(0)=='C')
          playerPos = "Center";
        else if( playerPosTable.charAt(0)=='F')
          playerPos = "Forward";
        else if( playerPosTable.charAt(0)=='G')
          playerPos = "Guard";
      }
      else if(playerPosTable.length()==3)
      {
        if( playerPosTable.charAt(0)=='C' && playerPosTable.charAt(1)=='-' && playerPosTable.charAt(2)=='F')
          playerPos = "Center-Forward";
        if( playerPosTable.charAt(0)=='F' && playerPosTable.charAt(1)=='-' && playerPosTable.charAt(2)=='C')
          playerPos = "Forward-Center";
        if( playerPosTable.charAt(0)=='F' && playerPosTable.charAt(1)=='-' && playerPosTable.charAt(2)=='G')
          playerPos = "Forward-Guard";
          if( playerPosTable.charAt(0)=='G' && playerPosTable.charAt(1)=='-' && playerPosTable.charAt(2)=='F')
          playerPos = "Guard-Forward";
      }
        
        
      for( int iTeamExtra=0; iTeamExtra<17; iTeamExtra++) // through team csv
      {
        if(tableTeamExtra.getInt(iTeamExtra, 0) == playersTeam) // found matching team
        {
          String teamName = tableTeamExtra.getString(iTeamExtra, 1);
          //print("Found Matching Team for Player: ."+playerID+". ."+playersTeam+". ."+teamName+"\n");
          textSize(20);
          textAlign(LEFT, CENTER);
          text(playerPos, 525+210, 750-25-30-45);
          textAlign(LEFT, CENTER);
          textSize(20);
          text(teamName,525+210, 750-25-30);
          textSize(20);
          text("#"+playerJers, 525+210, 750-25-30-45-45);
          
        } // end if player's team found
      } // end through team csv
    } // end if player match
  } // end through player csv
}

//--------------------------------------------------------------------------------------------------------------drawTeamInfo

void drawTeamInfo()
{
  Table tableTeamExtra = loadTable("teamExtraInfo.csv", "csv");
  //print(teamExtra, "\n");
  fill(200);
  stroke(0);
  strokeWeight(3);
  rect(87.5, 450, 425, 275);
  textAlign(LEFT, BOTTOM);
  textSize(15);
  fill(0);
  text("Team Info", 87.5, 448);
  textAlign(CENTER, CENTER);
  textSize(30);
  text(teamExtra, (87.5*2+450)/2, 465);
  stroke(0);
  strokeWeight(2);
  line(87.5, 490, 87.5+425, 490);
  teamImagePath = "teamLogos/"+teamExtraNum+".png";
  teamImg = loadImage(teamImagePath);
  float teamImgW = map(teamImg.width, 0, teamImg.width, 0, 175);
  float teamImgH = map(teamImg.height, 0, teamImg.width, 0, 175);
  //print(teamImg.width, " ",  teamImg.height, "\n");
  //print(teamImgW, " ",  teamImgH, "\n");
  image(teamImg, 90, 500, teamImgW, teamImgH);
  for( int iTeamExtra=0; iTeamExtra<17; iTeamExtra++)
  {
    if(tableTeamExtra.getInt(iTeamExtra, 0) == teamExtraNum)
    {
      //boolean test = ((tableTeamExtra.getString(iTeamExtra,3)).charAt(0)=='w');
      //print("Found Matching Team: "+teamExtraNum+" ."+tableTeamExtra.getString(iTeamExtra,3)+". "+test+"\n");
      textSize(20);
      textAlign(LEFT, CENTER);
      text("Abbreviation:", (90+185), 520);
      textAlign(RIGHT, CENTER);
      text(tableTeamExtra.getString(iTeamExtra,2), 87.5+425-10, 520);
      
      textSize(23);
      textAlign(CENTER, CENTER);
      if( (tableTeamExtra.getString(iTeamExtra,3)).charAt(0)=='w' )
        text("Western Conference", ((90+185)+(87.5+425))/2, 565);
      if( (tableTeamExtra.getString(iTeamExtra,3)).charAt(0)=='e' )
        text("Eastern Conference", ((90+185)+(87.5+425))/2, 565);
      
      textSize(20);
      textAlign(LEFT, CENTER);
      text(tableTeamExtra.getString(iTeamExtra,5)+" Wins", (90+185), 610);
      textAlign(RIGHT, CENTER);
      text(tableTeamExtra.getString(iTeamExtra,6)+" Losses", 87.5+425-10, 610);
    }
  }
}

//-----------------------------------------------------------------------------------------------------------homePlayerClick

void homePlayerClick(String t1, int team1, String p1, int pNum1, String p2, int pNum2, 
                      String p3, int pNum3, String p4, int pNum4, String p5, int pNum5, 
                      int player1, int player2, int player3, int player4, int player5)
{
  if( overButton(87.5, 300, 200, 30) )
  {
    fill(125);
    stroke(0);
    strokeWeight(1);
    rect(87.5, 300, 200, 30);
    textAlign(RIGHT, CENTER);
    textSize(15);
    fill(255);
    text(t1, 280, 315);
    if(mousePressed)
    {
      teamExtra = t1;
      teamExtraNum = team1;
    }
  }
  if( overButton(87.5, 340-6-4, 200, 16) )
  {
    fill(125);
    stroke(0);
    strokeWeight(1);
    rect(87.5, 330, 200, 20);
    textAlign(RIGHT, CENTER);
    textSize(12);
    fill(255);
    text(pNum1, 280, 340);
    text(p1, 260, 340);
    if(mousePressed)
    {
      playerExtra = p1;
      playerExtraNum = player1;
    }
  }
  if( overButton(87.5, 355-6, 200, 12) )
  {
    fill(125);
    stroke(0);
    strokeWeight(1);
    rect(87.5, 355-6, 200, 15);
    textAlign(RIGHT, CENTER);
    textSize(12);
    fill(255);
    text(pNum2, 280, 355);
    text(p2, 260, 355);
    if(mousePressed)
    {
      playerExtra = p2;
      playerExtraNum = player2;
    }
  }
  if( overButton(87.5, 370-6, 200, 12) )
  {
    fill(125);
    stroke(0);
    strokeWeight(1);
    rect(87.5, 370-6, 200, 15);
    textAlign(RIGHT, CENTER);
    textSize(12);
    fill(255);
    text(pNum3, 280, 370);
    text(p3, 260, 370);
    if(mousePressed)
    {
      playerExtra = p3;
      playerExtraNum = player3;
    }
  }
  if( overButton(87.5, 385-6, 200, 12) )
  {
    fill(125);
    stroke(0);
    strokeWeight(1);
    rect(87.5, 385-6, 200, 15);
    textAlign(RIGHT, CENTER);
    textSize(12);
    fill(255);
    text(pNum4, 280, 385);
    text(p4, 260, 385);
    if(mousePressed)
    {
      playerExtra = p4;
      playerExtraNum = player4;
    }
  }
  if( overButton(87.5, 400-6, 200, 12+6) )
  {
    fill(125);
    stroke(0);
    strokeWeight(1);
    rect(87.5, 400-6, 200, 15+5);
    textAlign(RIGHT, CENTER);
    textSize(12);
    fill(255);
    text(pNum5, 280, 400);
    text(p5, 260, 400);
    if(mousePressed)
    {
      playerExtra = p5;
      playerExtraNum = player5;
    }
  }
}

//--------------------------------------------------------------------------------------------------------visitorPlayerClick

void visitorPlayerClick(String t2, int team2, String p6, int pNum6, String p7, int pNum7, 
                        String p8, int pNum8, String p9, int pNum9, String p10, int pNum10, 
                        int player6, int player7, int player8, int player9, int player10)
{
  if( overButton(311.5, 300, 200, 30) )
  {
    fill(125);
    stroke(255);
    strokeWeight(1);
    rect(311.5, 300, 200, 30);
    textAlign(LEFT, CENTER);
    textSize(15);
    fill(255);
    text(t2, 310+1.5+7.5, 315);
    if(mousePressed)
    {
      teamExtra = t2;
      teamExtraNum = team2;
    }
  }
  if( overButton(311.5, 340-6-4, 200, 16) )
  {
    fill(125);
    stroke(255);
    strokeWeight(1);
    rect(311.5, 330, 200, 20);
    textAlign(LEFT, CENTER);
    textSize(12);
    fill(255);
    text(pNum6, 319, 340);
  text(p6, 319+20, 340);
    if(mousePressed)
    {
      playerExtra = p6;
      playerExtraNum = player6;
    }
  }
  if( overButton(311.5, 355-6, 200, 12) )
  {
    fill(125);
    stroke(255);
    strokeWeight(1);
    rect(311.5, 355-6, 200, 15);
    textAlign(LEFT, CENTER);
    textSize(12);
    fill(255);
    text(pNum7, 319, 355);
    text(p7, 319+20, 355);
    if(mousePressed)
    {
      playerExtra = p7;
      playerExtraNum = player7;
    }
  }
  if( overButton(311.5, 370-6, 200, 12) )
  {
    fill(125);
    stroke(255);
    strokeWeight(1);
    rect(311.5, 370-6, 200, 15);
    textAlign(LEFT, CENTER);
    textSize(12);
    fill(255);
    text(pNum8, 319, 370);
    text(p8, 319+20, 370);
    if(mousePressed)
    {
      playerExtra = p8;
      playerExtraNum = player8;
    }
  }
  if( overButton(311.5, 385-6, 200, 12) )
  {
    fill(125);
    stroke(255);
    strokeWeight(1);
    rect(311.5, 385-6, 200, 15);
    textAlign(LEFT, CENTER);
    textSize(12);
    fill(255);
    text(pNum9, 319, 385);
    text(p9, 319+20, 385);
    if(mousePressed)
    {
      playerExtra = p9;
      playerExtraNum = player9;
    }
  }
  if( overButton(311.5, 400-6, 200, 12+6) )
  {
    fill(125);
    stroke(255);
    strokeWeight(1);
    rect(311.5, 400-6, 200, 15+5);
    textAlign(LEFT, CENTER);
    textSize(12);
    fill(255);
    text(pNum10, 319, 400);
    text(p10, 319+20, 400);
    if(mousePressed)
    {
      playerExtra = p10;
      playerExtraNum = player10;
    }
  }
}

//--------------------------------------------------------------------------------------------------------------------------