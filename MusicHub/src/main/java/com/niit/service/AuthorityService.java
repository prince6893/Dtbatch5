package com.niit.service;

import java.util.List;

import com.niit.model.Authority;

public interface AuthorityService {
	public void addAuthority(Authority authority);
	public void deleteAuthority(Authority authority);
	public Authority getAuthorityById(int authoritiesId);
	public void editAuthority(Authority authority); 
	public List getAllAuthority();
}
