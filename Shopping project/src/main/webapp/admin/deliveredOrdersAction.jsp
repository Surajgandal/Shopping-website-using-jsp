<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="project.connectionProvider"
    import="java.sql.*"%>

<%
String id=request.getParameter("id");
String email=request.getParameter("email");

String status="delivered";

try{
	Connection con= connectionProvider.getCon();
	Statement st =con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NULL");    
	response.sendRedirect("ordersReceived.jsp?msg=delivered");
 
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("ordersReceived.jsp?msg=wrong");	
}
	
%>.*"%>