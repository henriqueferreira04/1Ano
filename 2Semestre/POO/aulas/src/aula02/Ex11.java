package aula02;
import utils.userInput;

public class Ex11 {
    public static void main(String[] args) {
        userInput input = new userInput();
        boolean validacao = input.ValidNumber();
        System.out.print(validacao);

    }
}
