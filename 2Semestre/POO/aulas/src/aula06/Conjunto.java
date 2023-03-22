package aula06;

public class Conjunto {
    int index = 0; 
    static int proxIndex = 1;
    int[] numeros = new int[20];

    public Conjunto() {
        
    }


    void insert(int n) {
        
        int j = 0;
        if (n != 0) {

            for (int i : numeros) {
                if (i == n) {
                    j = 1;
                }
            }
    
            if (j == 0) {
                numeros[index] = n;
            }
    
            this.index = proxIndex++;
        }
        
    }

    boolean contains(int n) {

        for (int i : numeros) {
            if (n == i) {
                return true;
            }
        }
        return false;
    }

    void remove(int n) {

        for (int i = 0; i < numeros.length; i++) {
            if (n == numeros[i]) {
                numeros[i] = 0;
            }
        }
        
        
    }

    void empty() {

        for (int i = 0; i < numeros.length; i++) {
            numeros[i] = 0;
        }
    }

    public String toString() {
        String valores = "";

        for (int i : numeros) {
            if (i != 0) {
                valores += i + " ";
            }
            
        }

        return valores;
    }

    int size() {
        int count = 0;

        for (int i : numeros) {
            if (i != 0) {
                count++;
            }
       }
       return count;
    }

    Conjunto combine(Conjunto add) {
        Conjunto novoConjunto = new Conjunto();
        
        
        for (int i : numeros) {
            novoConjunto.insert(i);
        }

        for (int i : add.numeros) {
            
            novoConjunto.insert(i);
        }       

        return novoConjunto;
    }

    Conjunto subtract(Conjunto dif) {
        Conjunto novoConjunto = new Conjunto();

        for (int i : numeros) {
            novoConjunto.insert(i);
        }

        for (int i : dif.numeros) {
            
            if (novoConjunto.contains(i)) {
                
                novoConjunto.remove(i);
                
                
            }
            
        }       

        return novoConjunto;
    }

    Conjunto intersect(Conjunto inter) {
        Conjunto novoConjunto = new Conjunto();

        

        for (int i : inter.numeros) {

            for (int j : numeros) {

                if(i == j) {
                    novoConjunto.insert(i);
                }
                
            }
        }
    
        return novoConjunto;    
    }
}
