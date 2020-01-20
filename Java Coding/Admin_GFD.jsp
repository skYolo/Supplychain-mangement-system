<body background='Picture4.jpg'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	 	      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	      Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	      Statement stmt=cn.createStatement();
String str="select * from  GFeedback";
	      ResultSet rs=stmt.executeQuery(str);
	       out.println("<table width=50% border=15% > ");
		   while(rs.next())
		{
			    out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+
                                        "</td></tr>");
		  }
		 out.println("</table>");
		  out.println("<b>......</b>");
	      stmt.close();
	      cn.close();
	     }
   catch(Exception e)
    {
	out.println("<b>Error in Saving the Employee Data....</b>"+e.toString());
    }
%>
</body>