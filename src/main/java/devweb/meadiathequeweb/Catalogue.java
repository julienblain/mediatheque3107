/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devweb.meadiathequeweb;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Administrateur
 */
public class Catalogue {
    
    static private ArrayList<Media> c;
    
    static public ArrayList<Media> get() {
        if (c == null) {
            c = new ArrayList<Media>();
            Importe();
        }
        
        return c;
    }
    
     static public void Importe() {
        try {
            FileInputStream f = new FileInputStream("./data/export.csv");
            Scanner sc = new Scanner(f);
            String ligne;
            while (sc.hasNextLine()) {
                ligne = sc.nextLine();
                String[] e = ligne.split(";");
                if (e.length == 0) {
                    continue;
                }

                try {
                    Media m;
                    switch (e[0]) {
                        case "D":
                            m = new DVD(e[1], e[2], Integer.parseInt(e[3].strip()));
                            break;
                        case "L":
                            m = new Livre(e[1], e[2], Integer.parseInt(e[3].strip()));
                            break;
                        default:
                            continue;
                    }
                    if (!c.contains(m)) {
                        c.add(m);
                        System.out.println(m);
                    }
                } catch (Exception ex) {
                    System.out.println(ex.getMessage());
                }
            }
            f.close();

        } catch (FileNotFoundException ex) {
            Logger.getLogger(Catalogue.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Catalogue.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}
