
<body background='Picture4.jpg'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	String name=request.getParameter("name");
	String productname=request.getParameter("productname");
	String comments=request.getParameter("comments");
if(name.length()!=0  && productname.length()!=0)
	 {
	      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	      Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	     cn.setAutoCommit(false);
		  Statement stmt=cn.createStatement();
String str="insert into PFeedback values('"+name+"','"+productname+"','"+comments+"')";
	      stmt.executeUpdate(str);
		  cn.commit();
	      out.println("<b>Feedback Added Successfully......</b>");
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
	out.println("<b>Error in Saving the Feedback information....</b>"+e.toString());
    }
%>
</body>
	
