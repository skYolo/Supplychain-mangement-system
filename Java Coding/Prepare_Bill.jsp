<body background='Picture4.jpg' text='black'>
<form name='f1' method='get' action='Prepare_Bill1.jsp'>
<center><b>Bill Preparation Form</b>
<%@ page language='java' import='java.sql.*' %>
<%
        int no=0;
       try
        {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery("select Max(Bill_Id) from Bills");
	if(rs.next())
	     no=Integer.parseInt(rs.getString(1))+1;

	stmt.close();
	cn.close();
        }
       catch(Exception e)
        {
	no=1001;
        }
%>
<hr color='red'>
<br>
<table>
      <tr>
	<th align='right'>Bill Id :</th>
<% out.println("<td><input type='text' name='bid' size=10 value='"+no+"'></td>");    %>
      </tr>
      <tr>
	<th align='right'>Customer Name :</th>
	<td><input type='text' name='cname' size=20></td>
<%
           java.util.Date dt=new java.util.Date();
     String mon[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
         String st=dt.getDate()+"-"+mon[dt.getMonth()]+"-"+(dt.getYear()+1900);
	out.println("<th align='right'>Bill Date :</th>");
	out.println("<td><input type='text' name='bdate' size=10 value='"+st+"'></td>");
%>
      </tr>
	<th align='right'>Item Code :</th>
	<td><select name='icode'>
<%
       try
        {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn1=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt1=cn1.createStatement();
	ResultSet rs1=stmt1.executeQuery("select Item_Code from Items");
	while(rs1.next())
 	 {
	        String x=rs1.getString(1);
	        out.println("<option value='"+x+"'>"+x+"</option>");	      
	 }     
	stmt1.close();
	cn1.close();
        }
       catch(Exception e)
        {        }
%>
	
	</select></td>
     </tr>
</table>
<br>
<input type='submit' value='    Continue    '>
</form>
</body>