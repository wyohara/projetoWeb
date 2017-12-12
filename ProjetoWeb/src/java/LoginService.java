



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
/**
 *
 * @author ohara
 */
public class LoginService {
    
    public boolean authenticate(String pEmail, String pSenha) {
        Session session = HibernateUtil.openSession();
           Transaction tx = null;

         Prestador p = getPrestador(pEmail);		
         if(p!=null && p.getNome().equals(pEmail) && p.getSenha().equals(pSenha)){
                 return true;
         }else{
                 return false;
         }
    }
    public Prestador getPrestador(String pEmail) {
        Session session = HibernateUtil.openSession();
        Transaction tx = null;
        Prestador p = null;

         try {
                 tx = session.getTransaction();
                 tx.begin();
                 Query q;
                 Query query = session.createQuery("from prestador where nome='"+pEmail+"'");
                 p = (Prestador)query.uniqueResult();
                 tx.commit();
         } catch (Exception e) {
                 if (tx != null) {
                         tx.rollback();
                 }
                 e.printStackTrace();
         } finally {
                 session.close();
         }
         return p;
    }
}
