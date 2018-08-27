<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
	<head>
	 <link rel="stylesheet"bootstrap.min.css">
	</head>
<body>
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
	<form action="index.jsp" id="form1" method = "post">
		<div id="form" class="container">
		  First name:<br>
		  <input type="text" name="firstname" id = "fname"><br>
		  Last name:<br>
		  <input type="text" name="lastname" id = "lname">
		  <button type="submit">Submit</button>
		</div>
	</form>
	<table border = "1" class="table">
		<tr>
			<th> Firstname</th>
			<th> Lastname</th>
		</tr>
		<% for(int i=0; i<firstName.size(); i++) {
			
			%><tr><td><%=firstName.get(i) %></td>
			<td><%=lastName.get(i) %></td>
			</tr>
		<%}%>
	</table>	
</body>
</html>
