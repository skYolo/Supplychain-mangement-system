<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
    try
     {
              String uname=request.getParameter("uname");
              String opwd=request.getParameter("opwd");
              String npwd=request.getParameter("npwd");
              String cpwd=request.getParameter("cpwd");
              String uname1=(String)session.getAttribute("uname");
              String pwd1=(String)session.getAttribute("pwd");

              if(uname.length()!=0 && opwd.length()!=0 && npwd.length()!=0 && cpwd.length()!=0)
               {
	    if(uname.equals(uname1) && opwd.equals(pwd1))
	     {
	           if(npwd.equals(cpwd))
	            {
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
		Statement stmt=cn.createStatement();
		
		String str="select PWord from EmployInfo where PWord='"+npwd+"'";
		ResultSet rs=stmt.executeQuery(str);
		int c=0;
		if(rs.next())
		 {
		         c++;
	 	 }
		
		if(c==0)
		 {
      str="update EmployInfo set PWord='"+npwd+"' where PWord='"+opwd+"'";
		stmt.executeUpdate(str);
		session.setAttribute("pwd",npwd);
		out.println("<b>Password Changed Successfully....");
		 }
		else
		 {
		       out.println("<b>Password already Exists.. Try Again...");
		 }
	            }
	           else
	            {
	               out.println("<b>New Password And Confirm Password does not match..");
	            }
	     }
	    else
	     {
	            out.println("<b>UserName/Password does not match...</b>");
	     }
               }
              else
              {
	  out.println("<b>Incomplete Data Values are Entered....</b>");
               }
     }
    catch(Exception e)
     {
             out.println("<b>Error : "+e.toString());
     }
%>
</body>