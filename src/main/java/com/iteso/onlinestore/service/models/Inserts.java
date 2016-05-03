package com.iteso.onlinestore.service.models;

import java.util.List;
import java.util.Date;
import java.util.Iterator;

import com.iteso.onlinestore.service.pojos.Registro;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
/**
 * Created by luis_ on 03/05/2016.
 */
public class Inserts {
    private static SessionFactory factory;

    /* Method to CREATE an employee in the database */
    public Integer addRegistro(String nombre, String apellido, String email){
        Session session = factory.openSession();
        Transaction tx = null;
        try{
            tx = session.beginTransaction();
            Registro registro = new Registro(nombre, apellido, email);
            session.save(registro);
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
        }
        return 0;
    }
}
