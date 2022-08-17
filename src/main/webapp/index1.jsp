<%@ page import=" java.util.* "%>
<html>
<script type="text/javascript">
$(document)
.ready(
		function() {
			document.getElementById("rownum").value=-1;
			
		});

</script>
<%
	String upc = request.getParameter("upc");
	String itemName = request.getParameter("itemName");
	String itemDescription = request.getParameter("itemDescription");
	String itemPrice = request.getParameter("itemPrice");
	String unitCost = request.getParameter("unitCost");
	String staringInventory = request.getParameter("staringInventory");
	String category = request.getParameter("category");
	String brand = request.getParameter("brand");
	String expirationDate = request.getParameter("expirationDate");
	String itemSize = request.getParameter("itemSize");

	List<String> upcL = request.getSession().getAttribute("upcL") != null
			? (ArrayList<String>) request.getSession().getAttribute("upcL")
			: new ArrayList<String>();

	List<String> itemsL = request.getSession().getAttribute("itemsL") != null
			? (ArrayList<String>) request.getSession().getAttribute("itemsL")
			: new ArrayList();

	List<String> itemdescriptionL = request.getSession().getAttribute("itemdescriptionL") != null
			? (ArrayList<String>) request.getSession().getAttribute("itemdescriptionL")
			: new ArrayList();

	List<String> itemPriceL = request.getSession().getAttribute("itemPriceL") != null
			? (ArrayList<String>) request.getSession().getAttribute("itemPriceL")
			: new ArrayList();

	List<String> staringInventoryL = request.getSession().getAttribute("staringInventoryL") != null
			? (ArrayList<String>) request.getSession().getAttribute("staringInventoryL")
			: new ArrayList();
	List<String> unitcostL = request.getSession().getAttribute("unitcostL") != null
			? (ArrayList<String>) request.getSession().getAttribute("unitcostL")
			: new ArrayList();

	List<String> categoryL = request.getSession().getAttribute("categoryL") != null
			? (ArrayList<String>) request.getSession().getAttribute("categoryL")
			: new ArrayList();

	List<String> brandL = request.getSession().getAttribute("brandL") != null
			? (ArrayList<String>) request.getSession().getAttribute("brandL")
			: new ArrayList();

	List<String> expirationdateL = request.getSession().getAttribute("expirationdateL") != null
			? (ArrayList<String>) request.getSession().getAttribute("expirationdateL")
			: new ArrayList();

	List<String> itemsizeL = request.getSession().getAttribute("itemsizeL") != null
			? (ArrayList<String>) request.getSession().getAttribute("itemsizeL")
			: new ArrayList();

	session.setAttribute("upcL", upcL);
	session.setAttribute("itemsL", itemsL);
	session.setAttribute("itemdescriptionL", itemdescriptionL);
	session.setAttribute("itemPriceL", itemPriceL);
	session.setAttribute("staringInventoryL", staringInventoryL);
	session.setAttribute("unitcostL", unitcostL);
	session.setAttribute("categoryL", categoryL);
	session.setAttribute("brandL", brandL);
	session.setAttribute("expirationdateL", expirationdateL);
	session.setAttribute("itemsizeL", itemsizeL);
	System.out.print(upc);
	System.out.print("buttonClick");
	if (request.getParameter("rownum") != null &&(Integer.parseInt(request.getParameter("rownum"))) < 0 && upc!=null) {
		upcL.add(upc);
		itemsL.add(itemName);
		itemdescriptionL.add(itemDescription);
		itemPriceL.add(itemPrice);
		staringInventoryL.add(staringInventory);
		unitcostL.add(unitCost);
		categoryL.add(category);
		brandL.add(brand);
		expirationdateL.add(expirationDate);
		itemsizeL.add(itemSize);

	} else {
		if (request.getParameter("rownum") != null && (Integer.parseInt(request.getParameter("rownum"))) >= 0) {
			int rowNum = Integer.parseInt(request.getParameter("rownum"));

			upcL.set(rowNum, upc);
			itemsL.set(rowNum, itemName);
			itemdescriptionL.set(rowNum, itemDescription);
			itemPriceL.set(rowNum, itemPrice);
			staringInventoryL.set(rowNum, staringInventory);
			unitcostL.set(rowNum, unitCost);
			categoryL.set(rowNum, category);
			brandL.set(rowNum, brand);
			expirationdateL.set(rowNum, expirationDate);
			itemsizeL.set(rowNum, itemSize);
		}
	}
	int z;
