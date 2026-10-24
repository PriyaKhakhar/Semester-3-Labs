// Create class Student with attributes (name: String, roll_no:int, SPI:double,
// course: String). Implement getter() and setter() method to assign data for 3 students and display it.[A]
class Student {
    String name,course; int roll_no; double SPI;
    void setter(String n,int r,double s,String c){name=n;roll_no=r;SPI=s;course=c;}
    void getter(){System.out.println(name+" "+roll_no+" "+SPI+" "+course);}
    public static void main(String[] args){
        Student a=new Student(),b=new Student(),c=new Student();
        a.setter("Priya",1,9.5,"CSE"); b.setter("Riya",2,9.2,"CSE"); c.setter("Diya",3,8.9,"CSE");
        a.getter();b.getter();c.getter();
    }
}
