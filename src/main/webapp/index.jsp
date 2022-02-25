<%-- 
    Document   : index
    Created on : Feb 20, 2022, 9:36:47 PM
    Author     : AGI03
--%>
<%@page import="com.mycompany.temp.dao.bis_dao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <p>Enter your ID</p>
    <form action="NewServlet">
        <input type="text" name="id">
        <input type="submit">
    </form>
    <form action="" method="post">
        <table  style="width: 40%;" align="center">
               <tr>
                    <th align="right">head Name:</th>
                    <td>
        <select name="bhead" id="bhead" onchange="this.form.submit();">
         <option value="0">Select_head</option>
         
        <%  try
                    {
                       bis_dao bis = new bis_dao();
                       ResultSet rs = bis.getBisHead();
                       while(rs.next())
                       {
                          %> 
                          <option  value="<%=rs.getInt("BPNO")%>"
                                     <% 
                          if(request.getParameter("bhead")!=null)
                          {
                             if(rs.getInt("BPNO")==Integer.parseInt(request.getParameter("bhead")))
                             {
                                 out.print("selected");
                                 
                             }
                          }
                          
                          %>     
                                   
                                   
                                   >
                              
                               
                              <%=rs.getString("BPDES")%></option>
                          <%
                       }
                      
                    }
                    catch(Exception ex)
                    {
                        ex.printStackTrace();
                    }
                    %>
        </select> </td>
                </tr>
         <tr>
                    <th align="right">item Name:</th>
                    <td>
         <select name="bitem" id="bitem">
         <option  value="0">Select_item</option>
        <% 
                    
                    try
                    { 
                       String str = request.getParameter("bhead");
                       bis_dao bis_i = new bis_dao();
                       ResultSet rs = bis_i.getBisItem(str);
                       while(rs.next())
                       {
                          %> 
                          <option value="<%=rs.getInt("BPITEM")%>">
                              <%=rs.getString("BPNAME")%></option>
                          <%
                       }
                       
                    }
                    catch(Exception ex)
                    {
                        ex.printStackTrace();
                    }
                    %>
         </select>
           </td>
                </tr>
            </table>
    </form>
</html>
