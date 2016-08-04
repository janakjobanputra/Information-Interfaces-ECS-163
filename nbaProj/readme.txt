NAME	-	Janak Jobanputra
UCDID	-	998189389
EMAIL	-	jjobanputra@ucdavis.edu

README
-----------------------------------------------------
Hello! This is my information visualization project (project 2) for ECS 163 with Professor Kwan-Liu Ma during Winter Quarter of 2016. Hope you enjoy it! A textual breakdown of how to use the visualization is below.


IMPORTANT
-----------------------------------------------------
-PLEASE PUT THE DATA FOLDER INSIDE THE MAIN FOLDER. This is how all the data is referenced so the visualization will not work without this.
-The data is slow to load at times, so the animation will not play at actual speed, but slightly slower. With a couple more hours, I can clean this up, since it is most likely becasue of excessive data overhaul.
-There are sections in the event data where the ball fails to show up for hundreds of rows at a time. I have found a temporary fix to this, but during that time, it will appear as though the rosters are "scrolling". This is temporary, and just wait for the ball to show up, and it will fix itself. 


EXPLANATIONS OF VIEWS
-----------------------------------------------------
The view opened when the Processing application is run is the only view that is available to the user. The reason I chose to fit everything on one page instead of linking through the different pages is beacuse it is much easier for the user to understand their place in the program this way.

On the top right corner is the animation of the basketball players and the ball on the (to scale) court. The court colors do not change, but given more time that would have been the next thing to implement, so as to reflect which team is home and which is away. The home team players are in black squares, with their jersey numbers inscribed with white. The visitor team players are in white squares, with their jersey numbers inscribed with black. The ball is a small orange circle. The center of each of these objects represents their position on the court.

Above the animation is a simple scoreboard, with the home team on the left in black text, and the visiting team on the right in white text. Their scores are in the middle and are updated at the beginning of each event. (A note about the scores - they represent the score at the end of the currently playing event, so they will increment from event to event, and then show the event that cause that change.) At the top of center court is the information about the Quarter, overall clock and shot clock. 
The arrows flanking the scoreboard allow you to jump from event to event. The key on the right bottom corner of the animation shows the event number, for user reference.

On the right bottom corner of the court is the play/pause button and restart event button. These are pretty self explanatory, and activate when clicked on. The play/pause button alternates between the two modes depending on whether the next action should be to play or to pause. These buttons are rather finnicky so please be patient when using these buttons, and try to click as fast as you can to activate them only once.

Attached to the animation's bottom border is the scroll bar. This allows you to scroll through an event. Clicking and dragging also works, although it only works when your mouse is within the scroll bar itself.

Below the scroll bar are two boxes with the respective rosters of the two teams currently playing on the 'court'. The home team has a white background with black text. The visitor team has a black background with white text. Clicking on either team name will bring up additional information about the team below the roster boxes. The additional information about the teams includes the logo, the team name's abbreviation, which conference they are in, and how many wins and losses they had in the regular season. Clicking on a player's name will bring up additional information about the player in the middle bottom box. The additional information includes a picture of the player's profile, their jersey number, which team they are on, and what position they play.

Above the player information box are three boxes of commentary. This commentary is live per event, and explains what is happening in the event that is being animated. The commentary is divided under home team relevant commentary, away team relevant commentary, and neutral commentary (without a team). If there is no commentary for any one of the divisions, they will show a "-".

To the top right corner is a tournament bracket of the overall 2015 NBA playoffs. There is a key of how to use it directly under it, but I will repeat the instructions here. The matchups are shown in bracket format, with the eastern conference on the right, the western conference on the left, and culminate in the middle with the 2015 NBA finals. Each matchup has the team abbreviations, their seeding in their respective conference, and the number of games won in that matchup by that respective team. Through the middle of each matchup box are circles representing the games played in that matchup. The first game is always the left most circle and then increment until one team has won 4 out of the maximum 7. The colors of the cirlces represent which team has won that particular game. Hovering on a circle will change it to a black square, and then clicking will load that game from the first quarter, first event onto the animation.

Other than that, there is miscellaneous information about the project on the bottom right, and the key contains information to matchup with the bracket so that you know which matchup, game, and event you are in! Have fun, and GO WARRIORS!!!


BACKGROUND - (Copied from ECS 163 website)
-----------------------------------------------------
Similarly to the first project, we focus on learning a new visualization language by analyzing a dataset, this time focusing on animating motion data. The objective of this project is to use the visualization library Processing for presenting and analyzing NBA movement data. Starting in 2014, the NBA now tracks player and ball movements over the course of basketball games. This data can be discretized into "events," which is a subset of a basketball quarter where some significant play or action happens (such as a shot, steal, etc). Here's an example link to an event.

Processing is often used for rapid protoyping and in instances where heavy GPU programming is not required. It is much quicker to build visualizations using Processing than libraries like OpenGL, though this can come at a cost of computational efficiency. Additionally, lots of graphics and animation functionalities are provided as includable libraries. While these plugins may be used, you are encouraged to design and implement your own visualization and interaction. Document what is implemented by you, and what you are leveraging from libraries.

REFERENCES
-----------------------------------------------------
Tutorials on How Processing Works
	https://processing.org/reference/

How to extract extra Playoff Data
	http://tcbanalytics.com/blog/nba-movement-data-R.html#.VseZa5MrKRs
	http://savvastjortjoglou.com/nba-play-by-play-movements.html

Wikipedia page about the 2015 NBA Playoffs
	https://www.wikiwand.com/en/2015_NBA_Playoffs#/Playoff_qualifying

