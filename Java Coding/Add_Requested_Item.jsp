<body background='Picture4.jpg' text='black'>
<form name='f1' method='get' action='Add_Requested_Item1.jsp'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	int rid=Integer.parseInt(request.getParameter("rid"));
	session.setAttribute("rid",String.valueOf(rid));	

      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

	String str="select Req_Item from Item_Request where Req_Id="+rid;
	ResultSet rs=stmt.executeQuery(str);
	rs.next();
	String iname=rs.getString(1);

	str="select Max(Item_Code)+1 from Items";
	rs=stmt.executeQuery(str);
	rs.next();
	String ino=rs.getString(1);

	session.setAttribute("ino",ino);
	session.setAttribute("iname",iname);

	out.println("<center><table width='50%'>");
	out.println("<tr><th align='right'>Item Code : </th>");
	out.println("<td><input type='text' name='icode' value='"+ino+"' disabled size=10></td></tr>");
	out.println("<tr><th align='right'>Item Name : </th>");
	out.println("<td><input type='text' name='iname' value='"+iname+"' disabled size=20></td></tr>");
	out.println("<tr><th align='right'>Item Rate : </th>");
	out.println("<td><input type='text' name='rate'></td></tr>");
	out.println("<tr><th align='right'>Initial Quantity : </th>");
	out.println("<td><input type='text' name='qty'></td></tr>");
	out.println("</table>");
    	stmt.close();
	cn.close();
	out.println("<br><br><input type='submit' value=' Add Item '>");
         }
        catch(Exception e)
         {
	out.println("<b>Error : "+e.toString());
         }
%>