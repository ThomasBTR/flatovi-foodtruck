package com.training.flatovifoodtruck.Controller;

import com.training.flatovifoodtruck.Entities.Produit;
import com.training.flatovifoodtruck.Entities.Utilisateur;
import com.training.flatovifoodtruck.Repository.ProduitRepository;
import com.training.flatovifoodtruck.Repository.UtilisateurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProduitController {

    @Autowired
    ProduitRepository _produitRepo;

    private List<Produit> produits = new ArrayList<Produit>();

    @RequestMapping(value = {"/Catalogue"}, method = RequestMethod.GET)
    public String produitPage(Model model, @RequestParam(name="page", defaultValue="0") int page) {
        int elementsPerPage = 7;
        long totalElements =  this._produitRepo.count();

        this.produits.clear();
        //this.produits = this._produitRepo.findPage(page*elementsPerPage);

        System.out.println("OKKKKK");
        System.out.println(totalElements);
        this.produits = this._produitRepo.findAll();

        model.addAttribute("totalElements", totalElements);
        model.addAttribute("listProduits", this.produits);
        return "catalogue";
    }
}
