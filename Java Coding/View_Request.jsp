<body background='c:\windows\web\wallpaper\ripple.jpg' text='black'>
<form name='f1' method='get' action='Add_Requested_Item.jsp'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
      String str="select Req_Id,Req_Item,Req_Date from Item_Request where Status='Request'";
	ResultSet rs=stmt.executeQuery(str);
	out.println("<center><h3>Requested Item Details</h3><hr color='blue'>");
	out.println("<table border='1' width='60%'>");
      out.println("<tr><th>Request Id</th><th>Item Name</th><th>Request Date</th></tr>");
	while(rs.next())
	 {
	      out.println("<tr><td>"+rs.getInt(1)+"</td>");
	      out.println("<td>"+rs.getString(2)+"</td>");
	  java.util.Date dt=rs.getDate(3);
String mon[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
	String st=dt.getDate()+"-"+mon[dt.getMonth()]+"-"+(dt.getYear()+1900);
	      out.println("<td>"+st+"</td>");
	 }
	out.println("</table></center>");
	rs.close();

	out.println("<br><br><center>");
	str="select Req_Id from Item_Request where Status='Request'";
	rs=stmt.executeQuery(str);
	out.println("<b>Select the Request Id to Add : </b>");
	out.println("<select name='rid'>");
	while(rs.next())
	 {
	         String x=rs.getString(1);
	         out.println("<option value='"+x+"'>"+x+"</option>");
	 }
	out.println("</select>");
	out.println("<input type='submit' value=' Add Requested Item '>");
	stmt.close();
	cn.close();
    }
   catch(Exception e)
    {
             out.println("<b>Error in Loading Item Data....</b>");
    }
%>
</body>