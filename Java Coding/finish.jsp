
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


					ps=cn.prepareStatement("delete * from totalinfo");
						int i=ps.executeUpdate();
                     out.println("********************Data is Flushed****************");	
						
ps.close();
	cn.close();
         }
        catch(Exception e)
         {
	
	out.println("<b>................</b>");
         }
%>

	