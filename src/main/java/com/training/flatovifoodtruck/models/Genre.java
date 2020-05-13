package com.training.flatovifoodtruck.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
	@NamedQuery(name="Genre.findAll", query = "from Genre"),
	@NamedQuery(name="Genre.findById", query = "from Genre where id = :myID")
})
public class Genre {
	
	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(nullable = false, name = "id_genre")
	private Integer id;
	private String libelle;
	
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
	
	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	
	public Genre() {
		
	}

	public Genre( String libelle_genre) {
		this.libelle = libelle_genre;
	}
	

}
