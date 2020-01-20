<body background='Picture4.jpg' text='black'>
<form name='f1' method='get' action='Item_Wise1.jsp'>
<center><h2>Item Wise Report</h2>
<hr color='blue'>
<%@ page language='java' import='java.sql.*' %>
<%
    try
     {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

	String str="select distinct(Item_Code) from Bills";
	ResultSet rs=stmt.executeQuery(str);
	out.println("Item Codes : <select name='icode'>");
	while(rs.next())
	 {
	         String no=rs.getString(1);
	         out.println("<option value='"+no+"'>"+no+"</option>");
	 }
	out.println("</select><br><br>");
	stmt.close();
	cn.close();
	out.println("<input type='submit' value=' Show Report '></form>");
     }
    catch(Exception e)
     {
            out.println("<b>Error in Loading Item Codes...</b>");
     }
%>
</body>