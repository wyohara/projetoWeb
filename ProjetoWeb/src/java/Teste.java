/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Tutorial : http://forum.codecall.net/topic/72772-integrating-jsp-hibernate-in-an-mvc-application/
 * @author ohara
 */
public class Teste {
         public static void main(String[] args){
        Session session = HibernateUtil.openSession();
        Transaction tx = null;
        Cliente c = null;
        
                tx = session.getTransaction();
                tx.begin();
                 session.close();
     }
}
