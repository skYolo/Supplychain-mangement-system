<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	String bid=(String)session.getAttribute("bid");
	String cname=(String)session.getAttribute("cname");
	String cdate=(String)session.getAttribute("bdate");
	int amt=Integer.parseInt(request.getParameter("amt"));

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

	String str="insert into Paid_Bills values("+Integer.parseInt(bid)+",'"+cname+"','"+cdate+"',"+amt+")";

	stmt.executeUpdate(str);

	out.println("<b>Bill Payment is Successfull....</b>");
	stmt.close();
	cn.close();
    }
   catch(Exception e)
    {
            out.println("<b>Error in data Values...</b>");
    }
%>