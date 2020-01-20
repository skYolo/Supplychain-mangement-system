<body background='Picture4.jpg' text='black'>
<form name='f1' method='get' action='Cancell_Bill1.jsp'>
<center><H3>Bill/Item Cancellation Form</h3>
<hr color='blue'>
<%@ page language='java' import='java.sql.*' %>
<%
  try
   {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

	String str="select Bill_Id from Paid_Bills";
	ResultSet rs=stmt.executeQuery(str);
	out.println("<b>Select the Bill Id to Cancel : </b><select name='bid'>");
	while(rs.next())
	 {
	         String x=rs.getString(1);
	         out.println("<option value='"+x+"'>"+x+"</option>");     
	 }
	out.println("</select><input type='submit' value='  Show Details '>");
	out.println("</form></body>");
   }
  catch(Exception e)
   {
          out.println("<b>Error in the Page...</b>");
   }
%>