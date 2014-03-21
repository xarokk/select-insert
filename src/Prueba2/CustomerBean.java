package Prueba2;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import org.apache.tomcat.jdbc.pool.DataSource;


public class CustomerBean{
 
	
	 private Connection con = null;
	public CustomerBean(){
	/*  try {
		Context ctx = new InitialContext();
		ds = (DataSource)ctx.lookup("java:comp/env/jdbc/cds");
	  } catch (NamingException e) {
		e.printStackTrace();
	  } */    
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager
			          .getConnection("jdbc:mysql://localhost/cds?"
			              + "user=root&password=f1j0k3p0t0t10s");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
      // setup the connection with the DB.
      
	  
	  
	}
 //aquet metod torna una llista
	public List<CD> getCustomerList() throws SQLException
	{
 
	  //get database connection
		//creo la conexio a la base de datos
	  
	  // prepara la conexio pack
	  Statement stmt = con.createStatement();
	  // preparo la query y la executo
	  String query =  "select * from Stock";
	  ResultSet rs= stmt.executeQuery(query);
	  //recullo el resultat de la operacio
	  //paso el result set fila a fila
	  //aqui creo al llistagenerica
	  LinkedList il = new LinkedList();
	  
	  while (rs.next() )
	  {
		 String Album =  rs.getString(2);
		 CD Cdtemp = new CD();
		 Cdtemp.setAlbum(Album);
		 Cdtemp.setArtist(rs.getString(3));
		 Cdtemp.setCountry(rs.getString(4));
		 Cdtemp.setPrice(rs.getFloat(5));
		 il.add(Cdtemp);
	  }
	  return il;
	}
	

}