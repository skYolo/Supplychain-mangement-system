<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery("select * from Items");
	out.println("<center><h3>Item Details</h3><hr color='blue'>");
	out.println("<table border='1' width='60%'>");
out.println("<tr><th>Item Code</th><th>Description</th><th>Rate</th><th>Stock</th></tr>");
	while(rs.next())
	 {
	      out.println("<tr><td>"+rs.getInt(1)+"</td>");
	      out.println("<td>"+rs.getString(2)+"</td>");
	      out.println("<td>"+rs.getInt(3)+"</td>");
	      out.println("<td>"+rs.getInt(4)+"</td></tr>");
	 }
	out.println("</table></center>");
	rs.close();
	stmt.close();
	cn.close();
    }
   catch(Exception e)
    {
             out.println("<b>Error in Loading Item Data....</b>");
    }
%>
</body>