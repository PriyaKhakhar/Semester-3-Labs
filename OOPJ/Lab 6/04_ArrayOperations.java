// Implement an array with 5 elements in class A. Create four methods for array
// operation(sortArray(), searchArray(), SumArray(), and avgArray()) and call all the four
// methods using object.[B]
import java.util.Arrays;
class A {
    int[] a={5,2,8,1,4};
    void sortArray(){Arrays.sort(a);System.out.println(Arrays.toString(a));}
    void searchArray(int n){for(int x:a)if(x==n){System.out.println("Found");return;}System.out.println("Not Found");}
    void SumArray(){int s=0;for(int x:a)s+=x;System.out.println("Sum = "+s);}
    void avgArray(){int s=0;for(int x:a)s+=x;System.out.println("Average = "+s/5.0);}
    public static void main(String[] args){A o=new A();o.sortArray();o.searchArray(8);o.SumArray();o.avgArray();}
}
