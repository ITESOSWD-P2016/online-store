/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.iteso.store.test;

import java.sql.SQLException;

import com.iteso.store.db.DatabaseConnection;

public class DatabaseConnectionTest {

	public static void main(String[] args) throws SQLException {
		DatabaseConnection dataBaseConnection = DatabaseConnection.getDataBaseConnection();
		String sQuery = "SELECT * FROM Category ORDER BY Category";
		dataBaseConnection.setComando(dataBaseConnection.getConexion().createStatement());
		dataBaseConnection.setRegistro(dataBaseConnection.getComando().executeQuery(sQuery));
		while (dataBaseConnection.getRegistro().next())
			System.out.println(dataBaseConnection.getRegistro().getString(2));
	}
}