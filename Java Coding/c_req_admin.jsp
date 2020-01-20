<html>

<body background='Picture4.jpg' text='black'>
<form action='c_req_admin1.jsp' method='post'>
<%@ page language='java' import='java.sql.*'  %>
<%! 
PreparedStatement ps1=null;
ResultSet rs1=null;
int sum=0;
String s="";
%>


<%

      try
        {




					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");

ps1=cn.prepareStatement("select cust_id from client_table ");
							
rs1=ps1.executeQuery();
	out.println("Show the Client:<select name='eno' value=select empid>");
	
	while(rs1.next())
	 {
	         String x=rs1.getString(1);
			 out.println(x);
	         out.println("<option value='"+x+"'>"+x+"</option>");
	 }
	out.println("</select>");








					



rs1.close();
ps1.close();
	cn.close();
         }
        catch(Exception e)
         {
	
	out.println("<b>...............</b>");
         }
%>

<br><br><br>
<input type='submit' value='Show'></form>

</body>