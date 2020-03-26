<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	            <div class="content">
	            <%
	            	HttpSession ss = request.getSession();
	            	String Email = ss.getAttribute("dre").toString();
	            %>
	            <%
				//HttpSession st = request.getSession();
				//String Email = st.getAttribute("did").toString();
				MongoClient mongoclient1 = new MongoClient("localhost",27017);
				DB db1 = mongoclient1.getDB("Information");
				DBCollection jay = db1.getCollection("all_info");
				BasicDBObject whereQuery = new BasicDBObject();
				whereQuery.put("_id", Email);
				whereQuery.put("domain", "doctor");
				DBCursor cursor = jay.find(whereQuery);
				BasicDBObject obj = (BasicDBObject) cursor.next();
				System.out.println(obj.getString("drPassword"));
				String dName = obj.getString("drName");
				System.out.println(obj.getString("drName"));
				String dLicence = obj.getString("drLicence");
				String dmobNo = obj.getString("drmobNo");
				String dEmail = obj.getString("drEmail");
				String dPincode = obj.getString("drPincode");
				String dCity = obj.getString("drCity");
				%>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Doctor Profile</h4>
                                </div>
                                <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6 pr-1">
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <input type="text" class="form-control" value=<% out.println(obj.getString("drName")); %> name="dName" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6 pr-1">
                                                <div class="form-group">
                                                    <label>Licence Number</label>
                                                    <input type="text" class="form-control" value=<% out.println(obj.getString("drLicense")); %> name="dLicence" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 pr-1">
                                                <div class="form-group">
                                                    <label>Mobile Number</label>
                                                    <input type="text" class="form-control" placeholder="Mobile Number" pattern="[0-9]{10}" value=<% out.println(obj.getString("mobNo")); %> name="dmobNo" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6 pr-1">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Email address</label>
                                                    <input type="email" class="form-control" value=<% out.println(obj.getString("_id")); %> placeholder="Email" name="dEmail" required>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="row">

                                            <div class="col-md-6 pr-1">
                                                <div class="form-group">
                                                    <label>Pin code</label>
                                                    <input type="text" class="form-control" value=<% out.println(obj.getString("drPincode")); %> placeholder="PIN Code" pattern="[0-9]{6}" name="dPincode" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6 pr-1">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <input type="text" class="form-control" value=<% out.println(obj.getString("drCity")); %> placeholder="City" name="dCity" required>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-info btn-fill pull-right">Update Profile</button>
                                        <div class="clearfix"></div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
</body>
</html>