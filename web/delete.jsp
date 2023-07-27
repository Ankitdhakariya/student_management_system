<%@page import="java.sql.*"%>
<html>
    <%@include file="include2.jsp"%>
    <form action="delete.jsp">
    <div id="data">
            <center>
        <table cellpadding ="12">
            <caption>Delete page</caption>

<tr>
        <td>ENTER ROLL<input type="text" class="t1" placeholder="enter roll" name="u1"></td>
        </tr>
    <tr>
        <th colspan="1"><input type="submit" value="DELETE"  class="b" name="b1" ></th>
    </tr>
</table>
            </center>
</div>
</form>
</body>   
</html>
<%
         String s12 = request.getParameter("b1");
         if(s12!=null){
    String s1=request.getParameter("u1");
    try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql:///ajava55?useSSL=false","root","Root");
		Statement st=con.createStatement(); 
		st.executeUpdate("delete from insmarks where ROLL='"+s1+"'");
                response.sendRedirect("showall.jsp");
		con.close();
	}
	catch(Exception e1)
	{
		out.println(e1);
	}
    
    
         }
    %>


