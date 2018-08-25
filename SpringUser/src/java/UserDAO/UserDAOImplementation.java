/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UserDAO;

import java.util.ArrayList;
import java.util.List;
import model.HibernateUtil;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Component;

/**
 *
 * @author USER
 */
@Component
public class UserDAOImplementation implements UserDAOInterface{

    @Override
    public void registrateUser(User u) {
         Session s = HibernateUtil.getSessionFactory().openSession();
       Transaction tx = null;
       try{
           tx = s.beginTransaction();
           s.saveOrUpdate(u);
           tx.commit();
       }catch(Exception ex){
           if(tx != null){
               tx.rollback();
           }
           ex.printStackTrace();
       }finally{
           s.close();
       }
    }

    @Override
    public List<User> userList() {
         Session s = HibernateUtil.getSessionFactory().openSession();
       Transaction tx = null;
       Criteria c = s.createCriteria(User.class);
       List<User>userlist = new ArrayList<User>();
       try{
           tx = s.beginTransaction();
           userlist = c.list();
           tx.commit();
       }catch(Exception ex){
           if(tx != null){
               tx.rollback();
           }
           ex.printStackTrace();
       }finally{
           s.close();
       }
       return userlist;
    }

    @Override
    public User updateUser(int id) {
       Session s = HibernateUtil.getSessionFactory().openSession();
       Transaction tx = null;
       User user = null;
       try{
           tx = s.beginTransaction();
           user = (User)s.get(User.class, id);
           tx.commit();
       }catch(Exception ex){
           if(tx != null){
               tx.rollback();
           }
           ex.printStackTrace();
       }finally{
           s.close();
       }
       return user;
    }

    @Override
    public void deleteUser(int id) {
       Session s = HibernateUtil.getSessionFactory().openSession();
       Transaction tx = null;
       User user = null;
       try{
           tx = s.beginTransaction();
           user = (User)s.get(User.class, id);
           s.delete(user);
           tx.commit();
       }catch(Exception ex){
           if(tx != null){
               tx.rollback();
           }
           ex.printStackTrace();
       }finally{
           s.close();
       }
    }

   
    
}
