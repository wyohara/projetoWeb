

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.SessionFactory;
import org.hibernate.Session;


/**
 * Hibernate Utility class with a convenient method to get Session Factory
 * object.
 *
 * @author ohara
 */
public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
             try {
                     sessionFactory = new AnnotationConfiguration().configure("hibernate.cfg.xml").buildSessionFactory();
             } catch (Throwable ex) {
                     System.err.println("Initial SessionFactory creation failed." + ex);
                     throw new ExceptionInInitializerError(ex);
             }
    }

    public static Session openSession() {
             return sessionFactory.openSession();
    }
}
