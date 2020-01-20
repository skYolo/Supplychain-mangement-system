<body background='Picture4.jpg' text='black'>
<form name='f1' method='get' action='Add_Stock2.jsp'>
<%@ page language='java' import='java.sql.*' %>
<%
      try
        {
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

	int icode=Integer.parseInt(request.getParameter("icode"));
	session.setAttribute("icode",String.valueOf(icode));
	String str="Select * from Items where Item_Code="+icode;

	ResultSet rs=stmt.executeQuery(str);
	if(rs.next())
	 {
       out.println("<center><table width='50%'><tr><th align='right'>Item Code : </th>");
       out.println("<td><input type='text' name='t1' value='"+rs.getString(1)+"' disabled></td></tr>");
	       out.println("<tr><th align='right'>Description : </th>");
out.println("<td><input type='text' name='t2' value='"+rs.getString(2)+"' disabled></td></tr>");
	       out.println("<tr><th align='right'>Rate : </th>");
out.println("<td><input type='text' name='t3' value='"+rs.getInt(3)+"' disabled></td></tr>");
	       out.println("<tr><th align='right'>Available Stock : </th>");
  out.println("<td><input type='text' name='t4' value='"+rs.getInt(4)+"' disabled></td></tr>");
	 }
	       out.println("<tr><th align='right'>Enter Current Stock Value : </th>");
       out.println("<td><input type='text' name='t5'></td></tr></table>");

	out.println("<br><br><br><br><input type='submit' value='   Add Stock  '>");
	out.println("</form></body>");
      	rs.close();
	stmt.close();
	cn.close();
         }
        catch(Exception e)
         {
	out.println("<b>Error in Loading Values...</b>");
         }
%>
</body>