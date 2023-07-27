<%@page import="java.sql.*" %>
<%
String s1 = request.getParameter("un");
String s2 = request.getParameter("up");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///ajava55?useSSL=false","root","Root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into ajava55 values('"+s1+"','"+s2+"')");
	response.sendRedirect("login.jsp");
	con.close();
        out.println("<h1>Data inserted</h1>");
}
catch(Exception e){
	
	out.println(e);
	
}
%>