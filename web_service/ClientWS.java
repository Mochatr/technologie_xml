package client;

// Importez les classes générées par wsimport (ajustez le package selon la génération)
import ws.BanqueService;
import ws.BanqueWS;
import ws.Compte;

public class ClientWS {
    public static void main(String[] args) {
        // Le client demande au stub de faire appel au service
        BanqueWS stub = new BanqueWS();
        BanqueService port = stub.getBanqueServicePort();

        // 1. Test de la conversion
        double res = port.conversionEuroToDH(11); // Conversion(11) [cite: 88]
        System.out.println("Résultat de la conversion : " + res); // Return 121 [cite: 95]

        // 2. Test de consultation d'un compte
        Compte cp = port.getCompte(1);
        System.out.println("Solde du compte : " + cp.getSolde());

        // 3. Test de consultation de la liste des comptes
        System.out.println("--- Liste des comptes ---");
        for (Compte c : port.getComptes()) {
            System.out.println("Code: " + c.getCode() + " | Solde: " + c.getSolde());
        }
    }
}