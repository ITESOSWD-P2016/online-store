package com.iteso.store.db;
/**
 *
 * @author Sebastian
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

 
public class DatabaseConnection {
 
	private static DatabaseConnection dataBaseConnection;
    private Connection conexion = null;
    private Statement comando = null;
    private ResultSet registro;
 
    private DatabaseConnection(){}
    
    public static DatabaseConnection getDataBaseConnection(){
     	if (dataBaseConnection == null){
     		dataBaseConnection = new DatabaseConnection();
     		dataBaseConnection.DatabaseConnectionConnect();
     	}
     	
    	return dataBaseConnection;
    }
    
    public Connection getConexion() {
		return conexion;
	}

    public void setConexion(Connection conexion) {
		this.conexion = conexion;
	}

    public Statement getComando() {
		return comando;
	}

    public void setComando(Statement comando) {
		this.comando = comando;
	}

    public ResultSet getRegistro() {
		return registro;
	}

    public void setRegistro(ResultSet registro) {
		this.registro = registro;
	}

	@SuppressWarnings("finally")
	private Connection DatabaseConnectionConnect() {
 
        try {
            //Driver JDBC
            Class.forName("com.mysql.jdbc.Driver");
            //Nombre del servidor. localhost:3306 es la ruta y el puerto de la conexión MySQL
            //onlinestoreswd es el nombre que le dimos a la base de datos
            String servidor = "jdbc:mysql://www.db4free.net:3306/onlinestoreswd";
        
            String usuario = "adminswdp";
            String pass = "Swdp2016";
            //Se inicia la conexión
            conexion = DriverManager.getConnection(servidor, usuario, pass);
 
        } catch (ClassNotFoundException ex) {
            JOptionPane.showMessageDialog(null, ex, "Error en la conexión a la base de datos: " + ex.getMessage(), JOptionPane.ERROR_MESSAGE);
            conexion = null;
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex, "Error en la conexión a la base de datos: " + ex.getMessage(), JOptionPane.ERROR_MESSAGE);
            conexion = null;
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex, "Error en la conexión a la base de datos: " + ex.getMessage(), JOptionPane.ERROR_MESSAGE);
            conexion = null;
        } finally {
            //JOptionPane.showMessageDialog(null, "Conexión Exitosa");
            return conexion;
        }
    }

	public void MySQLCloseConnection(Connection conexion) throws SQLException{
		conexion.close();
	}
}