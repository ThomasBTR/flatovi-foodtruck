package com.training.flatovifoodtruck;

import com.training.flatovifoodtruck.Entities.Utilisateur;
import com.training.flatovifoodtruck.Repository.UtilisateurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.List;
import java.util.Optional;

@SpringBootApplication
public class FlatoviFoodtruckApplication implements CommandLineRunner {

    @Autowired
    UtilisateurRepository _usersRepo;

    public static void main(String[] args)  {
        SpringApplication.run(FlatoviFoodtruckApplication.class, args);
    }

    public void run(String... args) throws Exception {
        System.out.println(_usersRepo);
        List<Utilisateur> selectedUser = _usersRepo.findAll();

        for (Utilisateur user: selectedUser
             ) {
            System.out.println(user.toString());
        }
    }
}
