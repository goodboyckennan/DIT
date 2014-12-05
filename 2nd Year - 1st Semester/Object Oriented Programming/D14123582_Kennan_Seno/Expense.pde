class Expense{
      String name;
      String party;
      String constituency;
      float amountReturned;
      float amountClaimed;
      float total;
      color colour;
      
     // Expense(){
       // this("Kennan Seno","FG","Dublin 15", 999.99f, 1500.00f, 1500.00f-999.99f,color(120));
     // }
      Expense(String n, String p, String ca, float r, float c,float t){
        this.name = n;
        this.party = p;
        this.constituency = ca;
        this.amountReturned = r;
        this.amountClaimed = c;
        this.total = t;
       // this.colour = co; 
      }
      
      void display(){
        println(name,party,constituency,amountReturned,amountClaimed,total);
      }
}
