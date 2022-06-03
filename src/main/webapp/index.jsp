<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
	<head>
	 <link rel="stylesheet" href = "bootstrap.min.css">
	</head>
<body class="bg-dark text-white">
<%
String fname = request.getParameter("filename");
String pnum = request.getParameter("pagenum");
String dt = request.getParameter("dateprocessed");


List<String> fnames = new ArrayList();
List<String> pnums = new ArrayList();
List<String> dts = new ArrayList();

%>
<div class="container">
	<h2  style="margin-bottom:50px;"> Update processed data </h2>
	<form action="index.jsp" id="form1" class="form-inline" method = "post">
		<div id="form" class="form-group">
		    <label for="firstName">PDF File name :</label>
			<input type="text" name="filename"  class="form-control" placeholder="filename" id = "filename">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="lastName">Page No processed:</label>
			<input type="text" name="pagenum" class="form-control" id = "pagenum" placeholder="pagenum">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="lastName">Date:</label>
			<input type="text" name="dateprocessed" class="form-control" id = "dateprocessed" placeholder="dateprocessed">
		</div>		
		<div class="form-group">
		</div>
		  <button class="btn btn-default btn btn-info active" type="submit"  style="margin-left:80px;">Submit</button>
	</form>

<table class="table table-striped"  style="margin-top:50px;">
		<tr>
			 <thead class="thead-dark">
			<th class="thead-light"> File name  </th>
			<th class="thead-light"> Page number</th>
			<th class="thead-light"> Date</th>	 
			 <thead class="thead-dark">
		</tr>
		<% for(int i=0; i<fnames.size(); i++) {
			
			%><tr><td><%=fnames.get(i) %></td>
			<td><%=pnum.get(i) %></td>
			<td><%=dts.get(i) %></td>	 
			</tr>
		<%}%>
	</table>	
	</div>
	<div>
<input type="file" id="myFile" multiple size="50" onchange="myFunction()">

<p id="demo"></p>
  
<script>
function myFunction(){
  var x = document.getElementById("myFile");
  var txt = "";
  if ('files' in x) {
    if (x.files.length == 0) {
      txt = "Select one or more files.";
    } else {
      for (var i = 0; i < x.files.length; i++) {
        txt += "<br><strong>" + (i+1) + ". file</strong><br>";
        var file = x.files[i];
        if ('name' in file) {
          txt += "name: " + file.name + "<br>";
        }
        if ('size' in file) {
          txt += "size: " + file.size + " bytes <br>";
        }
      }
    }
  } 
  else {
    if (x.value == "") {
      txt += "Select one or more files.";
    } else {
      txt += "The files property is not supported by your browser!";
      txt  += "<br>The path of the selected file: " + x.value; // If the browser does not support the files property, it will return the path of the selected file instead. 
    }
  }
  document.getElementById("demo").innerHTML = txt;
}
</script>	
	
	</div>
</body>
</html>
