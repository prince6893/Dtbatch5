package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UsersDAO;
import com.niit.model.Authority;
import com.niit.model.BillingAddress;
import com.niit.model.Cart;
import com.niit.model.ShippingAddress;
import com.niit.model.UserLogin;
import com.niit.model.Users;

@Repository
@Transactional
public class UsersDAOImpl implements UsersDAO{
	
	  public UsersDAOImpl() {
          // TODO Auto-generated constructor stub
}

@Autowired
private SessionFactory sessionFactory;

public UsersDAOImpl(SessionFactory sessionFactory){
         
          this.sessionFactory = sessionFactory;
}

public List<Users> list() {
          @SuppressWarnings("unchecked")
          List<Users> listUsers  = (List<Users>) sessionFactory.getCurrentSession().createQuery("from Users").list();
          return listUsers;
}

public Users get(int id) {
          String hql= "from Users where userid=?";
          Query query=sessionFactory.getCurrentSession().createQuery(hql);
          query.setInteger(0, id);
         
          @SuppressWarnings("unchecked")
          List<Users> listUsers=(List<Users>) query.list();
          if(listUsers!=null && !listUsers.isEmpty()){
                   
                    return listUsers.get(0);
                   
          }
         
          else
          {
                    return null;                      
          }

}

public void delete(int id) {
          Users UsersToDelete=new Users();
          UsersToDelete.setUsersId(id);
          sessionFactory.getCurrentSession().delete(UsersToDelete);
         
}
public void saveOrUpdate(Users users) {
         
          sessionFactory.getCurrentSession().saveOrUpdate(users);
         
}

public Users getUserByName(String username) {
          String hql="from Users where userloginname=:unm";
          Query query=sessionFactory.getCurrentSession().createQuery(hql);
          query.setParameter("unm", username);
         
          @SuppressWarnings("unchecked")
          List<Users> listUsers=(List<Users>) query.list();
          if(listUsers!=null && !listUsers.isEmpty()){
                   
                    return listUsers.get(0);
                   
          }
          else
          {
                    return null;
          }
}

public void addUser(Users user) {
          System.out.println(user.getBillingAddress().getCity());
        BillingAddress billingAddress = user.getBillingAddress();
        ShippingAddress shippingAddress = user.getShippingAddress();
        user.setBillingAddress(billingAddress);
        user.setShippingAddress(shippingAddress);
                    sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);
                    sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
                    //sessionFactory.getCurrentSession().saveOrUpdate(user);
                    System.out.println("inside daoimpl"+user.getUsersId());
                    UserLogin newUser = new UserLogin();
                    newUser.setUsersId(user.getUsersId());
                    newUser.setUsername(user.getUsername());
                    newUser.setPassword(user.getPassword());
                    newUser.setEnabled(true);
                    newUser.setCustomerId(user.getUsersId());
                   
                    Authority authority = new Authority();
                    authority.setUsername(newUser.getUsername());
                    authority.setAuthority("ROLE_USER");
                   
                    sessionFactory.getCurrentSession().saveOrUpdate(newUser);
                    sessionFactory.getCurrentSession().saveOrUpdate(authority);
                   
                    Cart newCart = new Cart();
                    newCart.setUsers(user);
                    user.setCart(newCart);
                    user.setEnabled(true);
                    sessionFactory.getCurrentSession().saveOrUpdate(newCart);
                    sessionFactory.getCurrentSession().saveOrUpdate(user);
                   
                    sessionFactory.getCurrentSession().flush();
                   
         
}

}