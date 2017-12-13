
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
public class ServiceCadastro {
    
    public boolean cadastrar(Prestador p){
         Session session = HibernateUtil.openSession();
	 if(prestadorExiste(p)) return false;	
	
	 Transaction tx = null;	
	 try {
		 tx = session.getTransaction();
		 tx.begin();
		 session.saveOrUpdate(p);		
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
    
    public boolean prestadorExiste(Prestador p){
        Session session = HibernateUtil.openSession();
        boolean result = false;
        Transaction tx = null;
	 try{
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from "+Prestador.class.getName()+" where email='"+p.getEmail()+"'");
            Prestador pAchado = (Prestador)query.uniqueResult();
            tx.commit();
            if(pAchado!=null) result = true;
	 }catch(Exception ex){
		 if(tx!=null){
			 tx.rollback();
		 }
	 }finally{
		 session.close();
	 }
	 return result;
    }
}
