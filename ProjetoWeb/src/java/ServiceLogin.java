



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
/**
 *
 * @author ohara
 */
public class ServiceLogin {
    
    public boolean autentificar(String pEmail, String pSenha) {
        Session session = HibernateUtil.openSession();
        Transaction tx = null;

        Prestador p = getPrestador(pEmail);		
        if(p!=null && p.getEmail().equals(pEmail) && p.getSenha().equals(pSenha)){
                return true;
        }else{
                return false;
        }
    }
    
    public Prestador getPrestador(String pEmail) {
        Session session = HibernateUtil.openSession();
        Transaction tx = null;
        Prestador p = null;
        String hql = "from "+ Prestador.class.getName() + " where email = '"+pEmail+"'";
        List l = session.createQuery(hql).list();
        
        Iterator it = l.iterator();
        
        while(it.hasNext())  {
            return (Prestador)it.next();
        }
        
        return null;
    }
}
