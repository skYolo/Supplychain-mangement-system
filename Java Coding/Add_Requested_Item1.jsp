<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	String ino=(String)session.getAttribute("ino");
	String iname=(String)session.getAttribute("iname");
	int rate=Integer.parseInt(request.getParameter("rate"));
	int qty=Integer.parseInt(request.getParameter("qty"));

      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

String str="insert into Items values("+Integer.parseInt(ino)+",'"+iname+"',"+rate+","+qty+")";

	stmt.executeUpdate(str);
	String rid=(String)session.getAttribute("rid");
str="update Item_Request set Status='Responsed' where Req_Id="+Integer.parseInt(rid);
	stmt.executeUpdate(str);
	out.println("<b>Requested Item Added Successfully....</b>");
       	stmt.close();
	cn.close();
        }
       catch(Exception e)
        {
	out.println("<b>Error ...</b>");
        }
%>