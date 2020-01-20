<body background='Picture4.jpg'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	int eno=Integer.parseInt(request.getParameter("eno"));
	String ename=request.getParameter("ename");
	String qualif=request.getParameter("qualif");
	String des=request.getParameter("des");
	int sal=Integer.parseInt(request.getParameter("sal"));
	String jdate=request.getParameter("jdate");
	String pwd=request.getParameter("pwd");
	String que=request.getParameter("que");
	String ans=request.getParameter("ans");

 	if(ename.length()!=0 && qualif.length()!=0 && des.length()!=0 && jdate.length()!=0 && pwd.length()!=0 && que.length()!=0 && ans.length()!=0)
	 {
	      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	      Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	      Statement stmt=cn.createStatement();
String str="insert into EmployInfo values("+eno+",'"+ename+"','"+qualif+"','"+des+"',"+sal+",'"+jdate+"','"+pwd+"','"+que+"','"+ans+"')";
	      stmt.executeUpdate(str);
	      out.println("<b>Employee Data Added Successfully......</b>");
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
	out.println("<b>Error in Saving the Employee Data....</b>"+e.toString());
    }
%>
</body>