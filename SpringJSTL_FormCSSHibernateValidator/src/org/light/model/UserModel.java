package org.light.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.Size;


public class UserModel {

	
	//will be used  @Size annotation to make sure that the name have min 5 letters max 10 letters! Comming from Hibernate Engine Validator dependency!
	
	
	@Size(min=3,max=10,message="Enter the name between 3 to 10 characters")
	private String name;
	
	
	
	private String gender;
	private String country;
	@Email(message = "Introduce email!")
	private String introduction;
	private String [] visited;
	
	
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String[] getVisited() {
		return visited;
	}
	public void setVisited(String[] visited) {
		this.visited = visited;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}			
	public String getName() {
		return name;
	}
	public String getGender() {
		return gender;
	}


}
