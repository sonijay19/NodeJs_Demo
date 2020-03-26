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
			HttpSession st = request.getSession();	
			String id = st.getAttribute("pid").toString();
			System.out.println(id);
		%>
		
		<%
			final MongoClient mongoclient = new MongoClient("localhost",27017);
			final MongoDatabase db = mongoclient.getDatabase("Patient");
			//final DBCollection collection = db.getCollection("all_info");
			MongoCollection collection = db.getCollection("Pat_hist");
			BasicDBObject match = new BasicDBObject();
			match.put("_id", id);
//			MongoCollection<Document>  = (MongoCollection<Document>) db.getCollection("all_info");
			MongoCursor<Document> cursor = collection.find(match).iterator();
			//List<Document> history = (List<Document>) collection.find().into(new ArrayList<Document>());
			while(cursor.hasNext()) {
				Document str = (Document) cursor.next();
				List<Document> list = (List<Document>)str.get("History");
				int number = list.size();
				int a1 = number;
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
			
			<%  
		for(int i = 0; i < 1; i++) { %>
		<div class="col-md-12 pr-1">
			<div class="form-group">
				<label>Medicine</label>
					<%
                                	String a = list.get(a1-1).getString("medicine").toString();
                                	a = a.substring(0,a.length()-1);
                                %>
					<input type="text" class="form-control" value=<% out.print(a); %> placeholder="Medicine" name="pBlood" id="pBlood" disabled>
			</div>
		</div>
		<% }
			}
		%>
</body>
</html>