<body background='Picture4.jpg text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
         try
          {
	int id=Integer.parseInt(request.getParameter("icode"));
	String des=request.getParameter("des");
	int rate=Integer.parseInt(request.getParameter("rate"));
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

	if(des.length()!=0)
	 {
	       String str="insert into Items values("+id+",'"+des+"',"+rate+",0)";
	       stmt.executeUpdate(str);
	       out.println("<b>New Item Added to the List Successfully....");	
	 }
	else
	 {
	      out.println("<b>Item Name Not Specified....</b>");
	 }
	stmt.close();
	cn.close();
           }
          catch(Exception e)
           {
	out.println("<b>InComplete Item Details are Provided.....</b>");
           }
%>
</body>