<%@page import="java.sql.*" %>
<%  
    String s1=request.getParameter("un");
    String s2=request.getParameter("up");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///ajava55?useSSL=false","root","Root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from ajava55 where name='"+s1+"'AND pass ='"+s2+"'");
	if(rs.next()){
	response.sendRedirect("mymenu.jsp");
	}
	else{
	out.println("invalid ");
	}
	con.close();
}
catch(Exception e){
	
	out.println(e);
	
}










%>