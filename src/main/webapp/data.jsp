<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
	<head>
	 <link rel="stylesheet" href = "bootstrap.min.css">
	</head>
<body class="bg-dark text-white">
<%
String name = request.getParameter("Name");
String existingPermission = request.getParameter("Existing Permission");
String targetPermission = request.getParameter("Target Permission");



List<String> names;
List<String> existingPermissions ;
List<String> targetPermissions ;
names = new ArrayList();
names.add("ashutosh");
names.add("rajat");
names.add("abc");
existingPermissions = new ArrayList();
existingPermissions.add("Developer");
existingPermissions.add("Developer");
existingPermissions.add("Developer");
targetPermissions = new ArrayList();
targetPermissions.add("Maintainer");
targetPermissions.add("Maintainer");
targetPermissions.add("Maintainer");

if(name !=null) {
	names.add(name);
	existingPermissions.add(existingPermission);
	targetPermissions.add(targetPermissions);
}

%>
<div class="container">
	<h2  style="margin-bottom:50px;"> Change gitlab user permissions </h2>
	<form action="index.jsp" id="form1" class="form-inline" method = "post">
		<div id="form" class="form-group">
		    <label for="firstName">User Name :</label>
			<input type="text" name="Name"  class="form-control" placeholder="Name" id = "name">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="lastName">Existing Permission:</label>
			<input type="text" name="Existing Permission" class="form-control" id = "existingPermission" placeholder="Existing Permission">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="lastName">Target Permission:</label>
			<input type="text" name="Target Permission" class="form-control" id = "targetPermission" placeholder="Target Permission">
		</div>		
		<div class="form-group">
		</div>
		<button class="btn btn-default btn btn-info active" type="submit"  style="margin-left:80px;">Submit</button>
	</form>

<table class="table table-striped"  style="margin-top:50px;">
		<tr>
			 <thead class="thead-dark">
	                <th class="thead-light"> Name </th>
			<th class="thead-light"> Existing Permission </th>
			<th class="thead-light"> Target Permission</th>
			 <thead class="thead-dark">
		</tr>
		<% for(int i=0; i<names.size(); i++) {
			
			%><tr>
				 <td><%=names.get(i) %></td>
				 <td><%=existingPermissions.get(i) %></td>
				 <td><%=targetPermissions.get(i) %></td>
			</tr>
		<%}%>
	</table>	
	</div>
</body>
</html>
