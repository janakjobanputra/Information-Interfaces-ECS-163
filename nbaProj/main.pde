//-------------------------------------------------------------------------------------------------------------doesFileExist

boolean doesFileExist(String testFile)
{
  File file = new File(dataPath(testFile));
  //print("full path: ", dataPath(testFile), "\n");
  if(file.exists())
    return true;
  return false;
} //NO gives false, YES gives true

//---------------------------------------------------------------------------------------------------------------------setup

HScrollbar hs1;  // Two scrollbars
int eventNum=0;
String IDgame="0041400141";
String filename = "games/" + IDgame + "/" + eventNum + ".csv";
//PFont garamondBold;
PImage bracketPic, bg, warriorsChamps;

void setup()
{
  jsonGameFile = loadJSONObject("JSONs/"+IDgame+".json");
  bracketPic=loadImage("pics/bracketEdited2.png", "png");
  bg=loadImage("pics/background2Fitted.jpg", "jpg");
  teamImg = loadImage(teamImagePath);
  playerImg = loadImage(playerImagePath);
  warriorsChamps = loadImage("pics/warriorsChamps.png");
  size(1200, 750);
  frameRate(60);
  noStroke();
  hs1 = new HScrollbar(175/2+1, 575/2+2.5, 852/2-2, 20/2, 1);
  //garamondBold = createFont("GaramondBold.ttf",32);
}

//----------------------------------------------------------------------------------------------------------------------draw

int i=0, skipNum=11;
int homeScore=0, visitorScore=0;
boolean buttonOver = false;

