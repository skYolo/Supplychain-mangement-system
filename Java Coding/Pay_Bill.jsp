<%@ page language='java' import='java.sql.*' %>
<form name='f1' method='get' action='Pay_Bill1.jsp'>
<%
    try
     {
	String bid=(String)session.getAttribute("bid");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	String str="select Amount from Bills where Bill_Id="+Integer.parseInt(bid);
	ResultSet rs=stmt.executeQuery(str);
	int amt=0;
	while(rs.next())
	 {
	     amt=amt+rs.getInt(1);
	 }
	
	out.println("<b>Total Payable Amount : <input type='text' name='amt' value='"+amt+"'>");
	out.println("<input type='submit' value='  Accept Bill   '>");
     }
    catch(Exception e)
    {
	out.println("<b>Error in Bill Payment</b>");
    }
%>