
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ohara
 */
public class ServiceServicos {
    
    public boolean cadastrar(Prestador_Servico ps){
         Session session = HibernateUtil.openSession();
	 Transaction tx = null;	
	 try {
		 tx = session.getTransaction();
		 tx.begin();
		 session.saveOrUpdate(ps);		
		 tx.commit();
	 } catch (Exception e) {
		 if (tx != null) {
			 tx.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }	
	 return true;
    }
    
    public List<Prestador_Servico> getListaServicos(String solicitacao){
	 List<Prestador_Servico> list = new ArrayList<Prestador_Servico>();
	 Session session = HibernateUtil.openSession();
	 Transaction tx = null;	
	 try {
		 tx = session.getTransaction();
		 tx.begin();
		 list = session.createQuery("from "+Prestador_Servico.class.getName()).list();	

                //list = session.createQuery("from "+Prestador_Servico.class.getName()).list();
		tx.commit();
	 } catch (Exception e) {
		 if (tx != null) {
			 tx.rollback();
		 }
		 e.printStackTrace();
	 } finally {
		 session.close();
	 }
	 return list;
    }
}
