<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
	<head>
	 <link rel="stylesheet" href = "bootstrap.min.css">
	</head>
<body class="bg-dark text-white">
<%
String fname = request.getParameter("firstname");
String lname = request.getParameter("lastname");


List<String> firstName;
List<String> lastName ;
firstName = new ArrayList();
firstName.add("Sumit");
firstName.add("Amit");
lastName = new ArrayList();
lastName.add("Nagpal");
lastName.add("Pandey");
	

if(fname !=null) {
	firstName.add(fname);
	lastName.add(lname);
}

%>
<div class="container">
	<h2  style="margin-bottom:50px;"> Simple Web Application Version 2 </h2>
	<form action="index.jsp" id="form1" class="form-inline" method = "post">
		<div id="form" class="form-group">
		    <label for="firstName">First name:</label>
			<input type="text" name="firstname"  class="form-control" placeholder="First Name" id = "fname">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="lastName">Last name:</label>
			<input type="text" name="lastname" class="form-control" id = "lname" placeholder="Last Name">
		</div>
		<div class="form-group">
		</div>
		  <button class="btn btn-default btn btn-info active" type="submit"  style="margin-left:80px;">Submit</button>
	</form>

	<table class="table table-striped"  style="margin-top:50px;">
		<tr>
			 <thead class="thead-dark">
			<th class="thead-light"> Firstname </th>
			<th class="thead-light"> Lastname</th>
			 <thead class="thead-dark">
		</tr>
		<% for(int i=0; i<firstName.size(); i++) {
			
			%><tr><td><%=firstName.get(i) %></td>
			<td><%=lastName.get(i) %></td>
			</tr>
		<%}%>
	</table>	
	</div>
</body>
</html>
