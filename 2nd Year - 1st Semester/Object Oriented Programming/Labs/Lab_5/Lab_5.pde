/*  
    Plot the data for iOS and Android queries;
*/
void setup()
{
 size(500, 500);
 loadData(); 
 
}

int[] android;
int[] ios;
int[] androidBymonthCount;
int[] iosBymonthCount;
int androidDays;
int iosDays;

int[] daysInmonthCount = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

void loadData()
{
  String[] lines = loadStrings("tunepalqueries.csv");
  android = new int[lines.length];
  ios = new int[lines.length];
  
  androidBymonthCount = new int[12];
  iosBymonthCount = new int[12];
  
  int monthCount = 0;
  int dayCount = 0;
  for (int i = 0 ; i < lines.length ; ++ i)
  {
    String[] data = split(lines[i], ",");
    android[i] = Integer.parseInt(data[1]); 
    ios[i] = Integer.parseInt(data[2]);
    if (dayCount == daysInmonthCount[monthCount])
    {
      dayCount = 0;
      monthCount ++;
    }
    else
    {
      dayCount ++;
    }  
    androidBymonthCount[monthCount] += android[i];
    iosBymonthCount[monthCount] += ios[i];
  }  
}

void draw()
{
  stroke(0, 0, 255);
  
  float gap = (float) width / 24;

  int max = Integer.MIN_VALUE;
  for (int i = 0 ; i < 12 ; i ++)
  {
    if (iosBymonthCount[i] > max)
    {
      max = iosBymonthCount[i];
    }
  }
  
  float scaleFactor = (float) height / max;
  
  for (int i = 0 ; i < 12 ; i ++)
  {
    stroke(0,0,255);
    fill(0,0,255);    
    rect(i * (gap * 2.0f), height, gap, - (androidBymonthCount[i] * scaleFactor));
    stroke(255,0,0);
    fill(255,0,0);    
    rect(i * (gap * 2.0f) + gap , height, gap, - (iosBymonthCount[i] * scaleFactor));     
  }
  
  
  
  
  
  
}
