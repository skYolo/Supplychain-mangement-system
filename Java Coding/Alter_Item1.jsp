<body background='Picture4.jpg' text='black'>
<form name='f1' method='get' action='Alter_Item2.jsp'>
<center><h3>Employee Alteration Form</h3>
<hr color='red'>
<%@ page language='java' import='java.sql.*' %>
<%
      try
        {
	int no=Integer.parseInt(request.getParameter("icode"));
	session.setAttribute("icode",String.valueOf(no));
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery("select * from Items where Item_Code="+no);
	rs.next();
	out.println("<table><tr><th align='right'>Item Code :</th>");
      out.println("<td><input type='text' name='icode' value='"+rs.getInt(1)+"' disabled></td></tr>");
	out.println("<tr><th align='right'>Description :</th>");
  out.println("<td><input type='text' name='des' value='"+rs.getString(2)+"'></td></tr>");
	out.println("<tr><th align='right'>Rate :</th>");
  out.println("<td><input type='text' name='rate' value='"+rs.getInt(3)+"'></td></tr>");
	out.println("</table><input type='submit' value='   Update Record  '></form>");
      	rs.close();
	stmt.close();
	cn.close();
           }
          catch(Exception e)
           {
	out.println("<b>No Employee Number is Selected....</b>");
           }
%>