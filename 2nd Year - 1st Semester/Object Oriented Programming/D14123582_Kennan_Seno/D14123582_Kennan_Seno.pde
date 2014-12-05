ArrayList<Expense> expenses = new ArrayList<Expense>();
ArrayList<PartyExpense> partyExpeneses = new ArrayList<PartyExpense>();

void setup(){

}

String[] lines;

void loadExpenses(){
  lines = loadStrings("expenses.txt");
  
  for(int i = 0; i < lines.length; i++){   
    String[] data = split(lines[i], TAB);    
    //println(data[0], data[1],data[2]);
    expenses.add(new Expense(data[0],data[1],data[2],parseFloat(data[3]),parseFloat(data[3]),(parseFloat(data[4])-parseFloat(data[3]))));
    
  }
  
}

void draw(){
  loadExpenses();
  for(int i = 0; i < expenses.size(); i++){ 
    expenses.get(i).display();
  }
}
