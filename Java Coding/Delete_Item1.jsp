<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
      try
        {
	int no=Integer.parseInt(request.getParameter("icode"));
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	stmt.executeUpdate("delete from Items where Item_Code="+no);

	out.println("<b>Item Data Deleted Successfully....</b>");
	stmt.close();
	cn.close();
           }
          catch(Exception e)
           {
	out.println("<b>No Items to Delete....</b>");
           }
%>