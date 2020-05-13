package com.training.flatovifoodtruck.models;

import java.util.Calendar;

import javax.persistence.*;

@Entity
@NamedQueries({
	@NamedQuery(name="Commentaire.findAll", query = "from Commentaire"),
	@NamedQuery(name="Commentaire.findById", query = "from Commentaire where id = :myID")
})
public class Commentaire {
	/*********************************************************************
	 * Properties
	 *********************************************************************/
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(nullable = false, name = "id_commentaire")
	private Integer id;
	private String commentaire;
	private double note;
	@Temporal(TemporalType.DATE)
	private Calendar date_commentaire;
	@OneToOne 
	@JoinColumn(
				name= "id_ligneCommande",
				referencedColumnName="id_ligneCommande"
			)
	private LigneCommande ligneCommande;
	
	
	/*********************************************************************
	 * Gettes / Setters
	 *********************************************************************/
	
	public String getCommentaire() {
		return commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

	public double getNote() {
		return note;
	}

	public void setNote(double note) {
		this.note = note;
	}

	public Calendar getDate_commentaire() {
		return date_commentaire;
	}

	public void setDate_commentaire(Calendar date_commentaire) {
		this.date_commentaire = date_commentaire;
	}
	
	public LigneCommande getLigneCommande() {
		return ligneCommande;
	}

	public void setLigneCommande(LigneCommande ligneCommande) {
		this.ligneCommande = ligneCommande;
	}

	/*********************************************************************
	 * Constructors
	 *********************************************************************/
	
	public Commentaire() {
		
	}

	public Commentaire( String commentaire, double note, Calendar date_commentaire) {
		this.commentaire 		= commentaire;
		this.note 				= note;
		this.date_commentaire	= date_commentaire;
	}
	

}
