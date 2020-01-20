<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery("select * from EmployInfo");
	out.println("<center><h3>Employee Details</h3><hr color='blue'>");
	out.println("<table border='1' width='100%'>");
	out.println("<tr><th>Emp No</th><th>Emp Name</th><th>Qualification</th>");
	out.println("<th>Designation</th><th>Salary</th><th>Joined Date</th></tr>");
	while(rs.next())
	 {
	      out.println("<tr><td>"+rs.getInt(1)+"</td>");
	      out.println("<td>"+rs.getString(2)+"</td>");
	      out.println("<td>"+rs.getString(3)+"</td>");
	      out.println("<td>"+rs.getString(4)+"</td>");
	      out.println("<td>"+rs.getInt(5)+"</td>");
	      java.util.Date dt=rs.getDate(6);
String mon[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
	String st=dt.getDate()+"-"+mon[dt.getMonth()]+"-"+(dt.getYear()+1900);
	      out.println("<td>"+st+"</td></tr>");
	 }
	out.println("</table></center>");
	rs.close();
	stmt.close();
	cn.close();
    }
   catch(Exception e)
    {
             out.println("<b>Error in Loading Employee Data....</b>");
    }
%>
</body>