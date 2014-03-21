<%@ page session="true"  import="Prueba2.CD"
	import=" Prueba2.CustomerBean" import="java.util.List"%>
<html>
<head>
<title>Music Without Borders</title>
</head>
<body bgcolor="#33CCFF">
	<font face="Times New Roman,Times" size="+3"> Music Without
		Borders </font>
	<hr>
	<p>
	<center>
		<form name="shoppingForm"
			action="/4-03-2014EjercicioB/ShoppingServlet" method="POST">

			<b>CD:</b> <select name=CD>
				<%
					CustomerBean Cbean = new CustomerBean();
					//aqui tinc tots els cds de lka base de dades
					List lista;
					lista = Cbean.getCustomerList();

					for (int i = 0; i < lista.size(); i++)

					{
						CD cdlist = (CD) lista.get(i);
				%>
				<option><%=cdlist.getAlbum()%> |
					<%=cdlist.getArtist()%> |
					<%=cdlist.getCountry()%> |
					<%=cdlist.getPrice()%></option>

				<%
					}
				%>
			</select> <b>Quantity: </b><input type="text" name="qty" SIZE="3" value=1>
			<input type="hidden" name="action" value="ADD"> <input
				type="submit" name="Submit" value="Add to Cart">
		</form>
	</center>
	<p>
		<jsp:include page="Cart.jsp" flush="true" />
</body>
</html>