<%@ page language='java' import='java.sql.*' %>
<%
	  String cmdBrowse=request.getParameter("cmdBrowse");
	  String eno=request.getParameter("eno");
	  String read=request.getParameter("read");
	  String write=request.getParameter("write");
	  String delete=request.getParameter("delete");
	  String admin=request.getParameter("admin");
	  String  download=request.getParameter("download");


	     								Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 	 									Connection cn=DriverManager.getConnection("jdbc:odbc:SFSS");
										Statement stmt=cn.createStatement();
										String str="insert into permissions values('"+cmdBrowse+"','"+eno+"','"+read+"','"+write+"','"+delete+"','"+admin+"','"+download+"')";
										int i=stmt.executeUpdate(str);
	
												
									out.println("data updated");
													
		
		
		
		stmt.close();
		cn.close();

	                  
	 	
%>