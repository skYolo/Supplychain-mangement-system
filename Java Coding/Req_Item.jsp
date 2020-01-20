<body background='Picture4.jpg' text='black'>
<form name='f1' method='get' action='Req_Item1.jsp'>
<center><h3>Request for New Item</h3>
<hr color='blue'>
<%@ page language='java' import='java.sql.*' %>
<%
     int no=0;
     try
      {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery("select Max(Req_Id) from Item_Request");
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
<table>
      <tr>	
	<th align='right'>Request Id : </th>
<%    out.println("<td><input type='text' name='rid' value='"+no+"' size=10></td>");     %>
      </tr>
      <tr>	
	<th align='right'>Item Name : </th>
	<td><input type='text' name='iname'></td>
      </tr>
      <tr>	
	<th align='right'>Requested Date : </th>
	<td><input type='text' name='rdate'></td>
      </tr>
</table>
<br>
<input type='submit' value=' Submit Request  '>
</form>
</body>