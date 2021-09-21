public class Box {
    private int length;
    private int width;
    private int height;
    public void intialize(int l, int w, int h) {
        length = l;
        width = w;
        height = h;
    }
    public void display() {
        System.out.println("length=" + length);
        System.out.println("width=" + width);
        System.out.println("height=" + height);
    }
    public int getVolume() {
        return length * width * height;
    }
}
