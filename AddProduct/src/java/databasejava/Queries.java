/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package databasejava;
import mysql_test.MySQL;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import mysql_test.MySQL_Test;
        
        

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Queries {
    MySQL db = new MySQL();
    
    public Queries(){
        db.MySQLConnect();
    }
    
    public void selectFromDB(String tabla,int registro,int showRow){
        int row=0;
        try {         
            db.comando = db.conexion.createStatement();
            db.registro = db.comando.executeQuery("SELECT * FROM " + tabla);


            while (db.registro.next()) {
                row++;
                if(showRow == row){
                     System.out.println("Tabla: " + tabla +"\nResgistro:"+ db.registro.getString(registro));
                     break;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(MySQL_Test.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
        public void InsertProductToDB(String description,String Price){
        try {         
            db.comando = db.conexion.createStatement();
            int rows = db.comando.executeUpdate(
                    "INSERT INTO `Products` (`ID_Products`, `Description`, `Quantity`, `Price`, `IVA`, `Total`, `IdCategory`, `ID_ProductHistory`) VALUES (NULL, '"+description+"', '1', '"+Price+"', '1', '1', '1', '1')"
            );
        } catch (SQLException ex) {
            Logger.getLogger(MySQL_Test.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

public static void main(String[] args) {
    Queries q = new Queries();
    q.selectFromDB("Registro",1,2);
    
    }
}