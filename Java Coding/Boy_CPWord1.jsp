<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
     {
	String opwd=request.getParameter("opwd");
	String npwd=request.getParameter("npwd");
	String cpwd=request.getParameter("cpwd");
	String eid=(String)session.getAttribute("eid");
	String pwd=(String)session.getAttribute("pwd");

	//out.println(pwd+" == "+opwd);
	if(!pwd.equals(opwd))
	 {
	        out.println("<b>Password and OldPassWord does not match....</b>");
	 }
	else
	 {
	        if(!npwd.equals(cpwd))
	         {
	                out.println("<b>New password and Confirm Password does not Match...");	
	         }
	        else
	        {
		String str="select * from EmployInfo where PWord='"+npwd+"'";
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
		Statement stmt=cn.createStatement();
		ResultSet rs=stmt.executeQuery(str);
		int c=0;
		if(rs.next())
	 	    c++;		

		if(c==0)
		 {
String st="update EmployInfo set PWord='"+npwd+"' where EmpNo="+Integer.parseInt(eid);
	stmt.executeUpdate(st);
		out.println("Password Changed Successfully....");
		 }
		else if(c!=0)
		 {
		      out.println("<b>Password Already Exists, Try Again.....</b>");
		 }
		stmt.close();
		cn.close();
	        }
	 }
     }	
    catch(Exception e1)
     {
	out.println("<b>Error in data Values...</b>");
     }
%>
</body>