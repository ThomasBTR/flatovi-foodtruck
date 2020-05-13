package com.training.flatovifoodtruck.models;

public class Adresse {
	private Integer Id_Adresse;
	private String Numero_Rue;
	private String Rue;
	private String Code_Postal;
	private String Ville;
	private String Pays;
	private String TypeAdresse;
	private boolean Actif;
	private Utilisateur Utilisateur;
	public Integer getId_Adresse() {
		return Id_Adresse;
	}
	public void setId_Adresse(Integer id_Adresse) {
		Id_Adresse = id_Adresse;
	}
	public String getNumero_Rue() {
		return Numero_Rue;
	}
	public void setNumero_Rue(String numero_Rue) {
		Numero_Rue = numero_Rue;
	}
	public String getRue() {
		return Rue;
	}
	public void setRue(String rue) {
		Rue = rue;
	}
	public String getCode_Postal() {
		return Code_Postal;
	}
	public void setCode_Postal(String code_Postal) {
		Code_Postal = code_Postal;
	}
	public String getVille() {
		return Ville;
	}
	public void setVille(String ville) {
		Ville = ville;
	}
	public String getPays() {
		return Pays;
	}
	public void setPays(String pays) {
		Pays = pays;
	}
	public String getTypeAdresse() {
		return TypeAdresse;
	}
	public void setTypeAdresse(String typeAdresse) {
		TypeAdresse = typeAdresse;
	}
	public boolean isActif() {
		return Actif;
	}
	public void setActif(boolean actif) {
		Actif = actif;
	}
	public Utilisateur getUtilisateur() {
		return Utilisateur;
	}
	
	public void setUtilisateur(Utilisateur utilisateur) {
		Utilisateur = utilisateur;
	}
	
	public Adresse() {
		super();
	}
	
	public Adresse(Integer id_Adresse, String numero_Rue, String rue, String code_Postal, String ville, String pays,
			String typeAdresse, boolean actif, Utilisateur utilisateur) {
		super();
		Id_Adresse = id_Adresse;
		Numero_Rue = numero_Rue;
		Rue = rue;
		Code_Postal = code_Postal;
		Ville = ville;
		Pays = pays;
		TypeAdresse = typeAdresse;
		Actif = actif;
		Utilisateur = utilisateur;
	}
	@Override
	public String toString() {
		return "Adresse [Id_Adresse=" + Id_Adresse + ", Numero_Rue=" + Numero_Rue + ", Rue=" + Rue + ", Code_Postal="
				+ Code_Postal + ", Ville=" + Ville + ", Pays=" + Pays + ", TypeAdresse=" + TypeAdresse + ", Actif="
				+ Actif + ", Utilisateur=" + Utilisateur.toString() + "]";
	}
	
}
