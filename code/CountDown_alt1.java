public class CountDown_alt1 {

    public void countDown(int number) {
        while (number > 0){
            System.out.print(number + ",");
            countDown(--number);
        }
    }

    public static void main(String args[]){
        CountDown_alt1 countDown = new CountDown_alt1();
        int number = Integer.parseInt(args[0]);
        countDown.countDown(number);
    }

}
