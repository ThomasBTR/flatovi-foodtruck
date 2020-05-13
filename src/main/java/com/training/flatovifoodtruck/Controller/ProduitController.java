package com.training.flatovifoodtruck.Controller;

import com.training.flatovifoodtruck.Entities.Produit;
import com.training.flatovifoodtruck.Entities.Utilisateur;
import com.training.flatovifoodtruck.Repository.ProduitRepository;
import com.training.flatovifoodtruck.Repository.UtilisateurRepository;
import javafx.scene.control.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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

        System.out.println(totalElements);
        System.out.println(page);
        System.out.println(produits.size());

        if (produits != null)
        {
            produits = new ArrayList<Produit>();
        } else {
            produits.clear();
        }

        System.out.println(page + " " + elementsPerPage + totalElements);
        Pageable pageable = PageRequest.of(page, elementsPerPage);

        this.produits = this._produitRepo.findAll(pageable).getContent();

        System.out.println(produits);
        model.addAttribute("totalElements", totalElements);
        model.addAttribute("listProduits", this.produits);
        return "catalogue";
    }
}
