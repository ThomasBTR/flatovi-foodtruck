package com.training.flatovifoodtruck.Repository;

import com.training.flatovifoodtruck.Entities.Utilisateur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;



@Repository
public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {
    List<Utilisateur> findByNomContaining(String nom);
    List<Utilisateur> findByNomAndPrenom(String nom, String prenom);
}