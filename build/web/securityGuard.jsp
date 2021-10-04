<%
    //response.addHeader("Cache-Control", "no-Cache");//IE
    response.addHeader("Pragma", "no-Cache");
    response.addHeader("Cache-Control", "no-Store");
    response.setHeader("Pragma", "no-Cache");
    response.setHeader("Cache-Control", "no-Store");

    String value=(String)session.getAttribute("AUTH");
    if(value==null)
    {
        response.sendRedirect("adminLogin.jsp");
    }
    if(session==null)
    {
        response.sendRedirect("adminLogin.jsp");
    }
%>
