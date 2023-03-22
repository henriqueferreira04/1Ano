package aula06;
import aula05.DateYMD;

class Contacto {
    String nome;
    int nTelefone;
    String eMail;
    int cc;
    DateYMD dataNasc;
    int id;
    static int proxId = 1;
    

    public Contacto(Pessoa pessoa, int nTelefone, String eMail) {
        this.nome = pessoa.getNome();
        this.cc = pessoa.getCc();
        this.dataNasc = pessoa.getDataNasc();
        this.id = proxId++;
        this.nTelefone = nTelefone;
        this.eMail = eMail;
    }

    public Contacto(Pessoa pessoa, int nTelefone) {
        this.nome = pessoa.getNome();
        this.cc = pessoa.getCc();
        this.dataNasc = pessoa.getDataNasc();
        this.id = proxId++;

        this.nTelefone = nTelefone;
    }

    public Contacto(Pessoa pessoa, String eMail) {
        this.nome = pessoa.getNome();
        this.cc = pessoa.getCc();
        this.dataNasc = pessoa.getDataNasc();
        this.id = proxId++;

        this.eMail = eMail;
    }



    public Contacto() {
    }

    


    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getNTelefone() {
        return this.nTelefone;
    }

    public void setNTelefone(int nTelefone) {
        this.nTelefone = nTelefone;
    }

    public String getEMail() {
        return this.eMail;
    }

    public void setEMail(String eMail) {
        this.eMail = eMail;
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

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Contacto nome(String nome) {
        setNome(nome);
        return this;
    }

    public Contacto nTelefone(int nTelefone) {
        setNTelefone(nTelefone);
        return this;
    }

    public Contacto eMail(String eMail) {
        setEMail(eMail);
        return this;
    }

    public Contacto cc(int cc) {
        setCc(cc);
        return this;
    }

    public Contacto dataNasc(DateYMD dataNasc) {
        setDataNasc(dataNasc);
        return this;
    }

    public Contacto id(int id) {
        setId(id);
        return this;
    }

    public static boolean validNumber(int numero) {
        String numeroString = Integer.toString(numero);
        if (numeroString.charAt(0) != '9') {
            return false;
        }
        
        if (numeroString.length() != 9) {
            return false;
        }else {
            return true;
        }
    }

    public static boolean validEmail(String email) {

        if (email.contains("@") && (email.contains(".com") || email.contains(".pt"))) {
            return true;
        }else {
            return false;
        }
    }
    
    @Override
    public String toString() {
        return "{" +
            " nome='" + getNome() + "'" +
            ", nTelefone='" + getNTelefone() + "'" +
            ", eMail='" + getEMail() + "'" +
            ", cc='" + getCc() + "'" +
            ", dataNasc='" + getDataNasc() + "'" +
            ", id='" + getId() + "'" +
            "}\n";
    }
    


}