<%@ page session="true" import="java.util.*, Prueba2.CD"
	import=" Prueba2.carrito"%>
<html>
<head>
<title>Music Without Borders Checkout</title>
</head>
<body bgcolor="#33CCFF">
	<font face="Times New Roman,Times" size=+3> Music Without
		Borders Checkout </font>
	<hr>
	<p>
	<center>
		<table border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
			<tr>
				<td><b>ALBUM</b></td>
				<td><b>ARTIST</b></td>
				<td><b>COUNTRY</b></td>
				<td><b>PRICE</b></td>
				<td><b>QUANTITY</b></td>
				<td></td>
			</tr>
			<% CD anOrder = null;
				Vector buylist = (Vector) session.getValue("shopping.shoppingcart");
				String amount = (String) request.getAttribute("amount");
				for (int i = 0; i < buylist.size(); i++) {
					 anOrder = (CD) buylist.elementAt(i);
			%>
			<tr>
				<td><b><%=anOrder.getAlbum()%></b></td>
				<td><b><%=anOrder.getArtist()%></b></td>
				<td><b><%=anOrder.getCountry()%></b></td>
				<td><b><%=anOrder.getPrice()%></b></td>
				<td><b><%=anOrder.getQuantity()%></b></td>
				
				
			</tr>
			<%
				}
				session.invalidate();
			%>
			<%
			/*carrito moha = new carrito();
				String sesion2 = session.getId();
				 float variable = Float.parseFloat(amount);
				moha.setcarrito(sesion2, variable);    */
				
			carrito moha = new carrito();
				System.out.println(session.getId() + " " + amount);
				moha.setcarrito(session.getId(), Float.parseFloat(amount)); 
			
			%>
			<tr>
				<td></td>
				
				<td></td>
				<td><b>TOTAL</b></td>
				<td><b>$<%=amount%></b></td>
				<td></td>
			</tr>
		</table>
		<p>
			<a href="/4-03-2014EjercicioB/Eshop.jsp">Shop some more!</a> <br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<!--  si te el = lo que estic fen es dirli que executi , si no te el = implica que es codi amb ajva -->
			<%
				
			%>
			<tr>
				<td><b>aqui</b></td>
			</tr>
	</center>
</body>
</html>