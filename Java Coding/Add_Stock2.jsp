<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
      try
        {
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

	int stk=Integer.parseInt(request.getParameter("t5"));	
	String icode=(String)session.getAttribute("icode");
	String str="select Stock from Items where Item_Code="+Integer.parseInt(icode);
	ResultSet rs=stmt.executeQuery(str);
	rs.next();
	int qty=rs.getInt(1);
	qty=stk+qty;
	str="update Items set Stock="+qty+" where Item_Code="+Integer.parseInt(icode);
	stmt.executeUpdate(str);
	out.println("<b>Stock added to the Item Successfuly.....</b>");
	stmt.close();
	cn.close();
         }
        catch(Exception e)
         {
	out.println("<b>Error in Stock Details</b>"+e.toString());
         }
%>
</body>