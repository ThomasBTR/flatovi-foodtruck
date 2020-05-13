package com.training.flatovifoodtruck.Entities;

import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * @author godwinavodagbe
 *
 */
@Entity
@NamedQueries({
	@NamedQuery(name = "Famille_Repas.findAll", query = "from Famille_Repas"),
	@NamedQuery(name = "Famille_Repas.findById", query = "from Famille_Repas where id = :myID")
}) 
public class Famille_Repas {
	
	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_famille_repas")
	private Integer id;
	@Column(name = "libelle")
	private String libelle; 
	private boolean isenabled;
	@JsonIgnore
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(
			joinColumns=@JoinColumn(name="id_famille_repas"),
			inverseJoinColumns=@JoinColumn(name="id_repas")
	)
	private List<Repas> repas;
	@JsonIgnore
	@OneToMany(mappedBy="famille_repas",cascade = {CascadeType.REMOVE})
	private List<Produit> produitList;
	private String imageURL;
	
	

	/*********************************************************************
	 * Gettes / Setters
	 *********************************************************************/
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public boolean isIsenabled() {
		return isenabled;
	}

	public void setIsenabled(boolean isenabled) {
		this.isenabled = isenabled;
	}

	public List<Repas> getRepas() {
		return repas;
	}

	public void setRepas(List<Repas> repas) {
		this.repas = repas;
	}
	

	public List<Produit> getProduitList() {
		return produitList;
	}

	public void setProduitList(List<Produit> produitList) {
		this.produitList = produitList;
	}
	
	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
	
	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	public Famille_Repas() {
		
	}
	
	public Famille_Repas (String libelle, boolean isenabled) {
		this.libelle 	= libelle;
		this.isenabled 	= isenabled;
	}
	
}
