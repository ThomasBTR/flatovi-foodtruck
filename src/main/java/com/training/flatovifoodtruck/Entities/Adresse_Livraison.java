package com.training.flatovifoodtruck.Entities;

import javax.persistence.*;


@Entity
@NamedQueries({
	@NamedQuery(name="Adresse_Livraison.findAll", query = "from Adresse_Livraison"),
	@NamedQuery(name="Adresse_Livraison.findById", query = "from Adresse_Livraison where id = :myID")
})
public class Adresse_Livraison {
	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(nullable = false, name = "id_adresse_livraison")
	private Integer id;
	private Integer num_rue;
	private String rue;
	private String code_postal;
	private String ville;
	private String pays;
	private Boolean isenable;
	@ManyToOne
	@JoinColumn(name="id_utilisateur")
	private Utilisateur user;

	
	/*********************************************************************
	 * Gettes / Setters
	 *********************************************************************/
	
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
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


	public Boolean getIsenable() {
		return isenable;
	}


	public void setIsenable(Boolean isenable) {
		this.isenable = isenable;
	}


	public Utilisateur getUser() {
		return user;
	}


	public void setUser(Utilisateur user) {
		this.user = user;
	}


	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	
	public Adresse_Livraison() {
		
	}

	public Adresse_Livraison( Integer num_rue,String rue, String code_postal, String ville, String pays, Boolean isenable) {
		this.num_rue 	= num_rue;
		this.rue 		= rue;
		this.code_postal= code_postal;
		this.ville 		= ville;
		this.pays		= pays;
		this.isenable	= isenable;
	}
	

}
