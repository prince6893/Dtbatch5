package com.niit.TeamServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.TeamService.TeamService;
import com.niit.dao.TeamDao;
import com.niit.model.Team;
@Service
@Transactional
public class TeamServiceImpl implements TeamService{
	 @Autowired
	    private TeamDao teamDAO;
	 
	    public void addTeam(Team team) {
	        teamDAO.addTeam(team);      
	    }
	 
	    public void updateTeam(Team team) {
	        teamDAO.updateTeam(team);
	    }
	 
	    public Team getTeam(int id) {
	        return teamDAO.getTeam(id);
	    }
	 
	    public void deleteTeam(int id) {
	        teamDAO.deleteTeam(id);
	    }
	 
	    public List<Team> getTeams() {
	        return teamDAO.getTeams();
	    }
}
