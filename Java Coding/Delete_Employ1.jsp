<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
      try
        {
	int no=Integer.parseInt(request.getParameter("eno"));
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	stmt.executeUpdate("delete from EmployInfo where EmpNo="+no);

	out.println("<b>Employee Data Deleted Successfully....</b>");
	stmt.close();
	cn.close();
           }
          catch(Exception e)
           {
	out.println("<b>No Employee Number is Deleted....</b>");
           }
%>