%>
<head>
<link rel="stylesheet" href="bootstrap.min.css">

<script type="text/javascript">
			
			function editFunction(index,upc,item,itemD,itemP,uCost,sInv,cat,brand,eDate,iSize){
	       document.getElementById("rownum").value =index;
		       document.getElementById("buttonClick").value='update';
		       document.getElementById("upc").value = upc;
		       document.getElementById("itemName").value=item;
		       document.getElementById("itemDescription").value=itemD;
		       document.getElementById("itemPrice").value=itemP;
		       document.getElementById("unitCost").value=uCost;
		       document.getElementById("staringInventory").value=sInv;
		       document.getElementById("category").value=cat;
		       document.getElementById("brand").value=brand;
		       document.getElementById("expirationDate").value=eDate;
		       document.getElementById("itemSize").value=iSize;
			}
			function checkButtonType(event) {
				button.value=event.target.id;
				var upc = document.getElementById("rownum");
				if(event.target.id!=='subBut') {
					upc.value=<%=request.getParameter("rownum")%>;
				}
				
			}
<%-- 			function myFunction() {
				      
				<% if(request.getParameter("rownum")!=null && request.getParameter("rownum").length() > 0){
				%>
				document.getElementById("upc").value = '<%=upcL.get(Integer.parseInt(request.getParameter("rownum")))%>' ;
				document.getElementById("itemName").value = '<%=itemsL.get(Integer.parseInt(request.getParameter("rownum")))%>' ;
				document.getElementById("itemDescription").value = '<%=itemdescriptionL.get(Integer.parseInt(request.getParameter("rownum")))%>' ;
				document.getElementById("itemPrice").value = '<%=itemPriceL.get(Integer.parseInt(request.getParameter("rownum")))%>' ;
				document.getElementById("unitCost").value = '<%=unitcostL.get(Integer.parseInt(request.getParameter("rownum")))%>' ;
				document.getElementById("staringInventory").value = '<%=staringInventoryL.get(Integer.parseInt(request.getParameter("rownum")))%>' ;
				document.getElementById("category").value = '<%=categoryL.get(Integer.parseInt(request.getParameter("rownum")))%>' ;
				document.getElementById("brand").value = '<%=brandL.get(Integer.parseInt(request.getParameter("rownum")))%>' ;
				document.getElementById("expirationDate").value = '<%=expirationdateL.get(Integer.parseInt(request.getParameter("rownum")))%>' ;
				document.getElementById("itemSize").value = '<%=itemsizeL.get(Integer.parseInt(request.getParameter("rownum")))%>' ;
				document.getElementById("subBut").remove();
				var x = document.createElement("button");
  					x.setAttribute("type", "submit");
  					x.setAttribute("style","margin-left: 486px;margin-top: 30px;");
  					x.setAttribute("id","update");
					x.setAttribute("onclick","checkButtonType(event)");
					x.setAttribute("value","Update");
					x.innerText = "Update";
  					document.getElementById('form1').appendChild(x);
				<%}%>
				
			} --%>
		</script>
