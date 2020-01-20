<body background='Picture4.jpg' text='black'>
<form name='f1' method='get' action='New_Item1.jsp'>
<center><h3>New Item Page</h3>
<%@ page language='java' import='java.sql.*' %>
<%
         int no=0;
         try
          {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery("select Max(Item_Code) from Items");
	if(rs.next())
	 {
	      no=Integer.parseInt(rs.getString(1))+1;
	 }
	rs.close();
	stmt.close();
	cn.close();
          }
         catch(Exception e)
          {
	no=1;
          }
%>
<hr color='blue'>
<br>
<table>
     <tr>
	<th align='right'>Item Code : </th>
<%     out.println("<td><input type='text' name='icode' size=5 value="+no+"></td>");   %>
    </tr>
     <tr>
	<th align='right'>Item Description : </th>
	<td><input type='text' name='des' size=30></td>
    </tr>
     <tr>
	<th align='right'>Item Rate : </th>
	<td><input type='text' name='rate' size=10></td>
    </tr>
</table>
<br><br>
<input type='submit' value='   Add Item '>
</form>
</body>