void draw()
{
  filename = "games/" + IDgame + "/" + eventNum + ".csv";
  boolean fileExist = doesFileExist(filename);
  //print(filename, "\t", fileExist, "\n");
  //textFont(garamondBold);
  
  if(fileExist)
  {
    //print("path: data/" + filename, "\n");
    Table table = loadTable("data/" + filename);
    int clickedScroll=0;
    
    if(i+11 < table.getRowCount() )
    {
      background(bg);
      drawCourt();
      drawBracket();
      nextPrevEvent();
      
      clickedScroll = hs1.update_scrollbar(i, table.getRowCount());
      if(clickedScroll==1)
      {
        hs1.newspos = hs1.getPos_scrollbar();
        if(hs1.newspos>1030/2)
        {
          hs1.newspos = 1020/2;
        }
        else if(hs1.newspos<175/2)
        {
          hs1.newspos = 185/2;
        }
        else
        {
          //175->1030
          i=(( (int)((hs1.newspos-(175/2))/(1030/2-175/2)*table.getRowCount()) )/11)*11;
          //print("Mouse Pressed Draw", hs1.getPos_scrollbar(), "\n");
        }
      }
      hs1.display_scrollbar();
      
      int gameiD1 = table.getInt(i,0);      // position of the ball
      int teamiD1 = table.getInt(i,1);
      int playeriD1 = table.getInt(i,2);
      int xpos1 = table.getInt(i,3)*9+177;
      int ypos1 = table.getInt(i,4)*9+112;
      int hght1 = table.getInt(i,5);
      //int mom1 = table.getInt(i,6);
      int gameCLK1 = table.getInt(i,7);
      int shotCLK1 = table.getInt(i,8);
      int period1 = table.getInt(i,9);
      int gameiD2 = table.getInt(i+1,0);    // position of the player1
      int teamiD2 = table.getInt(i+1,1);
      int playeriD2 = table.getInt(i+1,2);
      int xpos2 = table.getInt(i+1,3)*9+177;
      int ypos2 = table.getInt(i+1,4)*9+112;
      //int hght2 = table.getInt(i+1,5);
      //int mom2 = table.getInt(i+1,6);
      int gameCLK2 = table.getInt(i+1,7);
      int shotCLK2 = table.getInt(i+1,8);
      int period2 = table.getInt(i+1,9);
      int gameiD3 = table.getInt(i+2,0);
      int teamiD3 = table.getInt(i+2,1);
      int playeriD3 = table.getInt(i+2,2);
      int xpos3 = table.getInt(i+2,3)*9+177;
      int ypos3 = table.getInt(i+2,4)*9+112;
      //int hght3 = table.getInt(i+2,5);
      //int mom3 = table.getInt(i+2,6);
      int gameCLK3 = table.getInt(i+2,7);
      int shotCLK3 = table.getInt(i+2,8);
      int period3 = table.getInt(i+2,9);
      int gameiD4 = table.getInt(i+3,0);
      int teamiD4 = table.getInt(i+3,1);
      int playeriD4 = table.getInt(i+3,2);
      int xpos4 = table.getInt(i+3,3)*9+177;
      int ypos4 = table.getInt(i+3,4)*9+112;
      //int mom4 = table.getInt(i+3,6);
      int gameCLK4 = table.getInt(i+3,7);
      int shotCLK4 = table.getInt(i+3,8);
      int period4 = table.getInt(i+3,9);
      int gameiD5 = table.getInt(i+4,0);
      int teamiD5 = table.getInt(i+4,1);
      int playeriD5 = table.getInt(i+4,2);
      int xpos5 = table.getInt(i+4,3)*9+177;
      int ypos5 = table.getInt(i+4,4)*9+112;
      //int hght5 = table.getInt(i+4,5);
      //int mom5 = table.getInt(i+4,6);
      int gameCLK5 = table.getInt(i+4,7);
      int shotCLK5 = table.getInt(i+4,8);
      int period5 = table.getInt(i+4,9);
      int gameiD6 = table.getInt(i+5,0);
      int teamiD6 = table.getInt(i+5,1);
      int playeriD6 = table.getInt(i+5,2);
      int xpos6 = table.getInt(i+5,3)*9+177;
      int ypos6 = table.getInt(i+5,4)*9+112;
      //int hght6 = table.getInt(i+5,5);
      //int mom6 = table.getInt(i+5,6);
      int gameCLK6 = table.getInt(i+5,7);
      int shotCLK6 = table.getInt(i+5,8);
      int period6 = table.getInt(i+5,9);
      int gameiD7 = table.getInt(i+6,0);
      int teamiD7 = table.getInt(i+6,1);
      int playeriD7 = table.getInt(i+6,2);
      int xpos7 = table.getInt(i+6,3)*9+177;
      int ypos7 = table.getInt(i+6,4)*9+112;
      //int hght7 = table.getInt(i+6,5);
      //int mom7 = table.getInt(i+6,6);
      int gameCLK7 = table.getInt(i+6,7);
      int shotCLK7 = table.getInt(i+6,8);
      int period7 = table.getInt(i+6,9);
      int gameiD8 = table.getInt(i+7,0);
      int teamiD8 = table.getInt(i+7,1);
      int playeriD8 = table.getInt(i+7,2);
      int xpos8 = table.getInt(i+7,3)*9+177;
      int ypos8 = table.getInt(i+7,4)*9+112;
      //int hght8 = table.getInt(i+7,5);
      //int mom8 = table.getInt(i+7,6);
      int gameCLK8 = table.getInt(i+7,7);
      int shotCLK8 = table.getInt(i+7,8);
      int period8 = table.getInt(i+7,9);
      int gameiD9 = table.getInt(i+8,0);
      int teamiD9 = table.getInt(i+8,1);
      int playeriD9 = table.getInt(i+8,2);
      int xpos9 = table.getInt(i+8,3)*9+177;
      int ypos9 = table.getInt(i+8,4)*9+112;
      //int hght9 = table.getInt(i+8,5);
      //int mom9 = table.getInt(i+8,6);
      int gameCLK9 = table.getInt(i+8,7);
      int shotCLK9 = table.getInt(i+8,8);
      int period9 = table.getInt(i+8,9);
      int gameiD10 = table.getInt(i+9,0);
      int teamiD10 = table.getInt(i+9,1);
      int playeriD10 = table.getInt(i+9,2);
      int xpos10 = table.getInt(i+9,3)*9+177;
      int ypos10 = table.getInt(i+9,4)*9+112;
      //int hght10 = table.getInt(i+9,5);
      //int mom10 = table.getInt(i+9,6);
      int gameCLK10 = table.getInt(i+9,7);
      int shotCLK10 = table.getInt(i+9,8);
      int period10 = table.getInt(i+9,9);
      int gameiD11 = table.getInt(i+10,0);
      int teamiD11 = table.getInt(i+10,1);
      int playeriD11 = table.getInt(i+10,2);
      int xpos11 = table.getInt(i+10,3)*9+177;
      int ypos11 = table.getInt(i+10,4)*9+112;
      //int hght11 = table.getInt(i+10,5);
      //int mom11 = table.getInt(i+10,6);
      int gameCLK11 = table.getInt(i+10,7);
      int shotCLK11 = table.getInt(i+10,8);
      int period11 = table.getInt(i+10,9);
      
      scoreBoard(gameiD1, shotCLK1, gameCLK1, period1);
      updateCourt(gameiD1, teamiD1, playeriD1, xpos1, ypos1, hght1);
      scoreBoard(gameiD2, shotCLK2, gameCLK2, period2);
      updateCourt(gameiD2, teamiD2, playeriD2, xpos2, ypos2, hght1);
      scoreBoard(gameiD3, shotCLK3, gameCLK3, period3);
      updateCourt(gameiD3, teamiD3, playeriD3, xpos3, ypos3, hght1);
      scoreBoard(gameiD4, shotCLK4, gameCLK4, period4);
      updateCourt(gameiD4, teamiD4, playeriD4, xpos4, ypos4, hght1);
      scoreBoard(gameiD5, shotCLK5, gameCLK5, period5);
      updateCourt(gameiD5, teamiD5, playeriD5, xpos5, ypos5, hght1);
      scoreBoard(gameiD6, shotCLK6, gameCLK6, period6);
      updateCourt(gameiD6, teamiD6, playeriD6, xpos6, ypos6, hght1);
      scoreBoard(gameiD7, shotCLK7, gameCLK7, period7);
      updateCourt(gameiD7, teamiD7, playeriD7, xpos7, ypos7, hght1);
      scoreBoard(gameiD8, shotCLK8, gameCLK8, period8);
      updateCourt(gameiD8, teamiD8, playeriD8, xpos8, ypos8, hght1);
      scoreBoard(gameiD9, shotCLK9, gameCLK9, period9);
      updateCourt(gameiD9, teamiD9, playeriD9, xpos9, ypos9, hght1);
      scoreBoard(gameiD10, shotCLK10, gameCLK10, period10);
      updateCourt(gameiD10, teamiD10, playeriD10, xpos10, ypos10, hght1);
      scoreBoard(gameiD11, shotCLK11, gameCLK11, period11);
      updateCourt(gameiD11, teamiD11, playeriD11, xpos11, ypos11, hght1);
      
      showRoster(teamiD2, playeriD2, playeriD3, playeriD4, playeriD5, playeriD6, 
                  teamiD7, playeriD7, playeriD8, playeriD9, playeriD10, playeriD11);
                  
      updatePlayPause(mouseX, mouseY);
      
      if(playing)
      {
        if(playeriD1==-1)
          skipNum=11;
        else if(playeriD1!=-1)
          skipNum=10;
        i=i+skipNum;
      }
      else if(!playing)
        i=i;
    }//---------------- end if file and table valid
    
    else if(i+11 >= table.getRowCount())
    {
      background(bg);
      drawCourt();
      drawBracket();
      nextPrevEvent();
      print("end of file before", i, " ", eventNum, "\n");
      i=0;
      eventNum++;
      print("end of file after", i, " ", eventNum, "\n");
    } //---------------- end if file valid but table NOT valid
  }//---------------- end if file valid
  if(!fileExist)
  {
    background(bg);
    drawCourt();
    drawBracket();
    nextPrevEvent();
    print("file NOT VALID before", i, " ", eventNum, "\n");
    i=0;
    if(eventNum<=700)
      eventNum++;
    print("file NOT VALID after", i, " ", eventNum, "\n");
  }//---------------- end if file NOT valid
} 

