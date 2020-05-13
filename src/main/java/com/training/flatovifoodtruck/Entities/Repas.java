package com.training.flatovifoodtruck.Entities;

import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@NamedQueries({
	@NamedQuery(name = "Repas.findAll", query = "from Repas"),
	@NamedQuery(name = "Repas.findById", query = "from Repas where id = :myID")
})
public class Repas {
	
	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(nullable = false, name = "id_repas")
	private Integer id;
	//@Basic(fetch = FetchType.LAZY, optional = true)
	@Column(name = "libelle")
	private String libelle;
	@Temporal(TemporalType.TIME)
	private java.util.Date heure_limite;
	private boolean isenabled; 
	@JsonIgnore
	@ManyToMany(mappedBy = "repas", cascade = CascadeType.PERSIST)
	private List<Famille_Repas> famille_repas;
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

	public java.util.Date getHeure_limite() {
		return heure_limite;
	}

	public void setHeure_limite(java.util.Date heure_limite) {
		this.heure_limite = heure_limite;
	}

	public boolean isIsenabled() {
		return isenabled;
	}

	public void setIsenabled(boolean isenabled) {
		this.isenabled = isenabled;
	}

	public List<Famille_Repas> getFamille_repas() {
		return famille_repas;
	}

	public void setFamille_repas(List<Famille_Repas> famille_repas) {
		this.famille_repas = famille_repas;
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
	
	public Repas() {
		
	}
	
	public Repas(String libelle, java.util.Date heure_limite, boolean isenabled) {
		this.libelle 	= libelle;
		this.heure_limite 	= heure_limite;
		this.isenabled		= isenabled;
	}
}
