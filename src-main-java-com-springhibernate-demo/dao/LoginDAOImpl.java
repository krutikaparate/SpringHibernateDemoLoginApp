package com.springhibernate.demo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import java.util.List;

@Repository("loginDAO")
public class LoginDAOImpl implements LoginDAO{
     
	    private SessionFactory sessionFactory;

       public void setSessionFactory(SessionFactory sessionFactory) {
              this.sessionFactory = sessionFactory;
       }
             
       
       public boolean checkLogin(String userName, String userPassword){
    	   //Session session = sessionFactory.getCurrentSession();
    	   //Session session = this.sessionFactory.getCurrentSession();
			System.out.println("In Check login");
			Session session = this.sessionFactory.openSession();
			boolean userFound = false;
			//Query using Hibernate Query Language
			String SQL_QUERY =" from Users as o where o.userName=? and o.userPassword=?";
			Query query = session.createQuery(SQL_QUERY);
			query.setParameter(0,userName);
			query.setParameter(1,userPassword);
			List list = query.list();

			if ((list != null) && (list.size() > 0)) {
				userFound= true;
			}

			session.close();
			return userFound;              
       }
}