//---------------------------------------------------------------------------------------------------------------updateCourt

void updateCourt(int gameID, int team, int player, int xpos, int ypos,
  int ballHeight)
{
  Table tablePlayer = loadTable("data/players.csv", "csv");
  Table tableGame = loadTable("data/games.csv", "csv");
  String lastName = "";
  String playerNum = "";
  for (int iCourt = 0; iCourt < 221; iCourt++)
  {
    if (player == -1) // if ball
    {
      //print("i:", i, " height:", ballHeight, "\n");
      fill(222, 160, 11);
      stroke(0);
      strokeWeight(1);
      ellipse(xpos/2, ypos/2, 15/2, 15/2);
      break;
    }
    else if(tablePlayer.getInt(iCourt, 0) == player) // if player
    {
      lastName = tablePlayer.getString(iCourt, 2);
      playerNum = tablePlayer.getString(iCourt, 3);
      for (int j = 0; j < 82; j++)
      {
        if (tableGame.getInt(j, 0) == gameID)
        {
            if (tableGame.getInt(j,2) == team)
            {
              textAlign(CENTER, CENTER);
              strokeWeight(1);
              stroke(255);
              fill(0);
              rect(xpos/2, ypos/2, 15, 15);
              fill(0);
              textSize(10);
              //text(lastName, xpos, ypos-10);
              fill(255);
              text(playerNum, xpos/2+15/2, ypos/2+15/2);
              break;
            }
            else if (tableGame.getInt(j,3) == team)
            {
              textAlign(CENTER, CENTER);
              strokeWeight(1);
              stroke(0);
              fill(255);
              rect(xpos/2, ypos/2, 15, 15);
              fill(0);
              textSize(10);
              //text(lastName, xpos, ypos-10);
              fill(0);
              text(playerNum, xpos/2+15/2, ypos/2+15/2);
              break;
            }
         }
      }       
    }
  }
}

