package aula04;

class Prato{
    String nome;
    int quantidade;
    double preco;


    public Prato() {
    }

    public Prato(String nome, int quantidade, double preco) {
        this.nome = nome;
        this.quantidade = quantidade;
        this.preco = preco;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getQuantidade() {
        return this.quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getPreco() {
        return this.preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    @Override
    public String toString() {
        return "{" +
            " nome='" + getNome() + "'" +
            ", quantidade='" + getQuantidade() + "'" +
            ", preco='" + getPreco() + "'" +
            "}";
    }
    
}


public class teste {
    public static void main(String[] args) {
        Prato prato1 = new Prato();

        prato1.setNome("Atum");
        
        Prato prato2 = new Prato("Arroz", 1, 1.5);

        Prato[] pratos = new Prato[2];

        pratos[0] = prato1;
        pratos[1] = prato2;

        System.out.println(pratos[0].getNome());
    }    
}
