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
String certificateNo = request.getParameter("certificateNo");
String memberName = request.getParameter("memberName");
String nofShares = request.getParameter("nofShares");
String companyName = request.getParameter("companyName");





   List<String> fnames = request.getSession().getAttribute("fnames") != null ?  (ArrayList<String>) request.getSession().getAttribute("fnames") : new ArrayList();
   List<String> pnums = request.getSession().getAttribute("pnums") != null ?  (ArrayList<String>) request.getSession().getAttribute("pnums") : new ArrayList();
   List<String> dts = request.getSession().getAttribute("dts") != null ?  (ArrayList<String>) request.getSession().getAttribute("dts") : new ArrayList();
   List<String> certificateNos = request.getSession().getAttribute("certificateNos") != null ?  (ArrayList<String>) request.getSession().getAttribute("certificateNos") : new ArrayList();
   List<String> memberNames = request.getSession().getAttribute("memberNames") != null ?  (ArrayList<String>) request.getSession().getAttribute("memberNames") : new ArrayList();
   List<String> companyNames = request.getSession().getAttribute("companyNames") != null ?  (ArrayList<String>) request.getSession().getAttribute("companyNames") : new ArrayList();
   List<String> shares = request.getSession().getAttribute("shares") != null ?  (ArrayList<String>) request.getSession().getAttribute("shares") : new ArrayList();
   
   session.setAttribute("fnames",fnames);
   session.setAttribute("pnums",pnums);
   session.setAttribute("dts",dts);
   session.setAttribute("certificateNos",certificateNos);
   session.setAttribute("memberNames",memberNames);
   session.setAttribute("companyNames",companyNames);
   session.setAttribute("shares",shares);



if(fname !=null) {
	fnames.add(fname);
	pnums.add(pnum);
	dts.add(dt);
	certificateNos.add(certificateNo);
	memberNames.add(memberName);
	companyNames.add(companyName);
	shares.add(nofShares);
}



%>
<div class="container">
	<h2  style="margin-bottom:50px;"> Update processed data 11 </h2>
	<form action="index.jsp" id="form1" class="form-inline" method = "post">
		<div id="form" class="form-group" style="margin-left: 50px;margin-bottom: 20px;">
		    <label for="filename">PDF File name :</label>
			<input type="text" name="filename"  class="form-control" placeholder="filename" id = "filename">
		</div>
		<div class="form-group"  style="margin-left:50px;margin-bottom:20px">
			<label for="pagenum">Page No processed:</label>
			<input type="text" name="pagenum" class="form-control" id = "pagenum" placeholder="pagenum">
		</div>
		<div class="form-group"  style="margin-left:50px;margin-bottom:20px">
			<label for="dateprocessed">Date:</label>
			<input type="text" name="dateprocessed" class="form-control" id = "dateprocessed" placeholder="dateprocessed">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="certificateNo">Certificate No:</label>
			<input type="text" name="certificateNo" class="form-control" id = "certificateNo" placeholder="certificateNo's" style="margin-left:8px;">
		</div>	
		<div class="form-group"  style="margin-left:50px;">
			<label for="memberName">Member Name:</label>
			<input type="text" name="memberName" class="form-control" id = "memberName" placeholder="memberName" style="margin-left:36px;">
		</div>	
		<div class="form-group"  style="margin-left:50px;">
			<label for="nofShares" style="margin-left:-56px;text-align: center;overflow-wrap: break-word;width: 92px;">No Of Shares:</label>
			<input type="text" name="nofShares" class="form-control" id = "nofShares" placeholder="nofShares">
		</div>	
		<div class="form-group"  style="margin-left:50px;">
			<label for="companyName">Company Name:</label>
			<input type="text" name="companyName" class="form-control" id = "companyName" placeholder="companyName">
		</div>	
		<div class="form-group">
		</div>
		  <button class="btn btn-default btn btn-info active" type="submit"  style="margin-left: 486px;margin-top: 30px;">Submit</button>
	</form>

<table class="table table-striped"  style="margin-top:50px;">
		<tr>
			 <thead class="thead-dark">
			<th class="thead-light"> File name  </th>
			<th class="thead-light"> Page number</th>
			<th class="thead-light"> Date</th>
				 <th class="thead-light"> Certificate No:</th>
				 <th class="thead-light"> Member Name:</th>
				 <th class="thead-light"> No Of Shares:</th>
				  <th class="thead-light"> Company Name:</th>
			 <thead class="thead-dark">
		</tr>
		<% for(int i=0; i<fnames.size(); i++) {
			
			%><tr>
				
				 <td><%=fnames.get(i) %></td>
				<td><%=pnums.get(i) %></td>
				<td><%=dts.get(i) %></td>
				 <td><%=certificateNos.get(i) %></td>
				  <td><%=memberNames.get(i) %></td>
				  <td><%=shares.get(i) %></td>
				 <td><%=companyNames.get(i) %></td>
			
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
