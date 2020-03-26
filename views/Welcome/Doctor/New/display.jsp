<%@page import="java.util.List"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.MongoClient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			//HttpSession st1 = request.getSession();
			//String pid = st1.getAttribute("pid").toString();
		%>
		<%
			final MongoClient mongoclient = new MongoClient("localhost",27017);
			final MongoDatabase db = mongoclient.getDatabase("Patient");
			//final DBCollection collection = db.getCollection("all_info");
			MongoCollection collection = db.getCollection("Pat_hist");
			BasicDBObject match = new BasicDBObject();
			String pid = "1234567899";
			System.out.print(pid);
			match.put("_id", pid);
//			MongoCollection<Document>  = (MongoCollection<Document>) db.getCollection("all_info");
			MongoCursor<Document> cursor = collection.find(match).iterator();
			//List<Document> history = (List<Document>) collection.find().into(new ArrayList<Document>());
			while(cursor.hasNext()) {
				Document str = (Document) cursor.next();
				List<Document> list = (List<Document>)str.get("History");
				int number = list.size();
				System.out.print(list.size());
				//BasicDBObject one = (BasicDBObject) cursor.next();
				//System.out.println((String)one.get("_id"));
				//BasicDBObject history = (BasicDBObject)one.get("History.0");
				/*System.out.println(list.get(2).getString("medicine").toString());
				String a = list.get(2).getString("medicine").toString();
				a = a.replaceAll("[\\[\\](){}]","");
				a = a.r	eplaceAll(" ","");
				String[] soni = a.split(",");
				for(int i=0;i<soni.length;i++) {
					System.out.print(soni[i]+" ");
				}*/
			%>

<h3 style="background-color:black;color:blanchedalmond;text-align: center;width: 92%;left: 4%;position: relative;height: 50px;"><span style="position: relative;top: 10px;">MEDICAL HISTORY</span>
                </h3>
		<%  
		for(int i = 0; i < number; i++) { %>
                <%-- <% for(int i = 0;i<3;i++){}%> --%>
                <div class="container sam1" style="background-color: aquamarine;">
                    <div class="dialogbox">
                        <p style="font-weight: bold;color: black;width: 30%; position: relative;top: 45px;">Disease</p>
                        <div style="position: relative;left: 80%;">
                        <%
                                String d = list.get(i).getString("date").toString();
                                %>
                            Date <input type="text" disabled style="background-color: white; " value="<% out.println(d); %>">
                        </div>
                        <div class="body " style="position: relative;top: 3px;">
                            <span class="tip tip-up "></span>
                            <div class="message ">
                            	<%
                                	String a = list.get(i).getString("disease").toString();
                                	a = a.substring(0,a.length()-1);
                                %>
                                <span><% out.print(a); %></span>
                            </div>
                        </div>
                    </div>

                    <div class="dialogbox ">
                        <p style="font-weight: bold;color: black;width: 30%;position:relative;top: -10px; ">Medicine</p>
                        <div class="body " style="position: relative;top: -15px; ">
                            <span class="tip tip-up "></span>
                            <div class="message ">
                            	<%
                                	String b = list.get(i).getString("medicine").toString();
                            		b = b.substring(0,b.length()-1);
                                %>
                                <span><% out.print(b); %></span>
                            </div>
                        </div>
                    </div>

                    <div class="dialogbox ">
                        <p style="font-weight: bold;color: black;width: 30%;position: relative; top:-20px ;">Consult</p>
                        <div class="body " style="position: relative;top: -25px; ">
                            <span class="tip tip-up "></span>
                            <div class="message ">
                            	<%
                                	String c = list.get(i).getString("consaltant").toString();
                            		c = c.substring(0,c.length()-1);
                                %>
                                <span><% out.print(c); %></span>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
            <% } 
            }%>
            
            <%
			//HttpSession st2 = request.getSession();
			//st2.setAttribute("pid", "");
		%>
</body>
</html>