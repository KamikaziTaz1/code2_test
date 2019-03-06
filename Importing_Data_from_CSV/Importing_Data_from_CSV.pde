Table table; //built in processing class for table

int numRows; //
int largestHigh, smallestHigh;
int largestLow, smallestLow;

void setup(){
  size(displayWidth, displayHeight);
  table = loadTable("nyWeather.csv", "header");//parameters are file name, specification of header, header gets excluded in row count
  
   numRows = table.getRowCount();
   
  int[] year = new int[numRows];
  int[] high = new int[numRows];
  int[] low = new int[numRows];
  int[] yearMap = new int[numRows];
  int[] highMap = new int[numRows];
  int[] lowMap = new int[numRows];
 
 for(int i = 0; i<numRows; i++){
   year[i] = table.getInt(i, 0);
   //returns int value from specified row & column, first parameter is row and second is column
   low[i] = table.getInt(i, 1);
   high[i] = table.getInt(i, 2);
 
 
 if(low[i] < smallestLow){
   smallestLow = low[i];
 }
 if(low[i] > largestLow){
   
  }
 }
}
