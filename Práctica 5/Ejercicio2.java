import java.util.Scanner;

/**
 * Ejercicio2
 */
public class Ejercicio2 {
      public static void main(String[] args) {

            String semilla = "", snumero2, snumero3;
            int tam1, tam2, primerc;
            long numero1, numero2;

            System.out.print("Escriba semilla: ");

            try (Scanner entrada = new Scanner(System.in)) {
                  semilla = entrada.next();
                  tam1 = semilla.length();

                  System.out.println("Cantidad de digitos:  " + tam1);
                  numero1 = Integer.parseInt(semilla);

                  for (int i = 1; i <= 10; i++) {
                        numero2 = (long) Math.pow(numero1, 2);
                        snumero2 = Long.toString(numero2);
                        tam2 = snumero2.length();
                        primerc = (tam2 - tam1) / 2;
                        snumero3 = snumero2.substring(primerc, primerc + tam1);
                        System.out.println(i + ". " + snumero3);
                        numero1 = Integer.parseInt(snumero3);
                  }

            } catch (Exception e) {
                  System.out.println("Ha ocurrido un error");
            }

      }

}
