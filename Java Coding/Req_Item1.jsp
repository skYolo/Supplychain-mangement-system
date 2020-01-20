<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
    try
     {
	int rid=Integer.parseInt(request.getParameter("rid"));
	String iname=request.getParameter("iname");
	String rdate=request.getParameter("rdate");

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

        String str="insert into Item_Request values("+rid+",'"+iname+"','"+rdate+"','Request')";
	stmt.executeUpdate(str);
	out.println("<b>Request is Submitted Successfully.....</b>");
	stmt.close();
	cn.close();
     }
    catch(Exception e1)
     {
	out.println("<b>Error in Data Values...</b>"+e1.toString());
     }  
%>
</body>