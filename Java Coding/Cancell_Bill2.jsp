<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	int icode=Integer.parseInt(request.getParameter("icode"));
	String bid=(String)session.getAttribute("bid");

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

String str="Select * from Bills where Bill_Id="+Integer.parseInt(bid)+" and Item_Code="+icode;
	ResultSet rs=stmt.executeQuery(str);
	rs.next();
	String cname=rs.getString(2);
	String tdate=rs.getString(3);
	int ic=rs.getInt(4);
	String iname=rs.getString(5);
	int rate=rs.getInt(6); 
	int qty=rs.getInt(7);
	int amt=rs.getInt(8);

	str="select Amount from Paid_Bills where Bill_Id="+Integer.parseInt(bid);
	rs=stmt.executeQuery(str);
	rs.next();
	int tamt=rs.getInt(1);
	tamt=tamt-amt;

	str="insert into Cancelled_Bills values("+Integer.parseInt(bid)+",'"+cname+"','"+tdate+"',"+ic+",'"+iname+"',"+rate+","+qty+","+amt+")";
	stmt.executeUpdate(str);
	
       str="delete from Bills where Bill_Id="+Integer.parseInt(bid)+" and Item_Code="+icode;
         stmt.executeUpdate(str);

     str="update Paid_Bills set Amount="+tamt+" where Bill_Id="+Integer.parseInt(bid);
       stmt.executeUpdate(str);

     str="select Stock from Items where Item_Code="+icode;
          rs=stmt.executeQuery(str);
	rs.next();
	int stk=rs.getInt(1);
	stk=stk+qty;
     str="Update Items set Stock="+stk+" where Item_Code="+icode;
	stmt.executeUpdate(str);

	out.println("<b>Item Cancelled from the Bill Successfully....</b>");
	stmt.close();
	cn.close();
    }
   catch(Exception e)
    {
	out.println("<b>Error in Loading Values...</b>");
    }
%>