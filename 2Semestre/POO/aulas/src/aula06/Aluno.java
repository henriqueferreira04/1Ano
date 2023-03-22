package aula06;
import aula05.DateYMD;
import java.time.LocalDate;

class Aluno extends Pessoa {
    DateYMD dataInsc;
    int nMecanografico;
    private static int proxMecanografico = 100;
    LocalDate dataLocal;

    public Aluno(String nome, int cc, DateYMD dataNasc, DateYMD dataInsc) {
        super(nome, cc, dataNasc);
        this.dataInsc = dataInsc;
        this.nMecanografico = proxMecanografico++;
    }

    public Aluno(String nome, int cc, DateYMD dataNasc) {
        super(nome, cc, dataNasc);
        dataLocal = LocalDate.now();
        this.dataInsc = new DateYMD(dataLocal.getDayOfMonth(), dataLocal.getMonthValue(), dataLocal.getDayOfYear());
        this.nMecanografico = proxMecanografico++;
    }


    public Aluno() {
    }


    public DateYMD getDataInsc() {
        return this.dataInsc;
    }

    public void setDataInsc(DateYMD dataInsc) {
        this.dataInsc = dataInsc;
    }

    public int getNMecanografico() {
        return this.nMecanografico;
    }

    public void setNMecanografico(int nMecanografico) {
        this.nMecanografico = nMecanografico;
    }

    public Aluno dataInsc(DateYMD dataInsc) {
        setDataInsc(dataInsc);
        return this;
    }

    public Aluno nMecanografico(int nMecanografico) {
        setNMecanografico(nMecanografico);
        return this;
    }

    

    @Override
    public String toString() {
        return  
            " dataInsc=" + getDataInsc()  +
            ", nMecanografico='" + getNMecanografico() + "'" +
            "}";
    }

}