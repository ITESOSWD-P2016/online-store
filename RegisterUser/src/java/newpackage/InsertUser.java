/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import mysql_test.MySQL;
/**
 *
 * @author alexabeas
 */
public class InsertUser {
    
    public void insertUser(String un, String em, String pass)
    {
        try {
            MySQL db = new MySQL();
            db.MySQLConnect();

            /* Se establece el nombre de la base de datos que contiene 
             la información que se quiere consultar
             */
            String NombreDB = "User";
            
             /* Se establece la consulta que se desea hacer.
            Select se encargará de seleccionar todos los datos
            (representado por *) desde (FROM) la base de datos
            llamada "Registro"
             */
            
            String Query = "INSERT INTO `" + NombreDB + "` (`UserName`, `Email`, `Password`) VALUES ('"+ un + "', '"+ em +"', '"+ pass +"')";           
            
            /* Se crea una declaración y se establece el Query que se
            desea ejecutar
             */
            
            db.comando = db.conexion.createStatement();
            int r = db.comando.executeUpdate(Query);
            //modifique registro, la hice publica para que la clase pueda acceder a ella

            /* Se imprimen los registros que estén guardados en 
            la base de datos
             */
            
        } catch (SQLException ex) {
            Logger.getLogger(InsertUser.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
