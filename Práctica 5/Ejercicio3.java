import java.util.ArrayList;

/**
 * Ejercicio3
 */
public class Ejercicio3 {
      private static int a = 159;
      private static int c = 806;
      private static int m = (int) Math.pow(2, 31);
      //private static int m = (int) Math.pow(2, 35);
      private static int semilla = 0;


      public static int generaNumero() {
            int operacionInterna = a * semilla + c;
            return operacionInterna % m;
      }

      public static void mejora(ArrayList<Integer> conjunto) {
            int y = 0;

            for (int i = 0; i < conjunto.size(); i++) {
                  int k = (y * conjunto.size() / m) % (conjunto.size() - 1);
                  y = generaNumero();
                  conjunto.set(k, y);
            }
      }

      public static void main(String[] args) {
            ArrayList<Integer> conjunto = new ArrayList<>();

            semilla = generaNumero();
            while (!conjunto.contains(semilla)) {
                  conjunto.add(semilla);
                  System.out.println("Numero: " + semilla);
                  semilla = generaNumero();
            }
            conjunto.add(semilla);
            System.out.println("Numero: " + semilla);
            
            System.out.println("Conjunto resultante: " + conjunto.toString());
            System.out.println("Tamaño del conjunto: " + conjunto.size());
            
            mejora(conjunto);

            System.out.println("Conjunto mejorado resultante: " + conjunto.toString());
      }
}
