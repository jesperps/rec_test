public class CountDown {

    public void countDown(int number) {
        while (number > 0){
            try {
                Thread.sleep(1000);
            } catch(InterruptedException e){
                System.out.println("Somthing has gone wrong, please try again" + e);
                System.exit(1);
            }
            System.out.print(number);
            countDown(--number);
        }
    }

    public static void main(String args[]){
        CountDown countDown = new CountDown();
        int number = Integer.parseInt(System.console().readLine("Give me a number: "));
        countDown.countDown(number);
    }

}
