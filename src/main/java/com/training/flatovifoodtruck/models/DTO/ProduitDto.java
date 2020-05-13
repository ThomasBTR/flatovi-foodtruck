package com.training.flatovifoodtruck.models.DTO;

//import com.example.demo.Helper.HelperMethod;

public class ProduitDto implements Dto {
	/**
	 * 
	 */
	private static final long serialVersionUID = 5019031606286414549L;
	private Integer id;
	private String libellecommercial;
	private String libelletechnique;
	private String description;
	private Integer stock_dispo;
	private double prix_unitaire;
	private String image;
	private String disponibilite;
	private Boolean isenable;
	private String JoursDeDisponibilite="";
	private Integer statutDispo;
	private Integer quantite;
	
	public Integer getStatutDispo() {
		return statutDispo;
	}


	public void setStatutDispo(Integer statutDispo) {
		this.statutDispo = statutDispo;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}

	public String getLibellecommercial() {
		return libellecommercial;
	}


	public void setLibellecommercial(String libellecommercial) {
		this.libellecommercial = libellecommercial;
	}


	public String getLibelletechnique() {
		return libelletechnique;
	}


	public void setLibelletechnique(String libelletechnique) {
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

	
	public Integer getQuantite() {
		return quantite;
	}


	public void setQuantite(Integer quantite) {
		this.quantite = quantite;
	}


//	public String getJoursDeDisponibilite() {
//		String[] dataBaseDays = disponibilite.split(",");
//		for (int i = 0; i < dataBaseDays.length; i++) {
//			JoursDeDisponibilite += (i==0) ? HelperMethod.GetDayOfWeek(Integer.parseInt(dataBaseDays[i])) : ", " + HelperMethod.GetDayOfWeek(Integer.parseInt(dataBaseDays[i]));
//		}
//		return JoursDeDisponibilite;
//	}


	public void setJoursDeDisponibilite(String joursDeDisponibilite) {
		JoursDeDisponibilite = joursDeDisponibilite;
	}


	public ProduitDto(Integer id, String libellecommercial, String libelletechnique, String description,
			Integer stock_dispo, double prix_unitaire, String image, String disponibilite, Boolean isenable, Integer statutDispo, Integer quantity) {
		setId(id);
		setLibellecommercial(libellecommercial);
		setLibelletechnique(libelletechnique);
		setDescription(description);
		setStock_dispo(stock_dispo);
		setPrix_unitaire(prix_unitaire);
		setImage(image);
		setDisponibilite(disponibilite);
		setIsenable(isenable);
		setStatutDispo(statutDispo);
		setQuantite(quantity);
	}
	
	public ProduitDto(Integer id) {
		setId(id);
	}
	

}
