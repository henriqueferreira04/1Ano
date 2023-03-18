package aula05;

public class Ex03 {
    public static void main(String[] args) {
        RealEstate imobiliaria = new RealEstate();
        imobiliaria.newProperty("Glória", 2, 30000);
        imobiliaria.newProperty("Vera Cruz", 1, 25000);
        imobiliaria.newProperty("Santa Joana", 3, 32000);
        imobiliaria.newProperty("Aradas", 2, 24000);
        imobiliaria.newProperty("São Bernardo", 2, 20000);

        imobiliaria.sell(1001);
        imobiliaria.setAuction(1002, new DateYMD(21, 3, 2023), 4);
        imobiliaria.setAuction(1003, new DateYMD(1, 4, 2023), 3);
        imobiliaria.setAuction(1001, new DateYMD(1, 4, 2023), 4);
        imobiliaria.setAuction(1010, new DateYMD(1, 4, 2023), 4);

        System.out.println(imobiliaria);

    }
    
}

class RealEstate {
    
    
    Imobiliario[] imoveis = new Imobiliario[20];
    String[] dataMercado = new String[20];
    String[] dataFechado = new String[20];
    
    int identificador = 1000;
    int day;
    int month;
    int year;
    

    public RealEstate() {
    }

    public void newProperty(String localidade, int quartos, int preco) {
        this.identificador++;
        imoveis[identificador- 1001] = new Imobiliario(localidade, quartos, preco);
        
        
    }

    public void setAuction(int identificador, DateYMD data, int tempo) {
        if (imoveis[identificador - 1000] == null) {
            System.out.printf("Imóvel %s não existe.\n", identificador);
        }else {
            dataMercado[identificador - 1000] = data.day + "-" + data.month + "-" + data.year;
            dataFechado[identificador - 1000] = data.day + tempo + "-" + data.month + "-" + data.year;
            
            
        }
            
    }

    public void sell(int identificador) {

        imoveis[identificador - 1000].disponibilidade = false;

        System.out.printf("Imóvel %d vendido.\n", identificador);
        System.out.printf("Imóvel %d não está disponível.\n", identificador);
        
    }

    @Override
    public String toString() {
        String catalogo = "Propriedades: ";

        for (int i = 0; i < imoveis.length; i++) {
            if (imoveis[i] == null) {
                break;
            }else {
                int numero = i + 1000;
                if (dataMercado[i] == null) {
                    catalogo += "\n" + "Imóvel: " + numero + "; quartos: " + imoveis[i].quartos + "; localidade: " + imoveis[i].localidade + "; preço: " + imoveis[i].preco + "; disponibilidade: " + imoveis[i].disponibilidade;
                }else {
                    catalogo += "\n" + "Imóvel: " + numero + "; quartos: " + imoveis[i].quartos + "; localidade: " + imoveis[i].localidade + "; preço: " + imoveis[i].preco + "; disponibilidade: " + imoveis[i].disponibilidade + "; leilão: " + dataMercado[i] + " : " + dataFechado[i]; 
                }
            
            }
        }
        
        return catalogo; 
        
    }

}

class Imobiliario {

    String localidade;
    int quartos;
    int preco;
    boolean disponibilidade = false;
    

    public Imobiliario(String localidade, int quartos, int preco) {
        this.localidade = localidade;
        this.quartos = quartos;
        this.preco = preco;
        this.disponibilidade = true;
        
        
    }

    
} 