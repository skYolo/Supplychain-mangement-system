<%@ page language='java' import='java.sql.*' %>
<form name='f1' method='get' action='Prepare_Bill3.jsp'>
<%
    try
     {
	int icode=Integer.parseInt(request.getParameter("id"));
	String iname=request.getParameter("iname");
	int rate=Integer.parseInt(request.getParameter("rate"));
	int qty=Integer.parseInt(request.getParameter("qty"));
	int amt=Integer.parseInt(request.getParameter("amt"));

	String bid=(String)session.getAttribute("bid");
	String cname=(String)session.getAttribute("cname");
	String cdate=(String)session.getAttribute("bdate");
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

	String str="select Stock from Items where Item_Code="+icode;
	ResultSet rs=stmt.executeQuery(str);
	rs.next();
	int stk=rs.getInt(1);
	if(qty<=stk)	
	 {
	str="insert into Bills values("+bid+",'"+cname+"','"+cdate+"',"+icode+",'"+iname+"',"+rate+","+qty+","+amt+")";
	stmt.executeUpdate(str);
	
	stk=stk-qty;
	str="update Items set Stock="+stk+" where Item_Code="+icode;
	stmt.executeUpdate(str);
	}
	else
	 {
	      out.println("<b>Quantity Exceeded the Available Stock....</b>");
	 }

	
	String st="select Item_Code,Item_Name,Rate,Quantity,Amount from Bills where Bill_Id="+bid;
	rs=stmt.executeQuery(st);
	out.println("<center><table border='1' width='80%'>");
	out.println("<tr><th>Item Code</th><th>Item Name</th><th>Rate</th>");
	out.println("<th>Quantity</th><th>Amount</th></tr>");
	while(rs.next())
	 {
	         out.println("<tr><td>"+rs.getString(1)+"</td>");
	         out.println("<td>"+rs.getString(2)+"</td>");
	         out.println("<td>"+rs.getInt(3)+"</td>");
	         out.println("<td>"+rs.getInt(4)+"</td>");
	         out.println("<td>"+rs.getInt(5)+"</td></tr>");
	 }
	out.println("</table>");
%>	 	
      </tr>
	<th align='right'>Item Code :</th>
	<td><select name='icode'>
<%
	rs=stmt.executeQuery("select Item_Code from Items");
	while(rs.next())
 	 {
	        String x=rs.getString(1);
	        out.println("<option value='"+x+"'>"+x+"</option>");	      
	 }     
	out.println("</select><input type='submit' value='    Continue    '>");
	stmt.close();
	cn.close();

out.println("<br><br><a href='Pay_Bill.jsp'>Click Here</a> => To Pay the Bill Amount");
     }
    catch(Exception e)
     {
	out.println("<b>Invalid data Values are Entered...<b>"+e.toString());
     }
%>