
 <html>

<body background='Picture4.jpg' text='black'>
<form action='finish.jsp' method='post'>
<%@ page autoFlush='true' language='java' import='java.sql.*'  %>
<%! 
PreparedStatement ps=null;
Statement ps1=null;
ResultSet rs,rs1=null;
 String sum="";
%>


<%

      try
        {
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");


					ps=cn.prepareStatement("select * from totalinfo ");

						rs=ps.executeQuery();
	
						out.println("<table border='8%' width='100%'>");
						
	out.println("<tr><th>ItemCode</th><th>ItemName</th>  <th>Model</th> <th>Specification</th>  <th>Warenty Period</th><th>Cost</th>");
						
						
						while(rs.next()){
							 
                                    int i=rs.getInt(6);
						 out.println("<tr><td>"+rs.getString(1)+"</td>");
						 out.println("<td>"+rs.getString(2)+"</td>");
						 out.println("<td>"+rs.getString(3)+"</td>");
						 out.println("<td>"+rs.getString(4)+"</td>");
						 out.println("<td>"+rs.getString(5)+"</td>");
	 				      out.println("<td>"+i+"</td>");
							
						
											}		
                         						
						out.println("</table></center>");
	



String s=(String)session.getAttribute("sum");

out.println("The sum the item:"+s);


rs.close();

ps.close();

	cn.close();
         }
        catch(Exception e)
         {
	
	out.println("<b>pending final product -----------------</b>");
         }
%>

	</form>


<a href='c_login.jsp' style='text-decoration:none'>Back</a>
</body>