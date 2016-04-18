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
    
    public void hola(){
        System.out.println("Hola");
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
    
        public void InsertToDB(String table){
            /*
        try {                      
            db.comando = db.conexion.createStatement();
            db.registro = db.comando.executeQuery("INSERT INTO " + table +" (column1,column2,column3,...)\n" +
                                                        "VALUES (value1,value2,value3,...)");

            while (db.registro.next()) {
                
                System.out.println("La tabla: " + table + "contiene ");
                System.out.println("------------------------------------------");
            }
        } catch (SQLException ex) {
            Logger.getLogger(MySQL_Test.class.getName()).log(Level.SEVERE, null, ex);
        }*/
    }

public static void main(String[] args) {
    Queries q = new Queries();
    q.selectFromDB("Registro",1,2);
    
    }
}