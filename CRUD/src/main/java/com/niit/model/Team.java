package com.niit.model;

import javax.persistence.*;
import javax.persistence.Id;

import org.hibernate.annotations.Generated;
import org.springframework.web.multipart.MultipartFile;
@Entity
@Table(name="teams")
@SequenceGenerator(initialValue=123, allocationSize=100, name = "seq")
public class Team {
	 @Id
	    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="seq")
	    //@Column(name="teamid")
	    private Integer id;
	     
	    private String name;
	     
	    private Integer rating;
	    
	 

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public Integer getRating() {
			return rating;
		}

		public void setRating(Integer rating) {
			this.rating = rating;
		}
	    
	    
}
