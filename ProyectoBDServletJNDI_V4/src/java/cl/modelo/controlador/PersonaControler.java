/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.modelo.controlador;

import cl.modelo.dto.PersonaDTO;
import cl.modelo.jpa.constructores.PersonaJpaController;
import cl.modelo.jpa.entidades.Persona;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.transaction.UserTransaction;


/**
 *
 * @author Ninry
 */
public class PersonaControler implements Serializable{
    private EntityManagerFactory emf;
    private PersonaJpaController personaControl;
    private UserTransaction utx;
    
    public PersonaControler(){
        this.emf=JpaUtil.getEntityManagerFactory();
        this.utx=JpaUtil.getUserTransaction();
        personaControl=new PersonaJpaController(utx, this.emf);
   
    }
    public List<Persona> buscarPersonas(){
        return (List<Persona>) personaControl.findPersonaEntities();
    }
    
    public void eliminarPersonas (PersonaDTO p){
        try {
            
            personaControl.destroy(p.getId());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
    }
    public Persona buscarPersona(PersonaDTO p){
        Persona p1=null;
        try {
            p1= personaControl.findPersona(p.getId());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p1;
    }
    public void actualizarPersona(PersonaDTO p){
        try { 
            Persona p1= new Persona(p.getId());
            p1.setNombre((p.getNombre()));
            p1.setApellido(p.getApellido());
            p1.setEdad(p.getEdad());
            p1.setSexo(p.getSexo().charAt(0)+"");
            personaControl.edit(p1);
        } catch (Exception t) {
            t.printStackTrace();
        }
    }
    public void guardarPersonas(PersonaDTO p){
        try {
            Persona p1=new Persona();
            p1.setNombre(p.getNombre());
            p1.setApellido(p.getApellido());
            if(p.getEdad()!=0){
                p1.setEdad(p.getEdad());
            }
            if(p.getSexo()!=null){
                Character a = p.getSexo().charAt(0);
                p1.setSexo(a+"");
            }
            personaControl.create(p1);  
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
