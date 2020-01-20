
 <html>

<body background='Picture4.jpg' text='black'>
<form action='finish3.jsp' method='post'>
<%@ page language='java' import='java.sql.*'  %>
<%! 
PreparedStatement ps=null;
Statement ps1=null;
ResultSet rs,rs1=null;
int sum=0;
%>


<%

      try
        {

			String cust_id=request.getParameter("eno");
			
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");


					ps=cn.prepareStatement("select * from c_totalinfo where cust_id=?");
						ps.setString(1,cust_id);
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
							sum=sum+i;										
						
											}		
                         						
						out.println("</table></center>");




rs.close();

ps.close();

	cn.close();
         }
        catch(Exception e)
         {
	
	out.println("<b>................</b>");
         }
%>
Flush the Data <input type='submit' value='submit'><br><br>
<br><br><br>

	</form>
</body>