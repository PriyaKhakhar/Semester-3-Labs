// Write a Java program to create a class called Employee with a name, job title, and salary
// attributes, and methods to calculate and update salary.[B]
class Employee {
    String name,jobTitle; double salary;
    Employee(String n,String j,double s){name=n;jobTitle=j;salary=s;}
    void calculateSalary(){System.out.println("Salary = "+salary);}
    void updateSalary(double s){salary=s;}
    void display(){System.out.println(name+" "+jobTitle+" "+salary);}
    public static void main(String[] args){Employee e=new Employee("Priya","Developer",30000);e.display();e.calculateSalary();e.updateSalary(35000);e.display();}
}
