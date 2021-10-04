<html>
    <head>
        <title>Medix | Users</title>

        <link rel="stylesheet" href="./assets/css/Style.css">
    </head>

<body>
        
    <!-- Header -->
    <div class="header">
        <img src="./assets/images/logo.png" alt="" width="5%" class="logo">
        <h1>Medix</h1>

        <img src="./assets/images/call.png" alt="" width="2.5%" class="call-icon">
        <h3 class="call"><a href="tel:9876543210">Call: 9876543210</a></h3>

        <img src="./assets/images/mail.jpg" alt="" width="3%" class="mail-icon">
        <h3 class="mail"><a href="mailto:medix@gmail.com">Email: medix@gmail.com</a></h3>
    </div>

    <!-- Sub-header -->
    <div class="sub-header">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About us</a></li>
            <li><a href="services.jsp">Services</a></li>
            <li><a href="contact.jsp">Contact us</a></li>
            <li><a href="login.jsp" class="login">Login</a></li>
        </ul>
    </div>

    <!-- Admin-header -->
    <div class="sub-header" style="margin-top: 15px;">
        <ul>
            <li><a href="users.jsp" class="active">Users</a></li>
            <li><a href="#">Blogs</a></li>
            <li><a href="#">Coments</a></li>
            <li><a href="#">Experts</a></li>
        </ul>
    </div>

    <%@page  import="java.sql.Connection,java.sql.DriverManager" %>
    <%@page  import="java.sql.PreparedStatement" %>
    <%@page import="java.sql.ResultSet,java.util.ArrayList" %>

    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medix","root","root");
        PreparedStatement st=con.prepareStatement("select * from user");
        ResultSet rs=st.executeQuery();
        ArrayList list1=new ArrayList();
        ArrayList list2=new ArrayList();
        ArrayList list3=new ArrayList();
        ArrayList list4=new ArrayList();
        ArrayList list5=new ArrayList();
        ArrayList list6=new ArrayList();
        ArrayList list7=new ArrayList();
        ArrayList list8=new ArrayList();
        while(rs.next())
        {
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
            list4.add(rs.getString(4));
            list5.add(rs.getString(5));
            list6.add(rs.getString(6));
            list7.add(rs.getString(7));
            list8.add(rs.getString(8));
        }
    %>
        
    <div class="all-users">
        <h2>All Users</h2>

        <table align="center">
            <tr>
                <td>User Id</td>
                <td>Name</td>
                <td>Contact</td>
                <td>Email</td>
                <td>Pass</td>
                <td>Gender</td>
                <td>DOB</td>
                <td>Age</td>
            </tr>        
            
            
            <%
                for(int i=0; i<list1.size(); i++)
                {
            %>
                <tr>
                    <td><%=list1.get(i)%></td>
                    <td><%=list2.get(i)%></td>
                    <td><%=list3.get(i)%></td>
                    <td><%=list4.get(i)%></td>
                    <td><%=list5.get(i)%></td>
                    <td><%=list6.get(i)%></td>
                    <td><%=list7.get(i)%></td>
                    <td><%=list8.get(i)%></td>
                </tr>
            <% 
                } 
            %>
            
        </table>
    </div>

<!-- <div style="width:100%;height: 700px;background:rgba(160,82,45,0.6);">
<hr>
<br>
<hr>
    
        
        
        <select>
            <% for(int i=0;i<list6.size();i++)
            {%>
            <option><%=list6.get(i)%></option>
            <%}%>
        </select>
        
        <hr>
        <h2>SEARCH RECORD</h2>
        <%
