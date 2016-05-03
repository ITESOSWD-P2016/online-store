/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mysql_test;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sebastian
 */
public class MySQL_Test {


public static void main(String[] args) {
        try {
            MySQL db = new MySQL();
            db.MySQLConnect();

            /* Se establece el nombre de la base de datos que contiene 
             la información que se quiere consultar
             */
            String NombreDB = "Registro";
            
             /* Se establece la consulta que se desea hacer.
            Select se encargará de seleccionar todos los datos
            (representado por *) desde (FROM) la base de datos
            llamada "Registro"
             */
            
            String Query = "SELECT * FROM " + NombreDB;
            
            
            /* Se crea una declaración y se establece el Query que se
            desea ejecutar
             */
            
            db.comando = db.conexion.createStatement();
            db.registro = db.comando.executeQuery(Query);

            /* Se imprimen los registros que estén guardados en 
            la base de datos
             */
            while (db.registro.next()) {
                
                System.out.println("Nombre: " + db.registro.getString(1) + 
                        "\nApellido: " + db.registro.getString(2) +
                        "\nEmail: " + db.registro.getString(3));
                
                System.out.println("------------------------------------------");
            }
        } catch (SQLException ex) {
            Logger.getLogger(MySQL_Test.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}