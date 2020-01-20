<form name='f1' method='get' action='Prepare_Bill2.jsp'>
<script language='javascript'>
     function calc()
     {
               var r1=parseInt(document.f1.rate.value);
               var q1=parseInt(document.f1.qty.value);

               document.f1.amt.value=q1*r1;
     }
</script>
<%@ page language='java' import='java.sql.*' %>
<%
   try
     {
	int icode=Integer.parseInt(request.getParameter("icode"));

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();
	String str="select * from Items where Item_Code="+icode;
	ResultSet rs=stmt.executeQuery(str);
	rs.next();
	out.println("<center><br><table border='0' width='60%'>");
	out.println("<tr><th align='right'>Item Code : </th>");
                 out.println("<td><input type='text' name='id' value='"+icode+"' size=10></td></tr>");
 	out.println("<tr><th align='right'>Item Name : </th>");
out.println("<td><input type='text' name='iname' size=30 value='"+rs.getString(2)+"'></td>");
 	out.println("<th align='right'>Rate : </th>");
out.println("<td><input type='text' name='rate' size=10 value='"+rs.getInt(3)+"'></td></tr>");
	rs.close();
	stmt.close();
	cn.close();
 	out.println("<tr><th align='right'>Quantity : </th>");
                 out.println("<td><input type='text' name='qty' size=10 onBlur='calc()'></td>");
 	out.println("<th align='right'>Amount : </th>");
                 out.println("<td><input type='text' name='amt' size=10></td></tr></table>");
	out.println("<input type='submit' value='   Next Item  '></form>");
     } 
    catch(Exception e)
     {
            out.println("<b>Error in Data Values...</b>");
     }
%>