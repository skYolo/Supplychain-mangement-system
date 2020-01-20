<body background='Picture4.jpg' text='black'>

<%@ page language='java' import='java.sql.*'  %>

<%! 
PreparedStatement ps=null, ps1=null, ps2=null, ps3=null, ps4=null, ps5=null, ps6=null, ps7=null, ps8=null, ps9=null,ps80=null,ps81=null, ps82=null, ps83=null,ps84=null;	
ResultSet rs1=null, rs2=null, rs3=null, rs4=null, rs5=null, rs6=null, rs7=null, rs8=null, rs9=null, rs80=null, rs81=null, rs82=null, rs83=null,rs84=null;
%>


<%

      try
        {
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	
					String keyid1=request.getParameter("keyid1");
					String keyid2=request.getParameter("keyid2");
					String keyid3=request.getParameter("keyid3");
					String keyid4=request.getParameter("keyid4");
					String keyid5=request.getParameter("keyid5");
					String keyid6=request.getParameter("keyid6");
					String keyid7=request.getParameter("keyid7");


					application.setAttribute("kid1",keyid1);
					application.setAttribute("kid2",keyid2);
					application.setAttribute("kid3",keyid3);
					application.setAttribute("kid4",keyid4);
					application.setAttribute("kid5",keyid5);
					application.setAttribute("kid6",keyid6);
					application.setAttribute("kid7",keyid7);
	
	ps1  = cn.prepareStatement("select * from Dealer1 where ItemCode=?");
    ps1.setString(1, keyid1);
    rs1 =ps1.executeQuery(); 
	
  
				if(rs1.next())
				 {   
			
						ps  = cn.prepareStatement("insert into totalinfo values(?,?,?,?,?,?)");
						ps.setString(1, rs1.getString(1));
						ps.setString(2, rs1.getString(2));
						ps.setString(3, rs1.getString(3));
						ps.setString(4, rs1.getString(4));
						ps.setString(5, rs1.getString(5));
						ps.setInt(6, rs1.getInt(6));
						int i =ps.executeUpdate(); 
						ps9=cn.prepareStatement("select * from totalinfo");
						rs9=ps9.executeQuery();
	
						out.println("<table border='1%' width='100%'>");

						out.println("<tr><th>ItemCode</th><th>ItemName</th>  <th>Model</th> <th>Specification</th>  <th>Warenty Period</th><th>Cost</th>");
						if(rs9.next()){

						 out.println("<tr><td>"+rs9.getString(1)+"</td>");
						 out.println("<td>"+rs9.getString(2)+"</td>");
						 out.println("<td>"+rs9.getString(3)+"</td>");
						 out.println("<td>"+rs9.getString(4)+"</td>");
						 out.println("<td>"+rs9.getString(5)+"</td>");
	 				     out.println("<td>"+rs9.getInt(6)+"</td>");
											}			  
				 }		   
				out.println("</table></center>");

	
	
	ps2=cn.prepareStatement("select * from Dealer2 where ItemCode=?");
    ps2.setString(1, keyid2);
    rs2 =ps2.executeQuery();

						 if(rs2.next())
						{

							ps  = cn.prepareStatement("insert into totalinfo values(?,?,?,?,?,?)");
							ps.setString(1, rs2.getString(1));
							ps.setString(2, rs2.getString(2));
							ps.setString(3, rs2.getString(3));
							ps.setString(4, rs2.getString(4));
							ps.setString(5, rs2.getString(5));
							ps.setInt(6, rs2.getInt(6));
						    int i =ps.executeUpdate(); 


							ps8=cn.prepareStatement("select * from totalinfo");
							rs8=ps8.executeQuery();
	
							out.println("<table border='1%' width='100%'>");
							out.println("<tr><th>ItemCode</th><th>ItemName</th>  <th>Model</th> <th>Specification</th>  <th>Warenty Period</th><th>Cost</th>");
							while(rs8.next()){
								out.println("<tr><td>"+rs8.getString(1)+"</td>");
								out.println("<td>"+rs8.getString(2)+"</td>");
							    out.println("<td>"+rs8.getString(3)+"</td>");
	 						    out.println("<td>"+rs8.getString(4)+"</td>");
								out.println("<td>"+rs8.getString(5)+"</td>");
							    out.println("<td>"+rs8.getInt(6)+"</td>");
			
													}
								out.println("</table></center>");
							}

	

			
	ps3=cn.prepareStatement("select * from Dealer3 where ItemCode=?");
    ps3.setString(1, keyid3);
    rs3 =ps3.executeQuery();



	out.println("<table border='1%' width='100%'>");

						if(rs3.next())
							{

								ps  = cn.prepareStatement("insert into totalinfo values(?,?,?,?,?,?)");
								ps.setString(1, rs3.getString(1));
								ps.setString(2, rs3.getString(2));
								ps.setString(3, rs3.getString(3));
								ps.setString(4, rs3.getString(4));
								ps.setString(5, rs3.getString(5));
								ps.setInt(6, rs3.getInt(6));
							    int i =ps.executeUpdate(); 





								ps80=cn.prepareStatement("select * from totalinfo");
								rs80=ps80.executeQuery();
	
								out.println("<table border='1%' width='100%'>");
								out.println("<tr><th>ItemCode</th><th>ItemName</th>  <th>Model</th> <th>Specification</th>  <th>Warenty Period</th><th>Cost</th>");
								while(rs80.next()){
										out.println("<tr><td>"+rs80.getString(1)+"</td>");
									    out.println("<td>"+rs80.getString(2)+"</td>");
									    out.println("<td>"+rs80.getString(3)+"</td>");
	 								    out.println("<td>"+rs80.getString(4)+"</td>");
										out.println("<td>"+rs80.getString(5)+"</td>");
									    out.println("<td>"+rs80.getInt(6)+"</td>");
														}
								out.println("</table></center>");
							}



	ps4=cn.prepareStatement("select * from Dealer4 where ItemCode=?");
    ps4.setString(1, keyid4);
    rs4 =ps4.executeQuery();

					out.println("<table border='0' width='100%'>");
					if(rs4.next())
							{

										ps  = cn.prepareStatement("insert into totalinfo values(?,?,?,?,?,?)");
										ps.setString(1, rs4.getString(1));
										ps.setString(2, rs4.getString(2));
										ps.setString(3, rs4.getString(3));
										ps.setString(4, rs4.getString(4));
										ps.setString(5, rs4.getString(5));
										ps.setInt(6, rs4.getInt(6));
										int i =ps.executeUpdate();
								
                                        ps81=cn.prepareStatement("select * from totalinfo");
										rs81=ps81.executeQuery();
	
											out.println("<table border='1%' width='100%'>");
											out.println("<tr><th>ItemCode</th><th>ItemName</th>  <th>Model</th> <th>Specification</th>  <th>Warenty Period</th><th>Cost</th>");
											while(rs81.next()){
															out.println("<tr><td>"+rs81.getString(1)+"</td>");
															out.println("<td>"+rs81.getString(2)+"</td>");
															out.println("<td>"+rs81.getString(3)+"</td>");
															out.println("<td>"+rs81.getString(4)+"</td>");
															out.println("<td>"+rs81.getString(5)+"</td>");
															out.println("<td>"+rs81.getInt(6)+"</td>");
																	}
							}
			out.println("</table></center>");




	ps5=cn.prepareStatement("select * from Dealer5 where ItemCode=?");
    ps5.setString(1, keyid5);
    rs5 =ps5.executeQuery();


	out.println("<table border='1%' width='100%'>");
							if(rs5.next())
							{
										ps  = cn.prepareStatement("insert into totalinfo values(?,?,?,?,?,?)");
										ps.setString(1, rs5.getString(1));
										ps.setString(2, rs5.getString(2));
										ps.setString(3, rs5.getString(3));
										ps.setString(4, rs5.getString(4));
										ps.setString(5, rs5.getString(5));
										ps.setInt(6, rs5.getInt(6));
										int i =ps.executeUpdate();
								
                                            ps82=cn.prepareStatement("select * from totalinfo");
											rs82=ps82.executeQuery();
	
											out.println("<table border='1%' width='100%'>");
											out.println("<tr><th>ItemCode</th><th>ItemName</th>  <th>Model</th> <th>Specification</th>  <th>Warenty Period</th><th>Cost</th>");
											while(rs82.next()){
															out.println("<tr><td>"+rs82.getString(1)+"</td>");
															out.println("<td>"+rs82.getString(2)+"</td>");
															out.println("<td>"+rs82.getString(3)+"</td>");
															out.println("<td>"+rs82.getString(4)+"</td>");
															out.println("<td>"+rs82.getString(5)+"</td>");
															out.println("<td>"+rs82.getInt(6)+"</td>");
																	}
								}

			out.println("</table></center>");

		
		
		
		
		ps6=cn.prepareStatement("select * from Dealer6 where ItemCode=?");
		ps6.setString(1, keyid6);
		rs6 =ps6.executeQuery();


		out.println("<table border='1%' width='100%'>");
						if(rs6.next())
							{
										ps  = cn.prepareStatement("insert into totalinfo values(?,?,?,?,?,?)");
										ps.setString(1, rs6.getString(1));
										ps.setString(2, rs6.getString(2));
										ps.setString(3, rs6.getString(3));
										ps.setString(4, rs6.getString(4));
										ps.setString(5, rs6.getString(5));
										ps.setInt(6, rs6.getInt(6));
										int i =ps.executeUpdate();
								
                                            ps83=cn.prepareStatement("select * from totalinfo");
											rs83=ps83.executeQuery();
	
											out.println("<table border='1%' width='100%'>");
											out.println("<tr><th>ItemCode</th><th>ItemName</th>  <th>Model</th> <th>Specification</th>  <th>Warenty Period</th><th>Cost</th>");
											while(rs83.next()){
															out.println("<tr><td>"+rs83.getString(1)+"</td>");
															out.println("<td>"+rs83.getString(2)+"</td>");
															out.println("<td>"+rs83.getString(3)+"</td>");
															out.println("<td>"+rs83.getString(4)+"</td>");
															out.println("<td>"+rs83.getString(5)+"</td>");
															out.println("<td>"+rs83.getInt(6)+"</td>");
																	}
     		    
								}
			out.println("</table></center>");

			
			
			
			ps7=cn.prepareStatement("select * from Dealer7 where ItemCode=?");
			ps7.setString(1, keyid7);
			rs7 =ps7.executeQuery();
					out.println("<table border='1%' width='100%'>");	
							if(rs7.next())
								{
							    	    ps  = cn.prepareStatement("insert into totalinfo values(?,?,?,?,?,?)");
										ps.setString(1, rs7.getString(1));
										ps.setString(2, rs7.getString(2));
										ps.setString(3, rs7.getString(3));
										ps.setString(4, rs7.getString(4));
										ps.setString(5, rs7.getString(5));
										ps.setInt(6, rs7.getInt(6));
										int i =ps.executeUpdate();
								
                                            ps84=cn.prepareStatement("select * from totalinfo");
											rs84=ps84.executeQuery();
	
											out.println("<table border='1%' width='100%'>");
											out.println("<tr><th>ItemCode</th><th>ItemName</th>  <th>Model</th> <th>Specification</th>  <th>Warenty Period</th><th>Cost</th>");
											while(rs84.next()){
															out.println("<tr><td>"+rs84.getString(1)+"</td>");
															out.println("<td>"+rs84.getString(2)+"</td>");
															out.println("<td>"+rs84.getString(3)+"</td>");
															out.println("<td>"+rs84.getString(4)+"</td>");
															out.println("<td>"+rs84.getString(5)+"</td>");
															out.println("<td>"+rs84.getInt(6)+"</td>");
																	}

			    					}

out.println("</table></center>");

	  rs9.close(); rs1.close(); 
	 rs8.close(); rs2.close();
	 rs80.close(); rs3.close(); 
	rs81.close(); rs4.close(); 
	  rs82.close(); rs5.close();
	   rs83.close(); rs6.close();
	  rs84.close(); rs7.close(); 
        
   
	
	ps.close();    ps1.close(); ps9.close();
	ps8.close();  ps2.close(); 
    ps80.close(); ps3.close();
	ps81.close(); ps4.close();
	ps82.close();  ps5.close();
	ps83.close(); ps6.close(); 
	ps84.close(); ps7.close();
	
	
	cn.close();
         }
        catch(Exception e)
         {
	
	
         }
%>
</body>