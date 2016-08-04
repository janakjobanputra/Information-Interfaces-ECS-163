JSONObject jsonGameFile;
String score="0 - 0";
String homeComments="-", visitorComments="-", neutralComments="-";

//------------------------------------------------------------------------------------------------------------------getScore

void getScore()
{
  jsonGameFile = loadJSONObject("JSONs/"+IDgame+".json");
  JSONArray event = jsonGameFile.getJSONArray("resultSets").getJSONObject(0).getJSONArray("rowSet").getJSONArray(eventNum);
  if( event.getString(10, null) != null)
  {
    score = event.getString(10);
    //print(eventNum, " ", score+"\n");
  }
  int[] nums = int(split(score, " - "));
  //print(nums[0], "-|-", nums[1], "\n");
  visitorScore = nums[0];
  homeScore = nums[1];
}

//--------------------------------------------------------------------------------------------------------------------------

void getComments()
{
  jsonGameFile = loadJSONObject("JSONs/"+IDgame+".json");
  JSONArray event = jsonGameFile.getJSONArray("resultSets").getJSONObject(0).getJSONArray("rowSet").getJSONArray(eventNum);
  if( event.getString(7, null) != null)
  {
    homeComments = event.getString(7);
    //print(eventNum, "home: ", homeComments+"\n");
  }
  else
    homeComments = "-";
  if( event.getString(8, null) != null)
  {
    neutralComments = event.getString(8);
    //print(eventNum, "neutral: ", neutralComments+"\n");
  }
  else
    neutralComments = "-";
  if( event.getString(9, null) != null)
  {
    visitorComments = event.getString(9);
    //print(eventNum, "away: ", visitorComments+"\n");
  }
  else
    visitorComments = "-";
}

//--------------------------------------------------------------------------------------------------------------------------