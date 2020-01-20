<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*,java.util.*'  autoFlush='true' buffer='32kb' isThreadSafe='true'%>
<%! PreparedStatement ps1,ps2,ps3,ps4,ps5,ps6,ps7 = null;
	ResultSet rs1,rs2,rs3,rs4,rs5,rs6,rs7=null; 
	Vector v=null;
	Vector v1=new Vector();
    TreeMap tm=null;

String s1=""; String s2=""; String s3=""; String s4=""; String s5=""; String s6=""; 	
	String x1=""; String x2=""; String x3=""; String x4=""; String x5=""; String x6=""; 	
String  ob11,ob12=null;
	%>
<%
      try
        {
      	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");

	String kid1=(String)application.getAttribute("kid1");
	
	ps1  = cn.prepareStatement("select * from Dealer1 where ItemCode=?");
    ps1.setString(1, kid1);
    rs1 =ps1.executeQuery(); 

out.println("<table border='0%' width='50%'>");
	

	if(rs1.next())
	 {
s1=rs1.getString(1);
s2=rs1.getString(2);
 s3=rs1.getString(3);
s4=rs1.getString(4);
s5=rs1.getString(5);
s6=rs1.getString(6);

	      out.println("<tr><td>"+s1+"</td>");
	      out.println("<td>"+s2+"</td>");
	      out.println("<td>"+s3+"</td>");
		   out.println("<td>"+s4+"</td>");
		  out.println("<td>"+s5+"</td>");
	 	      out.println("<td>"+s6+"</td>");
if (storeList == null)
		storeList=new ArrayList();
    arrayList = (ArrayList)session.getAttribute("records");


if(v==null)
		 {
	v=new Vector();
v.addElement(s1);
v.addElement(s2);
v.addElement(s3);
v.addElement(s4);
v.addElement(s5);
v.addElement(s6);

Enumeration e=v.elements();

while(e.hasMoreElements())
{
  ob12=(String)e.nextElement();
out.println(ob12);
}


			   }
if(tm==null)
	tm=TreeMap();
int vectorsize=v.size();
 int increment = 5;
    int fromIndex = 0;
 int toIndex = increment;
  String uri = request.getRequestURI();
    String previous= "Previous";
    String next = "Next";
    List displayList = null;

	
	String kid2=(String)application.getAttribute("kid2");
	
	ps2=cn.prepareStatement("select * from Dealer2 where MouseID=?");
    ps2.setString(1, kid2);
    rs2 =ps2.executeQuery();
	
 if(rs2.next())
			{
x1=rs2.getString(1);
x2=rs2.getString(2);
 x3=rs2.getString(3);
x4=rs2.getString(4);
x5=rs2.getString(5);
x6=rs2.getString(6);


out.println("<tr><td>"+x1+"</td>");
	      out.println("<td>"+x2+"</td>");
	      out.println("<td>"+x3+"</td>");
	 	      out.println("<td>"+x4+"</td>");
               out.println("<td>"+x5+"</td>");
			    out.println("<td>"+x6+"</td>");
			}

v1.addElement(x1);
v1.addElement(x2);
v1.addElement(x3);
v1.addElement(x4);
v1.addElement(x5);
v1.addElement(x6);

Enumeration e1=v1.elements();

while(e1.hasMoreElements())
{
 String ob11=(String)e1.nextElement();
out.println(ob11);
}








	String kid3=(String)application.getAttribute("kid3");
	ps3=cn.prepareStatement("select * from Dealer3 where KeyboardID=?");
    ps3.setString(1, kid3);
    rs3 =ps3.executeQuery();

	String kid4=(String)application.getAttribute("kid4");
   ps4=cn.prepareStatement("select * from Dealer4 where HarddiskID=?");
    ps4.setString(1, kid4);
    rs4 =ps4.executeQuery();

	String kid5=(String)application.getAttribute("kid5");
	ps5=cn.prepareStatement("select * from Dealer5 where MotherboardID=?");
    ps5.setString(1, kid5);
    rs5 =ps5.executeQuery();


  	String kid6=(String)application.getAttribute("kid6");
  ps6=cn.prepareStatement("select * from Dealer6 where RAMID=?");
    ps6.setString(1, kid6);
    rs6 =ps6.executeQuery();



	String kid7=(String)application.getAttribute("kid7");
ps7=cn.prepareStatement("select * from Dealer7 where ProcessorID=?");
    ps7.setString(1, kid7);
    rs7 =ps7.executeQuery();




	
	







	






if(rs3.next())
			{
out.println("<tr><td>"+rs3.getString(1)+"</td>");
	      out.println("<td>"+rs3.getString(2)+"</td>");
	      out.println("<td>"+rs3.getInt(3)+"</td>");
	 	      out.println("<td>"+rs3.getString(4)+"</td>");
               out.println("<td>"+rs3.getInt(5)+"</td>");
			}






 if(rs4.next())
			{

			out.println("<tr><td>"+rs4.getString(1)+"</td>");
	      out.println("<td>"+rs4.getString(2)+"</td>");
	      out.println("<td>"+rs4.getString(3)+"</td>");
	 	      out.println("<td>"+rs4.getString(4)+"</td>");
               out.println("<td>"+rs4.getInt(5)+"</td>");
                 out.println("<td>"+rs4.getString(6)+"</td>");
			
			}





if(rs5.next())
	 {
	       out.println("<tr><td>"+rs5.getString(1)+"</td>");
	      out.println("<td>"+rs5.getString(2)+"</td>");
	      out.println("<td>"+rs5.getString(3)+"</td>");
	 	      out.println("<td>"+rs5.getInt(4)+"</td>");
	 }






if(rs6.next())
	 {
	       out.println("<tr><td>"+rs6.getString(1)+"</td>");
	      out.println("<td>"+rs6.getString(2)+"</td>");
	      out.println("<td>"+rs6.getInt(3)+"</td>");
	 	      out.println("<td>"+rs6.getString(4)+"</td>");
               		    
	 }





if(rs7.next())
	 {
	       out.println("<tr><td>"+rs7.getString(1)+"</td>");
	      out.println("<td>"+rs7.getString(2)+"</td>");
	      out.println("<td>"+rs7.getString(3)+"</td>");
	 	      
			    	 }

out.println("</table></center>");


	rs1.close(); rs2.close(); rs3.close(); rs4.close(); rs5.close(); rs6.close(); rs7.close(); 
	ps1.close(); ps2.close(); ps3.close(); ps4.close(); ps5.close(); ps6.close(); ps7.close();
	cn.close();
         }
        catch(Exception e)
         {
	out.println("<b>.............................</b>");
         }
%>
</body>