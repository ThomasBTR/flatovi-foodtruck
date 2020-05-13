package com.training.flatovifoodtruck.Repository;

import com.training.flatovifoodtruck.Entities.Produit;
import com.training.flatovifoodtruck.Entities.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProduitRepository extends JpaRepository<Produit, Integer> {
//    List<Produit> findByNomContaining(String nom);
//    List<Produit> findByNomAndPrenom(String nom, String prenom);
}