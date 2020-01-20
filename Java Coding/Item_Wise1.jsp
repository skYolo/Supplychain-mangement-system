<body background='Picture4.jpg' text='black'>
<center><h3>Item Wise Overall Sales Report</h3>

<%@ page language='java' import='java.sql.*' %>
<%
    try
     {
	int icode=Integer.parseInt(request.getParameter("icode"));

	out.println("<hr color='blue'>");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

	String str="select Item_Name,Quantity from Bills where Item_Code="+icode;
	out.println("<table border='1' width='60%'>");
      out.println("<tr><th>Item Code</th><th>Item Name</th><th>Quantity</th></tr>");
	ResultSet rs=stmt.executeQuery(str);
	String iname="";
	int qty=0;
	while(rs.next())
	 {
	         iname=rs.getString(1);
	         qty=qty+Integer.parseInt(rs.getString(2));
                    }
           out.println("<tr><td>"+icode+"</td><td>"+iname+"</td><td>"+qty+"</td></tr>");	
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