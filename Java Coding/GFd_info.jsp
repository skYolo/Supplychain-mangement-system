<body background='Picture4.jpg'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	
	String ename=request.getParameter("ename");
	String Suggestions=request.getParameter("suggestions");
 	if(ename.length()!=0  && Suggestions.length()!=0)
	 {
	      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	      Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	     cn.setAutoCommit(false);
		  Statement stmt=cn.createStatement();
String str="insert into GFeedback values('"+ename+"','"+Suggestions+"')";
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