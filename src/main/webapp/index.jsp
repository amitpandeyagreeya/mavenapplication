<%@ page import = " java.util.* " %>
<html>
	<head>
	 <link rel="stylesheet" href = "bootstrap.min.css">
	</head>
<body class="bg-dark text-white">
<%
String fname = request.getParameter("filename");
String pnum = request.getParameter("pagenum");
String dt = request.getParameter("dateprocessed");

   List<String> fnames = request.getAttribute("fnames") != null ?  (ArrayList<String>) request.getAttribute("fnames") : new ArrayList();
   List<String> pnums = request.getAttribute("pnums") != null ?  (ArrayList<String>) request.getAttribute("pnums") : new ArrayList();
   List<String> dts = request.getAttribute("dts") != null ?  (ArrayList<String>) request.getAttribute("dts") : new ArrayList();
   
   request.setAttribute("fnames",fnames);
   request.setAttribute("pnums",pnums);
   request.setAttribute("dts",dts);



if(fname !=null) {
	fnames.add(fname);
	pnums.add(pnum);
	dts.add(dt);
}



%>
<div class="container">
	<h2  style="margin-bottom:50px;"> Update processed data </h2>
	<form action="index.jsp" id="form1" class="form-inline" method = "post">
		<div id="form" class="form-group">
		    <label for="filename">PDF File name :</label>
			<input type="text" name="filename"  class="form-control" placeholder="filename" id = "filename">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="pagenum">Page No processed:</label>
			<input type="text" name="pagenum" class="form-control" id = "pagenum" placeholder="pagenum">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="dateprocessed">Date:</label>
			<input type="text" name="dateprocessed" class="form-control" id = "dateprocessed" placeholder="dateprocessed">
		</div>		
		<div class="form-group">
		</div>
		  <button class="btn btn-default btn btn-info active" type="submit"  style="margin-left: 1028px;margin-top: -35px;">Submit</button>
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
			<td><%=pnums.get(i) %></td>
			<td><%=dts.get(i) %></td>	 
			</tr>
		<%}%>
	</table>	
	</div>
	<div  style="margin-top:50px;">
      <h3>File Upload:</h3>
      Select a file to upload: <br />
      <form action = "UploadServlet" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>	
	</div>
</body>
</html>
