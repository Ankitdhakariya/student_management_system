<html>
    <%@page import="java.sql.*"%>
<html>
    <head>
        <%@include file="include2.jsp"%>
        <<div id="data">
        <center>
            <form action ="update.jsp">
                <table cellpadding="12">
                    <caption>update page</caption>
                    <tr>
                        <td>enter rno</td>
                        <td><input type="text" placeholder="entern rno" name="u1" class="t1"><td>
                            </tr>
                            <tr>
                                <th colspan="2"><input type="submit" value="search" class="B" name="b1" ></th>
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
                  ResultSet rs=st.executeQuery("select *from insmarks where ROLL='"+s1+"'");
                  if(rs.next()){
                   %>   
                   <table>
                       <tr>
                           <td>ROll</td>
                           <td><input type="text" value="<%=rs.getString(1)%>" name="n1"> </td>
                           </tr>
                       <tr>
                           <td>name</td>
                           <td><input type="text" value="<%=rs.getString(2)%>" name="n2"> </td>
                           </tr>
                           <tr>
                           <td>phy</td>
                           <td><input type="text" value="<%=rs.getString(3)%>" name="n3"> </td>
                           </tr>
                           <tr>
                           <td>chem</td>
                           <td><input type="text" value="<%=rs.getString(4)%>" name="n4"> </td>
                           </tr>
                           <tr>
                           <td>maths</td>
                           <td><input type="text" value="<%=rs.getString(5)%>" name="n5"> </td>
                           </tr>        
                               <tr>
                              <th colspan="12"><input type="submit"  name="b2" value="UPdate" class="b"> 
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
<%
                String s12 = request.getParameter("b2");
                if(s12!=null)
                {
                    
                    String s21=request.getParameter("n1");
                    String s22=request.getParameter("n2");
                    String s23=request.getParameter("n3");
                    String s24=request.getParameter("n4");
                    String s25=request.getParameter("n5");
    
 try{                     
                      
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con =DriverManager.getConnection("jdbc:mysql:///ajava55?useSSL=false","root","Root");
                  Statement st=con .createStatement();
                  int x=st.executeUpdate("update insmarks set NAME='"+s22+"', PHY='"+s23+"',CHEM='"+s24+"',MATHS='"+s25+"' where ROLL='"+s21+"' ");
response.sendRedirect("showall.jsp");
con.close();
 }
catch(Exception e){
        
        out.println(e);
        }
                }
 %>
    
    
    
</body>
</html>