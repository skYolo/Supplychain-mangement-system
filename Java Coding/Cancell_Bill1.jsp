<body background='Picture4.jpg' text='black'>
<form name='f1' method='get' action='Cancell_Bill2.jsp'>
<center><H3>Bill/Item Cancellation Form</h3>
<hr color='blue'>
<%@ page language='java' import='java.sql.*' %>
<%
  try
   {
	int bid=Integer.parseInt(request.getParameter("bid"));
                   session.setAttribute("bid",String.valueOf(bid));

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
String str="select Item_Code,Item_Name,Rate,Quantity,Amount from Bills where Bill_Id="+bid;

	ResultSet rs=stmt.executeQuery(str);
	out.println("<table border='1' width='80%'>");
	out.println("<tr><th>Item Code</th><th>Item Name</th><th>Rate</th>");
	out.println("<th>Quantity</th><th>Amount</th></tr>");
	while(rs.next())
	 {
	         out.println("<tr><td>"+rs.getString(1)+"</td>");
	         out.println("<td>"+rs.getString(2)+"</td>");
	         out.println("<td>"+rs.getInt(3)+"</td>");
	         out.println("<td>"+rs.getInt(4)+"</td>");
	         out.println("<td>"+rs.getInt(5)+"</td></tr>");
	 }
	out.println("</table>");

	str="select Item_Code from Bills where Bill_Id="+bid;
	rs=stmt.executeQuery(str);
	out.println("<b><br>Select the Item Code to Cancel : </b><select name='icode'>");
	while(rs.next())
	 {
	         String x=rs.getString(1);
	         out.println("<option value='"+x+"'>"+x+"</option>");     
	 }
	out.println("</select><input type='submit' value='  Cancell '>");
	out.println("</form></body>");
	stmt.close();
	cn.close();
       }
      catch(Exception e)
       {
               out.println("<b>Error in Page</b>");
       }
%>