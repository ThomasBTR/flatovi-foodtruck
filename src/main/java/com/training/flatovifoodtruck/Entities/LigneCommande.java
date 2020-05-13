package com.training.flatovifoodtruck.Entities;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@NamedQueries({
	@NamedQuery(name="LigneCommande.findAll", query = "from LigneCommande"),
	@NamedQuery(name="LigneCommande.findById", query = "from LigneCommande where id = :myID")
})
public class LigneCommande {
	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(nullable = false, name = "id_ligneCommande")
	private Integer id;
	private Integer quantite;
	private double prix_unitaire;
	private String repasLibelle;
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name="id_commande")
	private Commande commande;

	@OneToOne
	@JoinColumn(
		name= "id_produit",
		referencedColumnName="id_produit"
	)
	private Produit produit;
	
	/*********************************************************************
	 * Gettes / Setters
	 *********************************************************************/
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getQuantite() {
		return quantite;
	}

	public void setQuantite(Integer quantite) {
		this.quantite = quantite;
	}

	public double getPrix_unitaire() {
		return prix_unitaire;
	}

	public void setPrix_unitaire(double prix_unitaire) {
		this.prix_unitaire = prix_unitaire;
	}

	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	public Produit getProduit() {
		return produit;
	}

	public void setProduit(Produit produit) {
		this.produit = produit;
	}
	
	public String getRepasLibelle() {
		return repasLibelle;
	}

	public void setRepasLibelle(String repasLibelle) {
		this.repasLibelle = repasLibelle;
	}


	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	
	public LigneCommande() {
		
	}

	public LigneCommande( Integer quantite,double prix_unitaire, Produit produit, String repasLibelle, Commande commande ) {
		this.quantite 		= quantite;
		this.prix_unitaire 	= prix_unitaire	;
		setProduit(produit);
		setRepasLibelle(repasLibelle);
		setCommande(commande);
	}
}
