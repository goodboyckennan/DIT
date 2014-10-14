/*
    Created: October 14,2014
    
    Plot the data for iOS and Android queries;
*/

int[] daysInMonth = {31,28,31,30,31,30,31,31,30,31,30,31};
int[] androidByMonth = new int[12];
int[] iosByMonth = new int[12];
int[] android;
int[] ios;
String[] lines;


void setup()
{
  size(500, 500);
  loadData();
  
  for(int i = 0; i < androidByMonth.length; i++ ){
    println(androidByMonth[i]);
  }
}

void loadData()
{
  lines = loadStrings("tunepalqueries.csv");
  android = new int[lines.length];
  ios = new int[lines.length];  
 
  int dayCount = 0;
  int monthCount = 0;
  
  for(int i = 0; i < lines.length; i++){
    String[] data = split(lines[i],",");
    
    
    if(dayCount < daysInMonth[monthCount]){
      androidByMonth[monthCount] = androidByMonth[monthCount] + Integer.parseInt(data[1]); 
      iosByMonth[monthCount] = iosByMonth[monthCount] + Integer.parseInt(data[2]);
    }else{
      monthCount++;
      dayCount = 0;
    }
    dayCount++;
  }
  
}

void draw()
{
  background(0);
  
  
  
  
  
  
}
