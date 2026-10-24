// Create class BankDemo and Account(accNum:int, accType:String, balance: double).
// Implement getter() and setter() method to assign and display data for 3 students.[A]
class Account {
    int accNum; String accType; double balance;
    void setter(int n,String t,double b){accNum=n;accType=t;balance=b;}
    void getter(){System.out.println(accNum+" "+accType+" "+balance);}
}
class BankDemo {
    public static void main(String[] args){
        Account a=new Account(),b=new Account(),c=new Account();
        a.setter(1,"Saving",5000);b.setter(2,"Current",7000);c.setter(3,"Saving",9000);
        a.getter();b.getter();c.getter();
    }
}
