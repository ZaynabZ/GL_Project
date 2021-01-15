package com.projet.sports.entity;

public class Addresse {
	
	private int id;
	private String streetName;
	private String city;
	private String zipCode;
	private String country;

	public Addresse() {
		
	}
	
	public Addresse(int _id, String _streetName, String _city, String _zipCode, String _country) {
		
		this.id = _id;
		this.streetName = _streetName;
		this.city = _city;
		this.zipCode = _zipCode;
		this.country = _country;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
	
}
