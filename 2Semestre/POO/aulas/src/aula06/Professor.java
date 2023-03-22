package aula06;
import aula05.DateYMD;

public class Professor extends Pessoa{
    String escalao;
    String departamento;
    

    public Professor() {
    }

    public Professor(String nome, int cc, DateYMD dataNasc, String escalao, String departamento) {
        super(nome, cc, dataNasc);
        this.escalao = escalao;
        this.departamento = departamento;
    }

    public String getEscalao() {
        return this.escalao;
    }

    public void setEscalao(String escalao) {
        this.escalao = escalao;
    }

    public String getDepartamento() {
        return this.departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public Professor escalao(String escalao) {
        setEscalao(escalao);
        return this;
    }

    public Professor departamento(String departamento) {
        setDepartamento(departamento);
        return this;
    }

    

    @Override
    public String toString() {
        return "{" +
            " escalao='" + getEscalao() + "'" +
            ", departamento='" + getDepartamento() + "'" +
            "}";
    }
    
}
