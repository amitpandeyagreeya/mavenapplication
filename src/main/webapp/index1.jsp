<%@ page import = " java.util.* " %>
<html>
	<head>
	 <link rel="stylesheet" href = "bootstrap.min.css">
	</head>
<body class="bg-dark text-white">

  <tr>
			 <thead class="thead-dark">
				<th class="thead-light"> UPC  </th>
				<th class="thead-light"> Item Name</th>
				<th class="thead-light"> Item Description</th>
				<th class="thead-light"> Item Price Per Unit</th>
				<th class="thead-light"> Unit Cost</th>
				<th class="thead-light"> Starting Inventory:</th>
				<th class="thead-light"> Category</th>
				<th class="thead-light"> Brand</th>
				<th class="thead-light"> Expiration Date</th>
				<th class="thead-light"> Item Size</th>
			<thead class="thead-dark">
		</tr>	
		
		<tr>
				
				
			
			</tr>
			
			
			
  



<div class="container">
	<h2  style="margin-bottom:50px;"> Update processed data 1 </h2>
	<form action="index.jsp" id="form1" class="form-inline" method = "post">
		<div id="form" class="form-group" style="margin-left: 50px;margin-bottom: 20px;">
		    <label for="upc">UPC :</label>
			<input type="text" name="upc"  class="form-control" placeholder="upc" id = "upc">
		</div>
		<div class="form-group"  style="margin-left:50px;margin-bottom:20px">
			<label for="itemName">Item Name:</label>
			<input type="text" name="itemName" class="form-control" id = "itemName" placeholder="Item Name">
		</div>
		<div class="form-group"  style="margin-left:50px;margin-bottom:20px">
			<label for="itemDescription">Item Description:</label>
			<input type="text" name="itemDescription" class="form-control" id = "itemDescription" placeholder="itemDescription">
		</div>
		<div class="form-group"  style="margin-left:50px;">
			<label for="itemPrice">Item Price Per Unit:</label>
			<input type="text" name="itemPrice" class="form-control" id = "itemPrice" placeholder="Item Price" style="margin-left:8px;">
		</div>	
		<div class="form-group"  style="margin-left:50px;">
			<label for="unitCost">Unit Cost:</label>
			<input type="text" name="unitCost" class="form-control" id = "unitCost" placeholder="Unit Cost" style="margin-left:36px;">
		</div>	
		<div class="form-group"  style="margin-left:50px;">
			<label for="staringInventory" style="margin-left:-56px;text-align: center;overflow-wrap: break-word;width: 92px;">Starting Inventory:</label>
			<input type="text" name="staringInventory" class="form-control" id = "staringInventory" placeholder="Starting Inventory">
		</div>	
		<div class="form-group"  style="margin-left:50px;">
			<label for="category">Category:</label>
			<input type="text" name="category" class="form-control" id = "category" placeholder="category">
		</div>	
		<div class="form-group"  style="margin-left:50px;">
			<label for="brand">Brand:</label>
			<input type="text" name="brand" class="form-control" id = "brand" placeholder="Brand">
		</div>	
		<div class="form-group"  style="margin-left:50px;">
			<label for="expirationDate">Expiration Date:</label>
			<input type="text" name="expirationDate" class="form-control" id = "expirationDate" placeholder="Expiration Date">
		</div>	
		<div class="form-group"  style="margin-left:50px;">
			<label for="itemSize">Item Size:</label>
			<input type="text" name="itemSize" class="form-control" id = "itemSize" placeholder="Item Size">
		</div>	
		<div class="form-group">
		</div>
		  <button class="btn btn-default btn btn-info active" type="submit"  style="margin-left: 486px;margin-top: 30px;">Submit</button>
	</form>

<table class="table table-striped"  style="margin-top:50px;">
		<tr>
			 <thead class="thead-dark">
				<th class="thead-light"> UPC  </th>
				<th class="thead-light"> Item Name</th>
				<th class="thead-light"> Item Description</th>
				<th class="thead-light"> Item Price Per Unit</th>
				<th class="thead-light"> Unit Cost</th>
				<th class="thead-light"> Starting Inventory:</th>
				<th class="thead-light"> Category</th>
				<th class="thead-light"> Brand</th>
				<th class="thead-light"> Expiration Date</th>
				<th class="thead-light"> Item Size</th>
			<thead class="thead-dark">
		</tr>	
		
	</table>	
	</div>
	
</body>
</html>
