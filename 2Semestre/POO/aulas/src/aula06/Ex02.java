package aula06;
import java.util.Scanner;


import aula05.DateYMD;

public class Ex02 {
    static Scanner sc= new Scanner(System.in);
    static Contacto[] contactos = new Contacto[20];
    
    

    public static void main(String[] args) {
        
        Pessoa[] pessoas = new Pessoa[20];
        
        int numPessoa = 0;
        while (true) {
            System.out.println("1. Inserir contacto");
            System.out.println("2. Alterar contacto");
            System.out.println("3. Apagar contacto");
            System.out.println("4. Procurar contacto");
            System.out.println("5. Listar contactos");
            System.out.println("0. Sair");
            int escolha = sc.nextInt();
            sc.nextLine();

           
            
            if (escolha == 1) {

                System.out.print("Nome: ");
                String nome = sc.nextLine();

                int count = encontrarContacto(nome);
                String continuar = "S";

                if (count != contactos.length) {
                    System.out.println("Já existe um contacto com este nome.");
                    System.out.print("Deseja criar outro contacto com o mesmo nome(S/N)?");

                    continuar = sc.nextLine();
                    
                }
                
                if (continuar.equals("S") ) {

                    System.out.print("CC: ");
                    int cc = sc.nextInt();
                    sc.nextLine();

                    System.out.print("Dia de nascimento (dd/mm/yyyy): ");
                    String[] diaNasc = sc.nextLine().split("/");
                
                    int dia = Integer.parseInt(diaNasc[0]);
                    int mes = Integer.parseInt(diaNasc[1]);
                    int ano = Integer.parseInt(diaNasc[2]);

                    pessoas[numPessoa] = new Pessoa(nome, cc, new DateYMD(dia, mes, ano));

                    int numero = 0;
                    String email = "";
                    while (true) {
                    System.out.println("1- Número telefone");
                    System.out.println("2- Email ");
                    System.out.println("0- Continuar");

                    int opcao = sc.nextInt();

                    if (opcao == 1) {
                        System.out.print("Número telefone: ");
                        numero = sc.nextInt();
                        sc.nextLine();

                        if (Contacto.validNumber(numero) == false) {
                            System.out.println("Número Inválido!\n");
                        }

                    }else if (opcao == 2) {
                        System.out.print("Email: ");
                        sc.nextLine();
                        email = sc.nextLine();

                        if (Contacto.validEmail(email) == false) {
                            System.out.println("Email inválido!\n");
                        }

                    }else if (opcao == 0) {
                        if (numero == 0 && email.equals("")) {
                            System.out.print("Necessário número ou email!\n");
                            
                        }else {
                            break;
                        }
                    }
                }   
            
                if (numero != 0 && email.equals("")) {
                    contactos[numPessoa] = new Contacto(pessoas[numPessoa], numero);

                }else if (numero == 0 && email.equals("") == false) {
                    contactos[numPessoa] = new Contacto(pessoas[numPessoa], email);

                }else {
                    contactos[numPessoa] = new Contacto(pessoas[numPessoa], numero, email);
                }

                

                numPessoa++;

                }
 
                
               

            }else if (escolha == 2) {
                
                printContactos();

                System.out.print("\nNome do contacto a alterar: ");


                String nome = sc.nextLine();
                
                int count = encontrarContacto(nome);

                if (count == contactos.length) {
                    System.out.println("Número não encontrado!\n");
                }else {
                    while (true) {
                        System.out.println("Alterar:");
                        System.out.println("1- Nome");
                        System.out.println("2- Número");
                        System.out.println("3- Cartão cidadão");
                        System.out.println("4- Data de nascimento");
                        System.out.println("5- Email: ");
                        System.out.println("0- Cancelar");
                        int alteracao = sc.nextInt();
                        sc.nextLine();
    
                        if (alteracao == 1) {
                            System.out.print("Novo nome: ");
                            String novoNome = sc.nextLine();
    
                            contactos[count].setNome(novoNome);
                            
                        }else if (alteracao == 2) {
    
                            
                            System.out.print("Novo número:");
                            int novoNumero = sc.nextInt();
    
                            if (Contacto.validNumber(novoNumero) == false) {
                                System.out.println("Número Inválido!\n");
                                
                            }else {
                                contactos[count].setNTelefone(novoNumero);
                            }
    
                            
                            
                        }else if (alteracao == 3) {
                            System.out.print("Novo cc: ");
                            int novoCc = sc.nextInt();
    
                            contactos[count].setCc(novoCc);
    
                        }else if (alteracao == 4) {
                            System.out.print("Dia de nascimento (dd/mm/yyyy): ");
                            String[] diaNasc = sc.nextLine().split("/");
                    
                            int dia = Integer.parseInt(diaNasc[0]);
                            int mes = Integer.parseInt(diaNasc[1]);
                            int ano = Integer.parseInt(diaNasc[2]);
    
                            contactos[count].setDataNasc(new DateYMD(dia, mes, ano));
    
                        }else if (alteracao == 0) {
                            break;
    
                        }else if (alteracao == 5) {
                            System.out.print("Novo eMail: ");
                            String novoEmail = sc.nextLine();
    
                            if (Contacto.validEmail(novoEmail) == false) {
                                System.out.println("Email inválido!\n");
                                
                            }else {
                                contactos[count].setEMail(novoEmail);
                            }
    
                        }
                    }
                }

                
                

            }else if (escolha == 3) {
                System.out.print("Nome do contacto: ");
                String nome = sc.nextLine();
                
                apagarContacto(nome);
            

            }else if (escolha == 4) {
                
                System.out.print("Procura: ");
                String procura = sc.nextLine();

                procuraContacto(procura);

            }else if (escolha == 5) {

                printContactos();

            }else if (escolha == 0) {
                break;
            }
        }
        

        
    }

    public static void procuraContacto(String nome) {
        for (int i = 0; i < contactos.length; i++) {
            if (contactos[i] != null) {
                if (contactos[i].getNome().contains(nome)) {
                    System.out.print(contactos[i]);
                }
            }
            
        }
        
    }

    public static void printContactos() {
        System.out.println("Contactos:");
        for (int i= 0; i < contactos.length; i++) {
            if (contactos[i] != null) {
                System.out.print(contactos[i]);
            }
            
        }
    }

    public static Contacto apagarContacto(String nome) {

        int count = 0;

        for (int i= 0; i< contactos.length; i++) {
            if (contactos[i] == null) {
                count++;
            }else if (contactos[i].nome.equals(nome)){
                break;
            }else {
                count ++;
            }
        }

        return contactos[count] = null;
    }

    public static int encontrarContacto(String nome) {
        int count =0;

        for (int i= 0; i< contactos.length; i++) {
            if (contactos[i] == null) {
                count++;
            }else if (contactos[i].nome.equals(nome)){
                break;
            }else {
                count ++;
            }
        }

        return count;
    }   
}

