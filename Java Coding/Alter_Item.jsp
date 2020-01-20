<body background='Picture4.jpg' text='black'>
<form name='f1' method='get' action='Alter_Item1.jsp'>
<center><h3>Item Data Alteration Form</h3>
<hr color='red'>
<b>Select the required Item Code to Modify : </b>
<%@ page language='java' import='java.sql.*' %>
<%
      try
        {
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery("select Item_Code from Items");
	out.println("<select name='icode'>");
	while(rs.next())
	 {
	         String x=rs.getString(1);
	         out.println("<option value='"+x+"'>"+x+"</option>");
	 }
	out.println("</select><input type='submit' value='    Show Details   '></form>");
	rs.close();
	stmt.close();
	cn.close();
         }
        catch(Exception e)
         {
	out.println("<b>Error in Loading Employee Numbers....</b>");
         }
%>
</body>