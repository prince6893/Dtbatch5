package com.niit.model;

import java.io.Serializable;

import javax.persistence.*;
@Entity
public class Authority implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1243670809452674726L;
	@Id
	 @GeneratedValue
	    private int authoritiesId;
	    private String username;
	    private String authority;

	    public int getAuthoritiesId() {
	        return authoritiesId;
	    }

	    public void setAuthoritiesId(int authoritiesId) {
	        this.authoritiesId = authoritiesId;
	    }

	    public String getUsername() {
	        return username;
	    }

	    public void setUsername(String username) {
	        this.username = username;
	    }

	    public String getAuthority() {
	        return authority;
	    }

	    public void setAuthority(String authority) {
	        this.authority = authority;
	    }
			
		


}
