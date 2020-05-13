package com.training.flatovifoodtruck.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@NamedQueries({
	@NamedQuery(name="Profil.findAll", query = "from Profil"),
	@NamedQuery(name="Profil.findById", query = "from Profil where id = :myID")
})
public class Profil {
	
	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(nullable = false, name = "id_profil")
	private Integer id;
	private String libelle;
	
	@JsonIgnore
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(
			joinColumns=@JoinColumn(name="id_profil"),
			inverseJoinColumns=@JoinColumn(name="id_utilisateur")
	)
	private List<Utilisateur> utilisateur;
	
	
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
	public List<Utilisateur> getUtilisateur() {
		return utilisateur;
	}
	public void setUtilisateur(List<Utilisateur> utilisateur) {
		this.utilisateur = utilisateur;
	}
	
	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	
	public Profil() {
		
	}

}
