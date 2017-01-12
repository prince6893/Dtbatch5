package com.niit.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.AuthorityDAO;
import com.niit.model.Authority;
import com.niit.service.AuthorityService;

@Service
@Transactional
public class AuthorityServiceImpl implements AuthorityService{
@Autowired
private AuthorityDAO authorityDAO;
	public void addAuthority(Authority authority) {
		authorityDAO.addAuthority(authority);		
	}

	public void deleteAuthority(Authority authority) {
		// TODO Auto-generated method stub
		authorityDAO.deleteAuthority(authority);
	}

	public Authority getAuthorityById(int authoritiesId) {
		// TODO Auto-generated method stub
		return authorityDAO.getAuthorityById(authoritiesId);
	}

	public void editAuthority(Authority authority) {
		authorityDAO.editAuthority(authority);		
	}

	public List getAllAuthority() {
		// TODO Auto-generated method stub
		return authorityDAO.getAllAuthority();
	}

}
