package com.training.flatovifoodtruck.models;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@NamedQueries({
	@NamedQuery(name="Commande.findAll", query = "from Commande"),
	@NamedQuery(name="Commande.findById", query = "from Commande where id = :myID")
})
public class Commande {

	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(nullable = false, name = "id_commande")
	private Integer id;
	private double prix_total;
	@Temporal(TemporalType.DATE)
	private Date datecommande;
	private String num_facture;
	
	// Associations
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name="id_utilisateur")
	private Utilisateur userCommande;
	
	@OneToOne
	@JoinColumn(
				name= "id_statut_commande",
				referencedColumnName="id_statut_commande"
			)
	private Statut_Commande statutcommande;
	
	@OneToOne
	@JoinColumn(
			name= "id_adresse_livraison",
			referencedColumnName="id_adresse_livraison"
			)
	private Adresse_Livraison adresse_livraison;
	
	@OneToOne
	@JoinColumn(
				name= "id_adresse_facturation",
				referencedColumnName="id_adresse_facturation"
			)
	private Adresse_Facturation adresse_facturation;
	

	@OneToMany(mappedBy="commande", orphanRemoval=true, cascade = {CascadeType.ALL})
	private List<LigneCommande> ligneCommandeList;
	
	/*********************************************************************
	 * Gettes / Setters
	 *********************************************************************/

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public double getPrix_total() {
		return prix_total;
	}

	public void setPrix_total(double prix_total) {
		this.prix_total = prix_total;
	}

	public Date getDatecommande() {
		return datecommande;
	}

	public void setDate_commande(Date date_commande) {
		this.datecommande = date_commande;
	}

	public String getNum_facture() {
		return num_facture;
	}

	public void setNum_facture(String num_facture) {
		this.num_facture = num_facture;
	}

	public Utilisateur getUserCommande() {
		return userCommande;
	}

	public void setUserCommande(Utilisateur userCommande) {
		this.userCommande = userCommande;
	}

	public Statut_Commande getStatut_commande() {
		return statutcommande;
	}

	public void setStatut_commande(Statut_Commande statut_commande) {
		this.statutcommande = statut_commande;
	}

	public Adresse_Livraison getAdresse_livraison() {
		return adresse_livraison;
	}

	public void setAdresse_livraison(Adresse_Livraison adresse_livraison) {
		this.adresse_livraison = adresse_livraison;
	}

	public Adresse_Facturation getAdresse_facturation() {
		return adresse_facturation;
	}

	public void setAdresse_facturation(Adresse_Facturation adresse_facturation) {
		this.adresse_facturation = adresse_facturation;
	}
	
	
	public List<LigneCommande> getLigneCommandeList() {
		return ligneCommandeList;
	}

	public void setLigneCommandeList(List<LigneCommande> ligneCommandeList) {
		this.ligneCommandeList = ligneCommandeList;
	}

	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	public Commande() {
		
	}

	public Commande(double prix_total, Date date_commande, Statut_Commande status, Utilisateur usr) {
		this.prix_total 	= prix_total; 
		this.datecommande 	= date_commande;
		setStatut_commande(status);
		setUserCommande(usr);
		ligneCommandeList = new ArrayList<LigneCommande>();
	}

	@Override
	public String toString() {
		return "Commande [id=" + id + ", prix_total=" + prix_total + ", datecommande=" + datecommande
				+ ", userCommande=" + userCommande + ", statutcommande=" + statutcommande + "]";
	}
	
	
}
