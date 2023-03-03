package utils;
import java.util.Random;

public class RandomInt {

    public static int RandomInteger(int n) {

        Random randI = new Random();
        int randomNum = randI.nextInt(n);
        randomNum = randomNum + 1;

        return randomNum;



    }
    
}
