package aula04;

import java.util.Scanner;

class Car {
    public String make;
    public String model;
    public int year;
    public int kms;

    public Car(String make, String model, int year, int kms) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
    }

    public void drive(int distance) {
        this.kms += distance;
    }

}

public class CarDemo {

    static Scanner sc = new Scanner(System.in);

    static int registerCars(Car[] cars) {
        
        // TODO: pede dados dos carros ao utilizador e acrescenta ao vetor
        // registo de carros termina quando o utilizador inserir uma linha vazia 
        // devolve número de carros registados
        
        int count = 0;
        while (true) {
            System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
            String carro = sc.nextLine();

            if (carro.isBlank()) {
                return count;
            }

            
            String[] carro1 = carro.split(" ");

            
            cars[count] = new Car(carro1[0], carro1[1], Integer.parseInt(carro1[2]), Integer.parseInt(carro1[3]));

            count ++;            
        }
        
   }

    static void registerTrips(Car[] cars, int numCars) {
        // TODO: pede dados das viagens ao utilizador e atualiza informação do carro
        // registo de viagens termina quando o utilizador inserir uma linha vazia 
        while (true) {
            System.out.print("Registe uma viagem no formato \"carro:distância\": ");
            String distance = sc.nextLine();

            if (distance.isBlank()){
                break;
            }  
            String[] distanceCar = distance.split(":");

            int carroEscolhido = Integer.parseInt(distanceCar[0]);
            int kmsAndados = Integer.parseInt(distanceCar[1]);

            
            cars[carroEscolhido].drive(kmsAndados);
            
        }
        
    }


    static void listCars(Car[] cars) {
        System.out.println("\nCarros registados: ");
        // TODO: lista todos os carros registados
        // Exemplo de resultado
        // Carros registados: 
        // Toyota Camry, 2010, kms: 234346
        // Renault Megane Sport Tourer, 2015, kms: 32536
        for (int i = 0; i < cars.length; i++) {
            if (cars[i] == null) {
                i = cars.length;
            }else{
                System.out.printf("%s %s, %d, kms: %d\n", cars[i].make, cars[i].model, cars[i].year, cars[i].kms);
            }
            
        }
        
        System.out.println("\n");
    }

    public static void main(String[] args) {

        Car[] cars = new Car[10];

        int numCars = registerCars(cars);

        if (numCars>0) {
            listCars(cars);
            registerTrips(cars, numCars);
            listCars(cars);
        }

        sc.close();

    }
}