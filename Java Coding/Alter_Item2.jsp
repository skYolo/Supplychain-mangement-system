<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	String icode=(String)session.getAttribute("icode");
	String des=request.getParameter("des");
	int rate=Integer.parseInt(request.getParameter("rate"));

 	if(des.length()!=0)
	 {
	           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	      Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	      Statement stmt=cn.createStatement();
String str="update Items set Description='"+des+"',Rate="+rate+" where Item_Code="+Integer.parseInt(icode);
	      stmt.executeUpdate(str);
	      out.println("<b>Item Data Updated Successfully......</b>");
	      stmt.close();
	      cn.close();
	 }
	else
	 {
	       out.println("<b>Incomplete Data Values are Provided.....</b>");
	 }
    }
   catch(Exception e)
    {
	out.println("<b>Error in Saving the Employee Data....</b>");
    }
%>
</body>