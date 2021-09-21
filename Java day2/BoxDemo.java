public class BoxDemo {
    public static void main(String[] args)
    {
        Box b1=new Box();
        b1.intialize (10, 5, 8);
        b1.display();
        System.out.println("Volume of Box 1 is:"+b1.getVolume());
    }
}