//----------------------------------------------------------------------------------------------------------------scoreBoard

void scoreBoard(int gameiD, int shotCLK, int gameCLK, int qtr)
{
  fill(125);
  stroke(0);
  strokeWeight(5/2);
  rect(300/2, 60/2, 600/2, 40/2); // score rect
  stroke(0);
  strokeWeight(5/2);
  line(600/2, 60/2, 600/2, 100/2); //mid line score
  stroke(0);
  strokeWeight(5/2);
  line(550/2, 60/2, 550/2, 100/2); //score line left
  stroke(0);
  strokeWeight(5/2);
  line(650/2, 60/2, 650/2, 100/2); //score line right
  noFill();
  stroke(0);
  strokeWeight(5/2);
  rect(550/2, 112.5/2, 100/2, 40/2); // time rect
  
  int mins=gameCLK/60;
  int secs=gameCLK%60;
  String time = "";
  if(secs<10)
    time = mins+":0"+secs;
  if(secs>=10)
    time = mins+":"+secs;
  textSize(25/2);
  textAlign(CENTER, BOTTOM);
  textAlign(CENTER);
  fill(0);
  text(time, 600/2, 140/2);
  text(shotCLK, 675/2, 140/2);
  text("Q"+qtr, 525/2, 140/2);
  
  Table tableGame = loadTable("data/games.csv", "csv");
  int homeTeam = 0;
  int visitorTeam = 0;
  for (int iScoreBoard = 0; iScoreBoard < 82; iScoreBoard++)
  {
    if (tableGame.getInt(iScoreBoard, 0) == gameiD)
    {
      homeTeam = tableGame.getInt(iScoreBoard, 2);
      visitorTeam = tableGame.getInt(iScoreBoard, 3);
      break;
    }
  }
  String home ="", visitor = "";
  home = getTeamName(homeTeam);
  visitor = getTeamName(visitorTeam);
  
  textSize(20/2);
  textAlign(CENTER, BOTTOM);
  textAlign(CENTER);
  fill(0);
  text(home, 425/2, 90/2);
  text(homeScore, 575/2, 90/2);
  fill(255);
  text(visitor, 775/2, 90/2);
  text(visitorScore, 625/2, 90/2);
  getScore();
  getComments();
}

//---------------------------------------------------------------------------------------------------------------getTeamName

String getTeamName(int team)
{
  Table tableTeam = loadTable("data/team.csv", "csv");
  String teamName = "";
  for (int iTeam = 0; iTeam < 17; iTeam++)
  {
    if (tableTeam.getInt(iTeam, 0) == team)
    {
      teamName = tableTeam.getString(iTeam, 1);
      break;
    }
  }
  //print("Num: ", team, "-->Team: ", teamName, "\n");
  return teamName;
}

//-------------------------------------------------------------------------------------------------------------getPlayerName

String getPlayerName(int player)
{
  Table tablePlayer = loadTable("data/players.csv", "csv");
  
  String playerName = "";
  for (int iPlayer = 0; iPlayer < 220; iPlayer++)
  {
    if (tablePlayer.getInt(iPlayer, 0) == player)
    {
      playerName = tablePlayer.getString(iPlayer, 1) + " " + tablePlayer.getString(iPlayer, 2);
      break;
    }
  }
  return playerName;
}

