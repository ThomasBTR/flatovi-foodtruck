package com.training.flatovifoodtruck.Entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Future;
import javax.validation.constraints.Size;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import javax.persistence.GeneratedValue;

@Entity
@ApiModel(description="Toutes les informations concernant les actualités")
public class Actualite {
	
	@Id
	@GeneratedValue
	private Integer Id;
	
	@ApiModelProperty(notes="La longueur du title doit être supérieure à 5 ", 
			example="Lune d'art")
	@Size(min=5, message="La longueur du title doit être supérieure à 5 ")
	private String Title;
	
	private String Description;
	private String ImageURL;
	private Date Date_de_creation ;
	
	@ApiModelProperty(notes="La date de validité doit être une date dans le future")
	@Future(message="La date de validité doit être une date dans le future")
	private Date Date_de_validite;
	private Integer Utilisateur_creation;

	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getImageURL() {
		return ImageURL;
	}
	public void setImageURL(String imageURL) {
		ImageURL = imageURL;
	}
	public Date getDate_de_creation() {
		return Date_de_creation;
	}
	public void setDate_de_creation(Date date_de_creation) {
		Date_de_creation = date_de_creation;
	}
	public Date getDate_de_validite() {
		return Date_de_validite;
	}
	public void setDate_de_validite(Date date_de_validite) {
		Date_de_validite = date_de_validite;
	}
	public Integer getUtilisateur_creation() {
		return Utilisateur_creation;
	}
	public void setUtilisateur_creation(Integer utilisateur_creation) {
		Utilisateur_creation = utilisateur_creation;
	}
	public Actualite(Integer id, String title, String description, String imageURL, Date date_de_creation,
			Date date_de_validite, Integer utilisateur_creation) {
		super();
		Id = id;
		Title = title;
		Description = description;
		ImageURL = imageURL;
		Date_de_creation = date_de_creation;
		Date_de_validite = date_de_validite;
		Utilisateur_creation = utilisateur_creation;
	}
	
	public Actualite() {
		
	}
	@Override
	public String toString() {
		return "Actualite [Id=" + Id + ", Title=" + Title + ", Description=" + Description + ", ImageURL=" + ImageURL
				+ ", Date_de_creation=" + Date_de_creation + ", Date_de_validite=" + Date_de_validite
				+ ", Utilisateur_creation=" + Utilisateur_creation + "]";
	}
	
	
	
	
	
	
}
