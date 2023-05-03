package org.itson.contadornumeros;

public class ContadorNumeros {

    public static void main(String[] args) {
        try{
            int tiempoEspera = 1000;
            int contador = 1;
            while(true){
                System.out.printf("Contador: %d %n", contador);
                contador ++;
                Thread.sleep(tiempoEspera);
            }
        }catch(InterruptedException ex){
            System.err.println("Error: " + ex.getMessage());
        }        
    }
}
