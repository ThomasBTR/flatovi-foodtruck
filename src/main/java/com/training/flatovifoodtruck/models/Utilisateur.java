package com.training.flatovifoodtruck.models;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;

import javax.persistence.*;


import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@NamedQueries({
	@NamedQuery(name="Utilisateur.findAll", query = "from Utilisateur"),
	@NamedQuery(name="Utilisateur.findById", query = "from Utilisateur where id = :myID")
})
public class Utilisateur  {

	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(nullable = false, name = "id_utilisateur")
	private Integer id;
	private String nom;
	private String prenom;
	private String login; 
	private String password;
	private String email;
	@Temporal(TemporalType.DATE)
	private Calendar date_naissance;
	private Boolean isenable;
	
//	@Transient
//	private static Collection authorities = new ArrayList<SimpleGrantedAuthority>();;
	
	// Associations
	@OneToOne
	@JoinColumn(
				name= "id_societe",
				referencedColumnName="id_societe"
			)
	private Societe societe;
	
	@ManyToMany(mappedBy = "utilisateur", cascade = CascadeType.PERSIST, fetch=FetchType.EAGER)
	private List<Profil> profil;
	
	
	@OneToOne
	@JoinColumn(
				name= "id_genre",
				referencedColumnName="id_genre"
			)
	private Genre genre;
	
	
	@JsonIgnore
	@OneToMany(mappedBy="user",cascade = {CascadeType.ALL})
	private List<Adresse_Livraison> adresseLivraisonList;
	
	@JsonIgnore
	@OneToMany(mappedBy="user",cascade = {CascadeType.ALL})
	private List<Adresse_Facturation> adresseFacturationList;
	
	@OneToMany(mappedBy="userCommande",cascade = {CascadeType.ALL})
	private List<Commande> commandeList;
	
	/*********************************************************************
	 * Gettes / Setters
	 *********************************************************************/
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Calendar getDate_naissance() {
		return date_naissance;
	}

	public void setDate_naissance(Calendar date_naissance) {
		this.date_naissance = date_naissance;
	}

	public Boolean getIsenable() {
		return isenable;
	}

	public void setIsenable(Boolean isenable) {
		this.isenable = isenable;
	}

	public Societe getSociete() {
		return societe;
	}

	public void setSociete(Societe societe) {
		this.societe = societe;
	}

	
	public Genre getGenre() {
		return genre;
	}

	public void setGenre(Genre genre) {
		this.genre = genre;
	}
	
	public List<Commande> getCommandeList() {
		return commandeList;
	}

	public void setCommandeList(List<Commande> commandeList) {
		this.commandeList = commandeList;
	}

	public List<Adresse_Livraison> getAdresseLivraisonList() {
		return adresseLivraisonList;
	}

	public void setAdresseLivraisonList(List<Adresse_Livraison> adresseLivraisonList) {
		this.adresseLivraisonList = adresseLivraisonList;
	}

	public List<Adresse_Facturation> getAdresseFacturationList() {
		return adresseFacturationList;
	}

	public void setAdresseFacturationList(List<Adresse_Facturation> adresseFacturationList) {
		this.adresseFacturationList = adresseFacturationList;
	}
	
	public List<Profil> getProfil() {
		return profil;
	}

	public void setProfil(List<Profil> profil) {
		this.profil = profil;
	}


	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	public Utilisateur() {
		profil = new ArrayList<Profil>();
	}

	public Utilisateur(String nom, String prenom, String login, String password, String email, Calendar date_naissance, Boolean isenable) {
		this.nom = nom;
		this.prenom = prenom;
		this.login 	= login; 
		this.password = password;
		this.email = email;
		this.date_naissance = date_naissance;
		this.isenable = isenable;
		
		profil = new ArrayList<Profil>();
	}

//	public Collection getAuthorities() {
//		List authorities = new ArrayList();
//
//		if(profil.size() > 0 ) {
//			for (Profil role : profil) {
//				authorities.add(new SimpleGrantedAuthority(role.getLibelle()));
//			}
//		}
//
//
//	    Utilisateur.authorities = authorities;
//
//		return Utilisateur.authorities;
//	}


	public String getUsername() {
		return login;
	}


	public boolean isAccountNonExpired() {
		return true;
	}


	public boolean isAccountNonLocked() {
		return true;
	}


	public boolean isCredentialsNonExpired() {
		return true;
	}


	public boolean isEnabled() {
		return true;
	}
}
