<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<form action='c_all_specification.jsp' method='post'>
<%! 
String s1=""; String s2=""; String s3=""; String s4=""; String s5=""; int s6=0; 	

%>
<%
   try
    {
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery("select * from Dealer1");
	out.println("<center><h3>Monitor Details</h3><hr color='blue'>");
	out.println("<table border='15%' width='100%'>");
	out.println("<tr><th>ItemCode</th><th>ItemName</th>  <th>Model</th> <th>Specification</th>  <th>Warranty Period</th><th>Cost</th>");
		while(rs.next())
	 {

						s1=rs.getString(1);
						s2=rs.getString(2);
						s3=rs.getString(3);
						s4=rs.getString(4);
						s5=rs.getString(5);
						 s6=rs.getInt(6);
	       out.println("<tr><td>"+s1+"</td>");
	      out.println("<td>"+s2+"</td>");
	      out.println("<td>"+s3+"</td>");
		   out.println("<td>"+s4+"</td>");
		  out.println("<td>"+s5+"</td>");
	 	      out.println("<td>"+s6+"</td>");
	 }
	out.println("</table></center>");
	
	
%>
	</form>
	<% 
		rs.close();
		stmt.close();
		cn.close();
    }
   catch(Exception e)
    {
             out.println("<b>Error in Loading Data....</b>");
    }
%>
</body>