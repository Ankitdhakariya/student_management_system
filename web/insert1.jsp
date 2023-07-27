<%@page import = "java.sql.*" %>
<%
String s1= request.getParameter("un1");
String s2= request.getParameter("un2");
String s3= request.getParameter("un3");
String s4= request.getParameter("un4");
String s5= request.getParameter("un5");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///ajava55?useSSL=false","root","Root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into insmarks values('"+s1+"','"+s2+"','"+s3+"','"+s4+"', '"+s5+"')");
	response.sendRedirect("showall.jsp");
	con.close();
}
catch(Exception e){
	
	out.println(e);
}

%>