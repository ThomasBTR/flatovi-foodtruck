package com.training.flatovifoodtruck.Entities;

import javax.persistence.*;


@Entity
@NamedQueries({
	@NamedQuery(name="Statut_Commande.findAll", query = "from Statut_Commande"),
	@NamedQuery(name="Statut_Commande.findById", query = "from Statut_Commande where id = :myID")
})
public class Statut_Commande {
	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(nullable = false, name = "id_statut_commande")
	private Integer id;
	private String libelle_statut_commande;
	
	/*********************************************************************
	 * Gettes / Setters
	 *********************************************************************/
	public Statut_Commande( String libelle_statut_commande) {
		this.libelle_statut_commande = libelle_statut_commande;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLibelle_statut_commande() {
		return libelle_statut_commande;
	}
	
	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	public Statut_Commande() {
		
	}

	public void setLibelle_statut_commande(String libelle_statut_commande) {
		this.libelle_statut_commande = libelle_statut_commande;
	}
	
}
