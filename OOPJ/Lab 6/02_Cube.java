// Create class Cube with attributes (height, width and depth with double datatype).
// Implement getter() and setter() method to assign data for 2 cubes. Create method
// volume() to calculate volume for 2 cubes. [A]
class Cube {
    double height,width,depth;
    void setter(double h,double w,double d){height=h;width=w;depth=d;}
    void getter(){System.out.println(height+" "+width+" "+depth);}
    double volume(){return height*width*depth;}
    public static void main(String[] args){
        Cube c1=new Cube(),c2=new Cube(); c1.setter(2,3,4);c2.setter(5,6,7);
        c1.getter();System.out.println(c1.volume()); c2.getter();System.out.println(c2.volume());
    }
}
