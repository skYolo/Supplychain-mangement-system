<body bgcolor='palegreen' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	String uname=request.getParameter("uname");
	String que=request.getParameter("que");
	String ans=request.getParameter("ans");

	if(uname.length()!=0 && que.length()!=0 && ans.length()!=0)
	 {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	Statement stmt=cn.createStatement();

                 String str="select EName,PWord,Question,Answer from EmployInfo where Ename='"+uname+"' and Question='"+que+"' and Answer='"+ans+"'";
	ResultSet rs=stmt.executeQuery(str);
	int c=0;
	String name="",pwd="";
	if(rs.next())	
	 {
	      c++;
	       name=rs.getString(1);
	       pwd=rs.getString(2);
	 }

	stmt.close();
	cn.close();
	
	if(c==0)
	       out.println("<center><b>Sorry, Security Question/Answer not matched..</b>");
	else
	 {
	       out.println("<br><br><br><br><center><b>Password retrieval Successfull....</b>");
	       out.println("<br><br><br><b>Hello "+name+", Your Password is : "+pwd);
	 }
	}
	else
	 {
	       out.println("<center><b>Incomplete Values are Entered...</b>");
	 }
out.println("<center><br><br><a href='index.jsp' >Click Here</a> => to Login In</a>");
    }
   catch(Exception e)
    {
	out.println("Error : "+e.toString());
    }
%>
</body>