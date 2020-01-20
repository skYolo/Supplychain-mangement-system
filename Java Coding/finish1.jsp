
 <html>

<body background='Picture4.jpg' text='black'>

<%@ page language='java' import='java.sql.*'  %>
<%! 
PreparedStatement ps=null;

%>


<%

      try
        {
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");


					
                     out.println("***********DATA SUBMITED SUCCESSFULLY***************");	
					
	
         }
        catch(Exception e)
         {
	
	out.println("<b>.......................................................................</b>");
         }
%>
<a href='index.jsp' style='text-decoration:none'>Back to Home</a>
	