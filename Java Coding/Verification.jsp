<%@ page language='java' import='java.sql.*' %>
<%
 	String uname=request.getParameter("uname");
	String pwd=request.getParameter("pwd");
 
	if(uname.length()!=0 && pwd.length()!=0)
	 {
	        if(uname.equals("Admin") && pwd.equals("Admin"))
	              response.sendRedirect("AdminForm.jsp");
                else
	         {
		   try
		    {
	      		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 	 	           Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
			Statement stmt=cn.createStatement();
String str="select * from client_table where usn='"+uname+"' and pwd='"+pwd+"'";
		ResultSet rs=stmt.executeQuery(str);
	
		String uid=""; String pwd1=""; String cust_id="";
		if(rs.next())
		 {
	   cust_id=rs.getString(1);	                
       uid=rs.getString(12);
	   pwd1=rs.getString(13);

		 } 

		          if(uname.equals(uid) && pwd.equals(pwd1))
				{
					
					application.setAttribute("cust_id",cust_id);

						response.sendRedirect("c_login.jsp");
				}
				  else
			 {
					  out.println("<b><center>UserName/PassWord Not Entered....");
	       out.println("<hr><a href='index.jsp'>Click Here </a> -> To Try Again");
			 }
				  
		rs.close();
		stmt.close();
		cn.close();

	                  
	 	}
	                  catch(Exception e)
		 {
	       out.println("<b><center>UserName/PassWord Not Entered....");
	       out.println("<hr><a href='index.jsp'>Click Here </a> -> To Try Again");
		 }
	         }
	 }
	else
	 {
	       out.println("<b><center>UserName/PassWord Not Entered....");
	       out.println("<hr><a href='index.jsp'>Click Here </a> -> To Try Again");
	 }

%>