//--------------------------------------------------------------------------------------------------------------getPlayerNum

int getPlayerNum(int player)
{
  Table tablePlayer = loadTable("data/players.csv", "csv");
  
  int playerNum = -1;
  for (int iPlayer = 0; iPlayer < 220; iPlayer++)
  {
    if (tablePlayer.getInt(iPlayer, 0) == player)
    {
      playerNum = tablePlayer.getInt(iPlayer, 3);
      break;
    }
  }
  return playerNum;
}

//----------------------------------------------------------------------------------------------------------------showRoster

void showRoster(int team1, int player1, int player2, int player3, int player4, int player5, 
                int team2, int player6, int player7, int player8, int player9, int player10)
{
  String t1, t2, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10;
  t1=t2=p1=p2=p3=p4=p5=p6=p7=p8=p9=p10="";
  int pNum1, pNum2, pNum3, pNum4, pNum5, pNum6, pNum7, pNum8, pNum9, pNum10;
  pNum1=pNum2=pNum3=pNum4=pNum5=pNum6=pNum7=pNum8=pNum9=pNum10=-1;
  
  t1 = getTeamName(team1); //leftside team
  p1 = getPlayerName(player1);
  p2 = getPlayerName(player2);
  p3 = getPlayerName(player3);
  p4 = getPlayerName(player4);
  p5 = getPlayerName(player5);
  pNum1 = getPlayerNum(player1);
  pNum2 = getPlayerNum(player2);
  pNum3 = getPlayerNum(player3);
  pNum4 = getPlayerNum(player4);
  pNum5 = getPlayerNum(player5);
  fill(255);
  stroke(0);
  strokeWeight(2);
  rect(87.5, 300, 200, 120);
  textAlign(RIGHT, CENTER);
  textSize(15);
  fill(0);
  text(t1, 280, 315);
  stroke(0);
  strokeWeight(2);
  line(87.5, 330, 287.5, 330);
  textSize(12);
  textAlign(RIGHT, CENTER);
  text(pNum1, 280, 340);
  text(p1, 260, 340);
  text(pNum2, 280, 355);
  text(p2, 260, 355);
  text(pNum3, 280, 370);
  text(p3, 260, 370);
  text(pNum4, 280, 385);
  text(p4, 260, 385);
  text(pNum5, 280, 400);
  text(p5, 260, 400);
  homePlayerClick(t1, team1, p1, pNum1, p2, pNum2, p3, pNum3, p4, pNum4, p5, pNum5, player1, player2, player3, player4, player5);
  
  t2 = getTeamName(team2); // rightsideteam
  p6 = getPlayerName(player6);
  p7 = getPlayerName(player7);
  p8 = getPlayerName(player8);
  p9 = getPlayerName(player9);
  p10 = getPlayerName(player10);
  pNum6 = getPlayerNum(player6);
  pNum7 = getPlayerNum(player7);
  pNum8 = getPlayerNum(player8);
  pNum9 = getPlayerNum(player9);
  pNum10 = getPlayerNum(player10);
  fill(0);
  stroke(255);
  strokeWeight(2);
  rect(310+1.5, 300, 200, 120);
  textAlign(LEFT, CENTER);
  textSize(15);
  fill(255);
  text(t2, 310+1.5+7.5, 315);
  stroke(255);
  strokeWeight(2);
  line(310+1.5, 330, 510+1.5, 330);
  textSize(12);
  textAlign(LEFT, CENTER);
  text(pNum6, 319, 340);
  text(p6, 319+20, 340);
  text(pNum7, 319, 355);
  text(p7, 319+20, 355);
  text(pNum8, 319, 370);
  text(p8, 319+20, 370);
  text(pNum9, 319, 385);
  text(p9, 319+20, 385);
  text(pNum10, 319, 400);
  text(p10, 319+20, 400);
  visitorPlayerClick(t2, team2, p6, pNum6, p7, pNum7, p8, pNum8, p9, pNum9, p10, pNum10, player6, player7, player8, player9, player10);
  
  drawTeamInfo();
  drawPlayerInfo();
  drawCommentary();
  drawMisc();
}

//-----------------------------------------------------------------------------------------------------------------drawCourt

