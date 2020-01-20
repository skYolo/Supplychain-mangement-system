
 <html>

<body background='Picture4.jpg' text='black'>
<form action='finish.jsp' method='post'>
<%@ page autoFlush='true' language='java' import='java.sql.*'   %>
<%! 
PreparedStatement ps,ps1=null;

ResultSet rs,rs1=null;
int sum=0;
%>


<%

      try
        {
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");


					ps=cn.prepareStatement("select * from totalinfo");
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
						
Integer in=new Integer(sum);

out.println("The sum of the items:"+sum);




session.setAttribute("sum",in.toString());

                  


rs.close();
rs1.close();
ps.close();
ps1.close();
	cn.close();
         }
        catch(Exception e)
         {
	
	out.println("<b>................</b>");
         }
%>

	<center><h2>Do you want to Flush the Data<h2>
	<input type='Submit' value='Finish'></center></form>
</body>