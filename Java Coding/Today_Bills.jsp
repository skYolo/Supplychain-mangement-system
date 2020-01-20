<body bgcolor='hotpink' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
    try
     {
 	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

String mon[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
	java.util.Date dat=new java.util.Date();
	String st1=dat.getDate()+"-"+mon[dat.getMonth()]+"-"+(dat.getYear()+1900);
	String str="select * from Bills where Bill_Date=#"+st1+"# order by Bill_Id";
	ResultSet rs=stmt.executeQuery(str);

	out.println("<center><h2>Bill Information</h2><hr color='blue'>");
	out.println("<table border='1' width='80%'>");
  out.println("<tr><th>Bill Id</th><th>Name</th><th>Tran_Date</th><th>Item Code</th>");
  out.println("<th>Item Name</th><th>Rate</th><th>Quantity</th><th>Amount</th></tr>");
	while(rs.next())
	 {
	         out.println("<tr><td>"+rs.getString(1)+"</td>");
	         out.println("<td>"+rs.getString(2)+"</td>");
	        java.util.Date dt=rs.getDate(3);

	String st=dt.getDate()+"-"+mon[dt.getMonth()]+"-"+(dt.getYear()+1900);
	         out.println("<td>"+st+"</td>");
	         out.println("<td>"+rs.getString(4)+"</td>");
	         out.println("<td>"+rs.getString(5)+"</td>");
	         out.println("<td>"+rs.getInt(6)+"</td>");
	         out.println("<td>"+rs.getInt(7)+"</td>");
	         out.println("<td>"+rs.getInt(8)+"</td></tr>");
	 }
	out.println("</table></center>");
	stmt.close();
	cn.close();
     }
    catch(Exception e)
    {
             out.println("<b>Error in Loading Values...</b>"+e.toString());
    }
%>