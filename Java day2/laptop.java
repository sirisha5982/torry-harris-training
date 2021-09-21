public class laptop {
    private int RAM;
    private int HDD;
    private String processor;
    private double screensize;
    public void initialize(int r,int h,String p,double s)
    {
        RAM=r;
        HDD=h;
        processor=p;
        screensize=s;
    }
    public void display()
    {
        System.out.println("RAM is "+RAM+" GB");
        System.out.println("HDD is "+HDD+" GB");
        System.out.println("This is "+processor+" processor");
        System.out.println("Screen size is: "+screensize);
    }
}
