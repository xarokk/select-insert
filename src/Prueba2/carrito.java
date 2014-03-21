package Prueba2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import org.apache.tomcat.jdbc.pool.DataSource;

public class carrito 
{
	private String ident= null;
	private float precio;
	private Connection con = null;
	
	private DataSource ds;
	 
	public carrito(){
	  try {
		  Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager
			          .getConnection("jdbc:mysql://localhost/cds?"
			              + "user=root&password=f1j0k3p0t0t10s");
	  } catch (Exception e) {
		e.printStackTrace();
	  }
	}
 //aquet metod torna una llista
	public void setcarrito(String id, float Price ) throws SQLException
	{
		precio = Price;
		ident = id;
		
		
		
		  // prepara la conexio pack
		  //Statement stmt = con.createStatement();
		  // preparo la query y la executo
		  /*String query =  "insert into carrito3 values (id,Price);";
		  stmt.executeUpdate(query); */
		String insertTableSQL =" INSERT INTO carrito3" +"(sesionid, Total) VALUES "+"(?,?)";
		PreparedStatement preparedStatement = con.prepareStatement(insertTableSQL);
		preparedStatement.setString(1, ident);
		preparedStatement.setFloat(2,precio);
		preparedStatement.executeUpdate();
		  }
}
