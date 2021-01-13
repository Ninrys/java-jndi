/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.modelo.controlador;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.transaction.UserTransaction;

/**
 *
 * @author Ninry
 */
class JpaUtil {
    
    private static EntityManagerFactory emf;
    private static UserTransaction utx;
    static 
    {
        try {
            emf=Persistence.createEntityManagerFactory("ProyectoBDServletJNDI_V4PU");
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }
    static{
        try {
            Context context = new InitialContext();
            if(utx==null){
                utx= (UserTransaction)context.lookup("java:comp/UserTransaction");
            }
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    public static EntityManagerFactory getEntityManagerFactory() {
        return emf;
    }

    public static UserTransaction getUserTransaction() {
        return utx;
    }
    
}
