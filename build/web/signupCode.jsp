<%@page  import="java.sql.Connection,java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%
    int userId=Integer.parseInt(request.getParameter("userId"));
    String name=request.getParameter("name");
    String contact=request.getParameter("contact");
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    String gender=request.getParameter("gender");
    String dob=request.getParameter("dob");
    int age=Integer.parseInt(request.getParameter("age"));

    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medix","root","root");  
    
    PreparedStatement st=con.prepareStatement("select * from user where email=?");                
    st.setString(1,email); 
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
        response.sendRedirect("signup.jsp");
    }
    else
    {
        PreparedStatement st1=con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?)");                
            st1.setInt(1,userId);
            st1.setString(2,name);
            st1.setString(3,contact);
            st1.setString(4,email);
            st1.setString(5,pass);
            st1.setString(6,gender);
            st1.setString(7,dob);
            st1.setInt(8,age);
            st1.executeUpdate();
            con.close();
            response.sendRedirect("userIndex.jsp");
    }
%>