package aula06;
import aula05.DateYMD;

public class Bolseiro extends Aluno{
    Professor orientador;
    int montanteBolsa;

    public Bolseiro() {
    }

    public Bolseiro(String nome, int cc, DateYMD dataNasc, Professor orientador, int montanteBolsa) {
        super(nome, cc, dataNasc);
        this.orientador = orientador;
        this.montanteBolsa = montanteBolsa;
    }

    

    public Bolseiro(Professor orientador, int montanteBolsa) {
        this.orientador = orientador;
        this.montanteBolsa = montanteBolsa;
    }

    public Professor getOrientador() {
        return this.orientador;
    }

    public void setOrientador(Professor orientador) {
        this.orientador = orientador;
    }

    public int getMontanteBolsa() {
        return this.montanteBolsa;
    }

    public void setMontanteBolsa(int montanteBolsa) {
        this.montanteBolsa = montanteBolsa;
    }

    public Bolseiro orientador(Professor orientador) {
        setOrientador(orientador);
        return this;
    }

    public Bolseiro montanteBolsa(int montanteBolsa) {
        setMontanteBolsa(montanteBolsa);
        return this;
    }


    @Override
    public String toString() {
        return "{" +
            " orientador='" + getOrientador() + "'" +
            ", montanteBolsa='" + getMontanteBolsa() + "'" +
            "}";
    }

    
}
