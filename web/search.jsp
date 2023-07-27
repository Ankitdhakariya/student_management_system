<%@page import="java.sql.*"%>
<html>
    <head>
        <%@include file="include2.jsp"%>
        <<div id="data">
        <center>
            <form action ="search.jsp">
                <table cellpadding="12">
                    <caption>search page</caption>
                    <tr>
                        <td>enter rno</td>
                        <td><input type="text" placeholder="entern rno" name="u1" class="t1"><td>
                            </tr>
                            <tr>
                                <th colspan="2"><input type="submit" value="search" class="b" name="b1" ></th>
                                </tr>
                                </table>
                <%
                String b1=request.getParameter("b1");
                if(b1!=null){
                    String s1=request.getParameter("u1");
                    try{
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql:///ajava55?useSSL=false","root","Root");
                  Statement st=con .createStatement();
                  ResultSet rs=st.executeQuery("select *from insmarks where name='"+s1+"'");
                  if(rs.next()){
                   %>   
                   <table cellpadding ="12">
                   <tr>
                       <th>roll</th>
                       <th>name</th>
                       <th>phy</th>
                       <th>chem</th>
                       <th>maths</th>
                      
                   </tr>
                       <tr>
                           
    <td><%= rs.getString(1)%></td>
    <td><%= rs.getString(2)%></td>
    <td><%= rs.getString(3)%></td>
    <td><%= rs.getString(4)%></td>
    <td><%= rs.getString(5)%></td>

                        </tr>
                                  </table>
                           </form>
                           <%
                  }
                  else{
                      out.println("invalid");
                  }
                        con.close();
                    }
                    catch(Exception e){
                        out.println(e);
                    }}
                   %>
                   
                </center>
    </div>
</body>
</html>