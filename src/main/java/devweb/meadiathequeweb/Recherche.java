/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package devweb.meadiathequeweb;

/**
 *
 * @author Administrateur
 */
public class Recherche {
    
     private String type ="";
     
    private String titre="";
    
    private String auteur="";
    

    /**
     * Get the value of auteur
     *
     * @return the value of auteur
     */
    public String getAuteur() {
        return auteur;
    }

    /**
     * Set the value of auteur
     *
     * @param auteur new value of auteur
     */
    public void setAuteur(String auteur) {
        this.auteur = auteur;
    }


    /**
     * Get the value of titre
     *
     * @return the value of titre
     */
    public String getTitre() {
        return titre;
    }

    /**
     * Set the value of titre
     *
     * @param titre new value of titre
     */
    public void setTitre(String titre) {
        this.titre = titre;
    }


    /**
     * Get the value of type
     *
     * @return the value of type
     */
    public String getType() {
        return type;
    }

    /**
     * Set the value of type
     *
     * @param type new value of type
     */
    public void setType(String type) {
        this.type = type;
    }

/*
    permet de trier 
    
    sout "Catalogue";
    var catl = Arrays.stream(catalogue.toArray())
        .filter(p -> {return (p instanceof Livre);})
        .filter(p -> {(Livre)p}.getNbPage() == 100}
        .toArray();
    for (var l : catl) {
        sout l;
    }
    
    */
}
