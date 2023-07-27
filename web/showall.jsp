<%@page import="java.sql.*"%>
<html>
    <%@include file="include2.jsp" %>
    <%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con =DriverManager.getConnection("jdbc:mysql:///ajava55?useSSL=false", "root","Root");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from insmarks");
                %>
<center>
                <table cellpadding="12">

                    <%
while(rs.next()){
    %>
<tr>
    <td><%= rs.getString(1)%></td>
    <td><%= rs.getString(2)%></td>
    <td><%= rs.getString(3)%></td>
    <td><%= rs.getString(4)%></td>
    <td><%= rs.getString(5)%></td>

<%}%>

</table>
</center>

    <% con.close();
}
    catch(Exception e)
            {
        out.println(e);
    }
    
    
    
    %>
    
    
    
    </body>
    </html>