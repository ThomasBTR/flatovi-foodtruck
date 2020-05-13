package com.training.flatovifoodtruck.Controller;

import com.training.flatovifoodtruck.Entities.Utilisateur;
import com.training.flatovifoodtruck.Repository.UtilisateurRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UtilisateurController {

    @Autowired
    UtilisateurRepository _userRepo;

    private List<Utilisateur> utilisateurs = new ArrayList<Utilisateur>();

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("message", "Hello Spring Boot");
        return "index";
    }

//    @RequestMapping(value = {"/employee"}, method = RequestMethod.GET)
//    public String employeePage(Model model, @RequestParam(name="page", defaultValue="0") int page) {
//        int elementsPerPage = 7;
//        int totalElements =  this._userRepo.findCount();
//
//        this.utilisateurs.clear();
//        this.utilisateurs = this._userRepo.findPage(page*elementsPerPage);
//
//        model.addAttribute("totalElements", totalElements);
//        model.addAttribute("listEmployee", this.utilisateurs);
//        return "employee";
//    }

    @RequestMapping(value = {"/detail"}, method = RequestMethod.GET)
    public String employeeDetail(Model model) {
        model.addAttribute("utilisateur", new Utilisateur());
        model.addAttribute("modeCreate", true);
        return "detailUtilisateur";
    }

    @RequestMapping(value = {"/detail/{id}"}, method = RequestMethod.GET)
    public String employeeDetail(Model model, @PathVariable(name="id") int id) {
        this.utilisateurs.clear();
        model.addAttribute("utilisateur", this._userRepo.findById(id));
        model.addAttribute("modeCreate", false);
        return "detailEmployee";
    }

    @RequestMapping(value = {"/addUtilisateur"}, method = RequestMethod.POST)
    public String addEmployee(Model model, @ModelAttribute Utilisateur utilisateur) {

        // TODO : vérification des champs
        if(utilisateur.getId() == 0) {
            this._userRepo.save(utilisateur);
        } else {
            this._userRepo.save(utilisateur);
        }
        return "redirect:/utilisateur";
    }

    @RequestMapping(value = {"/deleteUtilisateur/{id}"}, method = RequestMethod.GET)
    public String deleteEmployee(Model model, @PathVariable int id) {
        this._userRepo.deleteById(id);
        return "redirect:/utilisateur";
    }

}