void drawCourt()
{
  updatePlayPause();
  
  strokeWeight(0);
  stroke(0,107,182);
  fill(0,107,182);
  rect(0, 0, 70, 750);
  strokeWeight(0);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  rect(70 ,0 ,5 ,750);
  
  strokeWeight(2);
  stroke(255, 204, 51);
  fill(255, 204, 51);
  textSize(60);
  textAlign(CENTER, TOP);
  rotate(-PI/2);
  text("2015 NBA Playoffs", -375, -2.5);
  rotate(PI/2);
  
  stroke(0);
  fill(185, 156, 122);
  strokeWeight(6/2);
  rect( 177/2, 112.5/2, 94*9/2, 50*9/2); // court
  
  //CENTER STUFF
  stroke(255, 205, 44);
  strokeWeight(5/2);
  line(600/2, 152.5/2, 600/2, 562.5/2); //half court line
  stroke(255, 216, 53);
  fill(12, 90, 190);
  strokeWeight(5/2);
  ellipse(600/2, 337.5/2, 54*2/2, 54*2/2); // center big circle
  stroke(255, 216, 53);
  fill(12, 90, 190);
  strokeWeight(5/2);
  ellipse(600/2, 337.5/2, 18*2/2, 18*2/2); // center small circle
  
  //3PT LiNE
  stroke(12, 90, 190);
  fill(234, 204, 168);
  strokeWeight(4/2);
  rect(177/2, 139.5/2, 14*9/2, 44*9/2); // left top&bottom 3pt horiz line
  stroke(12, 90, 190);
  fill(234, 204, 168);
  strokeWeight(4/2);
  arc(224.25/2, 337.5/2, 213*2/2, 213*2/2, 5.09093, 7.47544); // right 3pt arc
  stroke(12, 90, 190);
  fill(234, 204, 168);
  strokeWeight(4/2);
  rect(896/2, 139.5/2, 14*9/2, 44*9/2); // right top&bottom 3pt horiz line
  stroke(12, 90, 190);
  fill(234, 204, 168);
  strokeWeight(4/2);
  arc(975.75/2, 337.5/2, 213*2/2, 213*2/2, 1.94934, 4.33385); // right 3pt arc
  
  //THE KEYS
  stroke(255);
  fill(234, 204, 168);
  strokeWeight(4/2);
  arc((177+19*9)/2, 337.5/2, 54*2/2, 54*2/2, 0, 3.1415926535*2); // left semicircle on top of key
  stroke(255);
  fill(12, 90, 190);
  strokeWeight(4/2);
  rect( 177/2, (337.5-8*9)/2, 19*9/2, 16*9/2); // left layup lanes
  stroke(255);
  fill(12, 90, 190);
  strokeWeight(4/2);
  rect( 177/2, 283.5/2, 19*9/2, 12*9/2); // left key
  stroke(255);
  fill(234, 204, 168);
  strokeWeight(4/2);
  arc((1023-19*9)/2, 337.5/2, 54*2/2, 54*2/2, 0, 3.1415926535*2); // right semicircle on top of key
  stroke(255);
  fill(12, 90, 190);
  strokeWeight(4/2);
  rect( (1023-19*9)/2, (337.5-8*9)/2, 19*9/2, 16*9/2); // left layup lanes
  stroke(255);
  fill(12, 90, 190);
  strokeWeight(4/2);
  rect( (1023-(19*9))/2, 283.5/2, 19*9/2, 12*9/2); // right key
  
  //BASKETS
  stroke(255, 205, 44);
  strokeWeight(5/2);
  line(213/2, 310.5/2, 213/2, 364.5/2); //left backboard
  stroke(255, 205, 44);
  fill(12, 90, 190);
  strokeWeight(5/2);
  ellipse(224.25/2, 337.5/2, 13.5/2, 13.5/2); // left basket
  stroke(255, 205, 44);
  strokeWeight(5/2);
  line(987/2, 310.5/2, 987/2, 364.5/2); //right backboard
  stroke(255, 205, 44);
  fill(12, 90, 190);
  strokeWeight(5/2);
  ellipse(975.75/2, 337.5/2, 13.5/2, 13.5/2); // right basket
  
  //REDRAW COURT BORDER
  stroke(0);
  noFill();
  strokeWeight(6/2);
  rect( 177/2, 112.5/2, 94*9/2, 50*9/2); // court
  
}

//--------------------------------------------------------------------------------------------------------------------------