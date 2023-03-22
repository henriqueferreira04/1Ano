package aula06;

import aula05.DateYMD;
class Pessoa {
    private String nome;
    private int cc;
    private  DateYMD dataNasc;

    public Pessoa() {
    }

    public Pessoa(String nome, int cc, DateYMD dataNasc) {
        this.nome = nome;
        this.cc = cc;
        this.dataNasc = dataNasc;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCc() {
        return this.cc;
    }

    public void setCc(int cc) {
        this.cc = cc;
    }

    public DateYMD getDataNasc() {
        return this.dataNasc;
    }

    public void setDataNasc(DateYMD dataNasc) {
        this.dataNasc = dataNasc;
    }

    public Pessoa nome(String nome) {
        setNome(nome);
        return this;
    }

    public Pessoa cc(int cc) {
        setCc(cc);
        return this;
    }

    public Pessoa dataNasc(DateYMD dataNasc) {
        setDataNasc(dataNasc);
        return this;
    }


    @Override
    public String toString() {
        return 
            " nome='" + getNome() + "'" +
            ", cc='" + getCc() + "'" +
            ", dataNasc='" + getDataNasc() + "'";
    }


}

