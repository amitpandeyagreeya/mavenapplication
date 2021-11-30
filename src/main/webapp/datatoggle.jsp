<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
	<head>
	 <link rel="stylesheet" href = "bootstrap.min.css">
	 <link rel="stylesheet" href = "data.css">
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">	
	</head>
<body class="bg-dark text-white">
<%
String name = request.getParameter("Case");
String existingPermission = request.getParameter("Title");
String targetPermission = request.getParameter("Description");



List<String> names;
List<String> existingPermissions ;
List<String> targetPermissions ;
names = new ArrayList();
names.add("101");
names.add("102");
names.add("103");
existingPermissions = new ArrayList();
existingPermissions.add("GitLab User permissions");
existingPermissions.add("GitLab User permissions");
existingPermissions.add("GitLab User permissions");
targetPermissions = new ArrayList();
targetPermissions.add("Change GitLab role from 'Maintainer' to [Developer] for user [ashutosh]");
targetPermissions.add("Change GitLab role from 'Reporter' to [Maintainer] for user [rajat]");
targetPermissions.add("Change GitLab role from 'Reporter' to [Maintainer] for user [abc]");
targetPermissions.add("Change GitLab role from 'Reporter' to [Maintainer] for user [nidhi]");


if(name !=null) {
	names.add(name);
	existingPermissions.add(existingPermission);
	targetPermissions.add(targetPermission);
}

%>
<div class="container">	
    <h2  style="margin-bottom:50px;"> IT Help Desk </h2>
	
<form action="data.jsp" method="GET"> 
  <div class="row">
    <div class="col-xs-6 col-md-4">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" id="txtSearch"/>
        <div class="input-group-btn">
          <button class="btn btn-primary" type="submit">
            <span><i class="fa fa-search" aria-hidden="true"></i></span>
          </button>
        </div>
      </div>
    </div>
  </div>
</form>	
</div>	
<div class="container">
	<!--
	<form action="index.jsp" id="form1" class="form-inline" method = "post">
		<div id="form" class="form-group">
		    <label for="firstName">User Name :</label>
			<input type="text" name="Case"  class="form-control" placeholder="Case" id = "name">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="lastName">Existing Permission:</label>
			<input type="text" name="Title" class="form-control" id = "existingPermission" placeholder="Title">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="lastName">Target Permission:</label>
			<input type="text" name="Description" class="form-control" id = "targetPermission" placeholder="Description">
		</div>		
		<div class="form-group">
		</div>
		<button class="btn btn-default btn btn-info active" type="submit"  style="margin-left:80px;">Submit</button>
	</form>
        -->

<table class="table table-striped"  style="margin-top:50px;">
		<tr>
			 <thead class="thead-dark">
	                <th class="thead-light"> Case # </th>
			<th class="thead-light"> Title </th>
			<th class="thead-light"> Description</th>
		        <th class="thead-light" > Status </th>	 
			 <thead class="thead-dark">
		</tr>
		<% for(int i=0; i<names.size(); i++) {
			
			%><tr>
				 <td><%=names.get(i) %></td>
				 <td><%=existingPermissions.get(i) %></td>
				 <td><%=targetPermissions.get(i) %></td>
				 <td><label class="switch">
				   <input id="<%=names.get(i)%>" type="checkbox">
				   <span class="slider round"></span>
				   </label>
				 </td>
			</tr>
		<%}%>
	</table>	
	</div>
</body>
</html>
