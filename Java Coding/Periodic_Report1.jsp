<body background='Picture4.jpg' text='black'>
<center><h3>Periodic Report Form</h3>

<%@ page language='java' import='java.sql.*' %>
<%
    try
     {
	String fdate=request.getParameter("fdate");
	String tdate=request.getParameter("tdate");

	out.println("<table width='70%'><tr><th>From Date : </th><td>"+fdate+"</td>");
	out.println("<th>To Date : </th><td>"+tdate+"</td></tr></table>");
	out.println("<hr color='blue'>");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

	String str="select distinct(Item_Code),Item_Name from Bills where Bill_Date between #"+fdate+"# and #"+tdate+"#";

	out.println("<table border='1' width='60%'>");
      out.println("<tr><th>Item Code</th><th>Item Name</th><th>Quantity</th></tr>");
	ResultSet rs=stmt.executeQuery(str);
	while(rs.next())
	 {
	         int icode=Integer.parseInt(rs.getString(1));
		         String iname=rs.getString(2);
         String st="select Quantity from Bills where Item_Code="+icode+" and Bill_Date between #"+fdate+"# and #"+tdate+"#";
	Statement stmt1=cn.createStatement();
	ResultSet rs1=stmt1.executeQuery(st);
	      int qty=0;
	      while(rs1.next())
	       {
	        	qty=qty+Integer.parseInt(rs1.getString(1));      
	       }
	    stmt1.close();
                out.println("<tr><td>"+icode+"</td><td>"+iname+"</td><td>"+qty+"</td></tr>");
	 }
	out.println("</table>");
	stmt.close();
	cn.close();
     }
    catch(Exception e)
     {
          out.println("<b>Invalid Date Values are Entered....</b>"+e.toString());
     }
%>
</body>