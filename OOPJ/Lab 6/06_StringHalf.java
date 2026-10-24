// Write a program to find length of string and print second half of the string.[C]
class StringHalf {
    public static void main(String[] args){
        String s="HelloWorld"; System.out.println("Length = "+s.length());
        System.out.println("Second half = "+s.substring(s.length()/2));
    }
}