String button1=request.getParameter("btn");
if(button1!=null && button1.equals("LOAD"))
{
String search=request.getParameter("uId");
PreparedStatement st1=con.prepareStatement("select * from transportuser where userid=?");
st1.setString(1,search);
ResultSet rs1=st1.executeQuery();
String fullName="";
String dOB="";
if(rs1.next())
{
    fullName=rs1.getString(2);
    dOB=rs1.getString(4);

}

     %>   
        
    

        <table width="100%" height="318" border="1">
  <tr>
    <td width="27%" bgcolor="#F0F0F0"><div align="center"><strong>UNIVERSITY NAME </strong></div></td>
    <td colspan="3" bgcolor="#F0F0F0"><div align="center"><%=fullName%></div></td>
  </tr>
  <tr>
    <td bgcolor="#F0F0F0"><div align="center"><strong>COLLEGE NAME </strong></div></td>
    <td colspan="3" bgcolor="#F0F0F0"><div align="center"><%=fullName%></div></td>
  </tr>
  <tr>
    <td bgcolor="#F0F0F0"><div align="center"><strong>STUDENT NAME </strong></div></td>
    <td colspan="3" bgcolor="#F0F0F0"><div align="center"><%=fullName%></div></td>
  </tr>
  <tr>
    <td bgcolor="#F0F0F0"><div align="center"><strong>ENROLL NO </strong></div></td>
    <td colspan="3" bgcolor="#F0F0F0"><div align="center"><%=fullName%></div></td>
  </tr>
  <tr>
    <td bgcolor="#F0F0F0"><div align="center"><strong>SUBJECTS NAME </strong></div></td>
    <td width="38%" bgcolor="#F0F0F0"><div align="center"><strong>MAX MARKS </strong></div></td>
    <td width="15%" bgcolor="#F0F0F0"><div align="center"><strong>MIN MARKS </strong></div></td>
    <td width="20%" bgcolor="#F0F0F0"><div align="center"><strong>OBTAINED MARKS </strong></div></td>
  </tr>
  <tr>
    <td bgcolor="#F0F0F0"><div align="center"><strong>JAVA</strong></div></td>
    <td bgcolor="#F0F0F0"><div align="center"><strong>1000</strong></div></td>
    <td bgcolor="#F0F0F0"><div align="center"><strong>999</strong></div></td>
    <td bgcolor="#F0F0F0"><div align="center"><%=fullName%></div></td>
  </tr>
  <tr>
    <td bgcolor="#F0F0F0"><div align="center"><strong>PYTHON</strong></div></td>
    <td bgcolor="#F0F0F0"><div align="center"><strong>1000</strong></div></td>
    <td bgcolor="#F0F0F0"><div align="center"><strong>999</strong></div></td>
    <td bgcolor="#F0F0F0"><div align="center"><%=fullName%></div></td>
  </tr>
  <tr>
    <td bgcolor="#F0F0F0"><div align="center"><strong>ML</strong></div></td>
    <td bgcolor="#F0F0F0"><div align="center"><strong>1000</strong></div></td>
    <td bgcolor="#F0F0F0"><div align="center"><strong>999</strong></div></td>
    <td bgcolor="#F0F0F0"><div align="center"></div></td>
  </tr>
  <tr>
    <td bgcolor="#F0F0F0"><div align="center"></div></td>
    <td bgcolor="#F0F0F0"><div align="center"></div></td>
    <td bgcolor="#F0F0F0"><div align="center"></div></td>
    <td bgcolor="#F0F0F0"><div align="center"></div></td>
  </tr>
</table>
    <input type="text" value="<%=fullName%>">
<%}%>        





    <form action="">
        <TABLE align="center">
            <tr>
                <td>
                    <input type="text" name="uId">
                    <input type="submit" value="LOAD"  name="btn">
                </td>
            </tr>
        </TABLE>
</form>



        </div> -->

    <!-- Footer -->
    <div class="footer">
        <div class="section">
            <img src="./assets/images/logo.png" alt="" width="40%" height="20%" class="logo">
            <h1 style="margin: 0; margin-top: 20px;">Medix</h1>
        </div>
        <div class="section">
            <h4>Links</h4>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About us</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="contact.jsp">Contact us</a></li>
            </ul>
        </div>
        <div class="section">
            <h4>Contact Us</h4>
            <ul>
                <li><a href="tel:9876543210">Call: 9876543210</a></li>
                <li><a href="mailto:medix@gmail.com">Email: medix@gmail.com</a></li>
                <li><p>Address: F-13, Ratlam Kothi, Geeta Bhawan, Indore, M.P.</p></li>
            </ul>
        </div>
        <div class="section">
            <h4>Handles</h4>
            <ul>
                <li><a href="https://www.facebook.com/login/" target="_blank">Facebook</a></li>
                <li><a href="https://twitter.com/?lang=en" target="_blank">Twitter</a></li>
                <li><a href="https://www.instagram.com/accounts/login/" target="_blank">Instagram</a></li>
                <li><a href="https://www.whatsapp.com/?lang=en" target="_blank">WhatsApp</a></li>
            </ul>
        </div>
    </div>

    <!-- Sub-footer -->
    <div class="sub-footer">
        <p>&copy; Medix. Designed and developed by Kashish Ahuja.</p>
    </div>

</body>
</html>