package com.training.flatovifoodtruck.models;

import javax.persistence.*;

@Entity
@NamedQueries({
	@NamedQuery(name="Societe.findAll", query = "from Societe"),
	@NamedQuery(name="Societe.findById", query = "from Societe where id = :myID")
})
public class Societe {
	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(nullable = false, name = "id_societe")
	private Integer id;
	private String nom_societe;
	private Integer num_rue;
	private String rue;
	

	private String code_postal;
	private String ville;
	private String pays;
	private String num_siret;
	private String num_siren;

	
	/*********************************************************************
	 * Gettes / Setters
	 *********************************************************************/
	
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}

	public String getNom_societe() {
		return nom_societe;
	}

	public void setNom_societe(String nom_societe) {
		this.nom_societe = nom_societe;
	}

	public Integer getNum_rue() {
		return num_rue;
	}


	public void setNum_rue(Integer num_rue) {
		this.num_rue = num_rue;
	}


	public String getRue() {
		return rue;
	}


	public void setRue(String rue) {
		this.rue = rue;
	}


	public String getCode_postal() {
		return code_postal;
	}


	public void setCode_postal(String code_postal) {
		this.code_postal = code_postal;
	}


	public String getVille() {
		return ville;
	}


	public void setVille(String ville) {
		this.ville = ville;
	}


	public String getPays() {
		return pays;
	}


	public void setPays(String pays) {
		this.pays = pays;
	}


	public String getNum_siret() {
		return num_siret;
	}


	public void setNum_siret(String num_siret) {
		this.num_siret = num_siret;
	}


	public String getNum_siren() {
		return num_siren;
	}


	public void setNum_siren(String num_siren) {
		this.num_siren = num_siren;
	}

	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	
	public Societe() {
		
	}

	public Societe( String nom_societe,Integer num_rue,String rue, String code_postal, String ville, String pays, String num_siret, String num_siren) {
		this.nom_societe= nom_societe;
		this.num_rue 	= num_rue;
		this.rue 		= rue;
		this.code_postal= code_postal;
		this.ville 		= ville;
		this.pays		= pays;
		this.num_siret	= num_siret;
		this.num_siren	= num_siren;
	}
}
