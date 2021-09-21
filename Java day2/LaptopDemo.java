public class LaptopDemo {
    public static void main(String[] args) {
        laptop l1 = new laptop();
        laptop l2 = new laptop();
        l1.initialize(10, 50, "HP", 15.85);
        l2.initialize(40, 50, "DELL", 15.05);
        l1.display();
        l2.display();
    }
}