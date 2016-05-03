package newpackage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import mysql_test.MySQL;

/**
 *
 * @author alexabeas
 */
public class ProductHandler {
    
    public String Product = null;
    public String ProductHistid=null;
    public MySQL db;
    
    
    public ProductHandler(String p)
    {
        Product = p;
        db = new MySQL();
        db.MySQLConnect();
        try {
            db.comando = db.conexion.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(ProductHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean findProduct(){
        try {
            String Query = "SELECT * FROM Products";
            String productoi =null;
            db.registro = db.comando.executeQuery(Query);
            while (db.registro.next()) {
                productoi = db.registro.getString(2);
                if(productoi.contentEquals(this.Product))
                {
                    this.ProductHistid=db.registro.getString(7);
                    return true;
                }
                    
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public int updateStock(int s){
        String Query= "UPDATE `Products` SET `Quantity`=" + s + " WHERE `Description`='"+ Product +"'";
        try {
            return db.comando.executeUpdate(Query);
        } catch (SQLException ex) {
            Logger.getLogger(ProductHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
    public int addStock(int s){
        //agregar a la ya existente
        String Query= "UPDATE `Products` SET `Quantity`=`Quantity`+" + s + " WHERE `Description`='"+ Product +"'";
        try {
            return db.comando.executeUpdate(Query);
        } catch (SQLException ex) {
            Logger.getLogger(ProductHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
    public int removeStock(int s){
        //quitar a la ya existente
        String Query= "UPDATE `Products` SET `Quantity`=`Quantity`-" + s + " WHERE `Description`='"+ Product +"'";
        try {
            return db.comando.executeUpdate(Query);
        } catch (SQLException ex) {
            Logger.getLogger(ProductHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    

}
