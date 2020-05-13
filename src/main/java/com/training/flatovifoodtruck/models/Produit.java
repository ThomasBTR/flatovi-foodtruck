package com.training.flatovifoodtruck.models;

import javax.persistence.*;




@Entity
@NamedQueries({
	@NamedQuery(name="Produit.findAll", query = "from Produit"),
	@NamedQuery(name="Produit.findById", query = "from Produit where id = :myID")
})

public class Produit {
	
	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY) 
	@Column(nullable = false, name = "id_produit")
	private Integer id;
	private String libellecommercial;
	private String libelletechnique;
	@Column(columnDefinition = "text")
	private String description;
	private Integer stock_dispo;
	private double prix_unitaire;
	private String image;
	private String disponibilite;
	private Boolean isenable;
	@ManyToOne
	@JoinColumn(name="id_famille_repas")
	private Famille_Repas famille_repas;
	
	/*********************************************************************
	 * Gettes / Setters
	 *********************************************************************/
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		System.out.println("Enter setId");
		this.id = id;
	}

	public String getLibellecommercial() {
		return libellecommercial;
	}

	public void setLibelle_commercial(String libellecommercial) {
		this.libellecommercial = libellecommercial;
	}

	public String getLibelle_technique() {
		return libelletechnique;
	}

	public void setLibelle_technique(String libelletechnique) {
		this.libelletechnique = libelletechnique;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getStock_dispo() {
		return stock_dispo;
	}

	public void setStock_dispo(Integer stock_dispo) {
		this.stock_dispo = stock_dispo;
	}

	public double getPrix_unitaire() {
		return prix_unitaire;
	}

	public void setPrix_unitaire(double prix_unitaire) {
		this.prix_unitaire = prix_unitaire;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDisponibilite() {
		return disponibilite;
	}

	public void setDisponibilite(String disponibilite) {
		this.disponibilite = disponibilite;
	}

	public Boolean getIsenable() {
		return isenable;
	}

	public void setIsenable(Boolean isenable) {
		this.isenable = isenable;
	}

	public Famille_Repas getFamille_repas() {
		return famille_repas;
	}

	public void setFamille_repas(Famille_Repas famille_repas) {
		this.famille_repas = famille_repas;
	}


	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	
	public Produit() {
		
	}

	public Produit( String libellecommercial, String libelletechnique, String description, Integer stock_dispo, double prix_unitaire, String image, String disponibilite,Boolean isenable) {
		this.libellecommercial = libellecommercial;
		this.libelletechnique 	= libelletechnique;
		this.description		= description;
		this.stock_dispo 		= stock_dispo;
		this.prix_unitaire		= prix_unitaire;
		this.image				= image;
		this.disponibilite		= disponibilite;
		this.isenable			= isenable;
	}
	

}