</head>
<body class="bg-dark text-white">

	<div class="container">
		<h2 style="margin-bottom: 50px;">Item Maintaince</h2>
		<form action="index1.jsp" id="form1" class="form-inline" method="post">
			<div id="form" class="form-group"
				style="margin-left: 50px; margin-bottom: 20px;">
				<label for="upc">UPC :</label> <input type="text" name="upc"
					class="form-control" placeholder="upc" id="upc">
			</div>
			<div class="form-group"
				style="margin-left: 50px; margin-bottom: 20px">
				<label for="itemName">Item Name:</label> <input type="text"
					name="itemName" class="form-control" id="itemName"
					placeholder="Item Name">
			</div>
			<div class="form-group"
				style="margin-left: 50px; margin-bottom: 20px">
				<label for="itemDescription">Item Description:</label> <input
					type="text" name="itemDescription" class="form-control"
					id="itemDescription" placeholder="itemDescription">
			</div>
			<div class="form-group" style="margin-left: 50px;">
				<label for="itemPrice">Item Price Per Unit:</label> <input
					type="text" name="itemPrice" class="form-control" id="itemPrice"
					placeholder="Item Price" style="margin-left: 8px;">
			</div>
			<div class="form-group" style="margin-left: 50px;">
				<label for="unitCost">Unit Cost:</label> <input type="text"
					name="unitCost" class="form-control" id="unitCost"
					placeholder="Unit Cost" style="margin-left: 36px;">
			</div>
			<div class="form-group" style="margin-left: 50px;">
				<label for="staringInventory"
					style="margin-left: -56px; text-align: center; overflow-wrap: break-word; width: 92px;">Starting
					Inventory:</label> <input type="text" name="staringInventory" 
					class="form-control" id="staringInventory"
					placeholder="Starting Inventory">
			</div>
			<div class="form-group" style="margin-left: 50px;">
				<label for="category">Category:</label> <input type="text"
					name="category" class="form-control" id="category"
					placeholder="category">
			</div>
			<div class="form-group" style="margin-left: 50px;">
				<label for="brand">Brand:</label> <input type="text" name="brand"
					class="form-control" id="brand" placeholder="Brand">
			</div>
			<div class="form-group" style="margin-left: 50px;">
				<label for="expirationDate">Expiration Date:</label> <input
					type="text" name="expirationDate" class="form-control"
					id="expirationDate" placeholder="Expiration Date">
			</div>
			<div class="form-group" style="margin-left: 50px;">
				<label for="itemSize">Item Size:</label> <input type="text"
					name="itemSize" class="form-control" id="itemSize"
					placeholder="Item Size">
			</div>
			<div class="form-group"></div>
			<input type="hidden" id="rownum" name="rownum" value="-1" /> 
			<input type="hidden" id="buttonClick" name="buttonClick" />

			<button class="btn btn-default btn btn-info active" type="submit"
				onClickstyle="margin-left: 486px;margin-top: 30px;" id="subBut">Submit</button>

		</form>

		<table class="table table-striped" style="margin-top: 50px;">
			<tr>
			<thead class="thead-dark">
				<th class="thead-light">UPC</th>
				<th class="thead-light">Item Name</th>
				<th class="thead-light">Item Description</th>
				<th class="thead-light">Item Price Per Unit</th>
				<th class="thead-light">Unit Cost</th>
				<th class="thead-light">Starting Inventory:</th>
				<th class="thead-light">Category</th>
				<th class="thead-light">Brand</th>
				<th class="thead-light">Expiration Date</th>
				<th class="thead-light">Item Size</th>
			<thead class="thead-dark">
				</tr>
				<%
					for (int i = 0; i < upcL.size(); i++) {
				%><tr id=<%=i%> onclick="editFunction('<%=i%>','<%=upcL.get(i)%>','<%=itemsL.get(i)%>','<%=itemdescriptionL.get(i)%>','<%=itemPriceL.get(i)%>',
				'<%=unitcostL.get(i)%>','<%=staringInventoryL.get(i)%>','<%=categoryL.get(i)%>','<%=brandL.get(i)%>','<%=expirationdateL.get(i)%>',
				'<%=itemsizeL.get(i)%>')">

					<td><%=upcL.get(i)%></td>
					<td><%=itemsL.get(i)%></td>
					<td><%=itemdescriptionL.get(i)%></td>
					<td><%=itemPriceL.get(i)%></td>
					<td><%=unitcostL.get(i)%></td>
					<td><%=staringInventoryL.get(i)%></td>
					<td><%=categoryL.get(i)%></td>
					<td><%=brandL.get(i)%></td>
					<td><%=expirationdateL.get(i)%></td>
					<td><%=itemsizeL.get(i)%></td>
					

				</tr>
				<%
					}
				%>
			
		</table>
	</div>

</body>
</html>
