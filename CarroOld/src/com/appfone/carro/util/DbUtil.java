package com.appfone.carro.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbUtil {
	
	  public Connection getConnection() {
	  
	  Connection con = null; try { Class.forName("com.mysql.jdbc.Driver"); 
	  con = DriverManager.getConnection("jdbc:mysql://localhost/carro","root","root");
	  
	  
	  } catch(ClassNotFoundException e) { e.printStackTrace(); } catch(SQLException
	  e) { e.printStackTrace(); } return con; }
	 

}
