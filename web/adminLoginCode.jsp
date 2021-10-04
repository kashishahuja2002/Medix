<%@page  import="java.sql.Connection,java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medix","root","root");
        
    PreparedStatement st=con.prepareStatement("select * from admin where email=? and pass=?");                
    st.setString(1,email);
    st.setString(2,pass);  
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
        session.setAttribute("AUTH", email);//
        response.sendRedirect("adminIndex.jsp");
    }
    else
    {
        response.sendRedirect("adminLogin.jsp");
    }
%>

