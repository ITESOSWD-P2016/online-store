<%@ page import="java.sql.*"%>
<%@ page import="com.iteso.store.db.DatabaseConnection"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<HTML>
<HEAD>
<TITLE>Product</TITLE>
</HEAD>

<BODY>
	<jsp:include page="header.jsp" />
	<div class="container">
		<h1>Products</h1>
		<br>
		<FORM ACTION="products.jsp" METHOD="GET">
			<label>Choose a category:</label>
			<div class="btn-group">
				<select class="btn btn-default dropdown-toggle usa"
					id="ddlCategories" onChange="getCategoryId()">
					<option value="0">All categories</option>
					<%
						DatabaseConnection dataBaseConnection = DatabaseConnection.getDataBaseConnection();
						String sQuery = "SELECT * FROM Category ORDER BY Category";
						dataBaseConnection.setComando(dataBaseConnection.getConexion().createStatement());
						dataBaseConnection.setRegistro(dataBaseConnection.getComando().executeQuery(sQuery));

						while (dataBaseConnection.getRegistro().next()) {
					%>
					<option value="<%=dataBaseConnection.getRegistro().getInt(1)%>"><%=dataBaseConnection.getRegistro().getString(2)%></option>
					<%
						}
					%>
				</select>
			</div>
			<div class="btn-group">
				<select class="btn btn-default dropdown-toggle usa" selected="20"
					id="ddlPage" onChange="getPageSize()" style="margin-top : 0px;">
					<option value="">All</option>
					<option value="10">10</option>
					<option value="20">20</option>
					<option value="50">50</option>
				</select>
			</div>
			<input type="hidden" id="hfSelectedCategory" name="id"> 
			<input type="hidden" id="hfSelectedIndex" name="index">
			<input type="hidden" id="hfPageSize" name="size">
			<button type="submit" id="filterButton" value="Buscar">Search</button>
		</FORM>
	</div>

	<div class="container">

		<%
			String id = request.getParameter("id");
			String index = request.getParameter("index");
			String size = request.getParameter("size");
			String limit = "";
			if (size != null && size != "0" && size != "")
				limit = " LIMIT 0, " + size;
			dataBaseConnection = DatabaseConnection.getDataBaseConnection();
			if (id == null || id == "" || id == "0")
				sQuery = "SELECT Description, Price FROM Products ORDER BY Description " + limit;
			else
				sQuery = "SELECT Description, Price FROM Products WHERE IdCategory = '" + id + "' ORDER BY Description " + limit;
			
			dataBaseConnection.setComando(dataBaseConnection.getConexion().createStatement());
			dataBaseConnection.setRegistro(dataBaseConnection.getComando().executeQuery(sQuery));
			if (!dataBaseConnection.getRegistro().next()) {
		%>
		<br>
		<h4>There are no products to list in this category</h4>
		<%
			} else {
				do {
		%>

		<div class="container" style="padding-left: 0px;">
			<div class="panel panel-default">
				<table id="productTable">
					<tr>
						<td id="productNameTd">
							<h4>
								<a><%=dataBaseConnection.getRegistro().getString(1)%></a>
							</h4>
						</td>
						<td>
							<h1>$<%=String.format( "%.2f", dataBaseConnection.getRegistro().getDouble(2))%></h1>
						</td>
						<td align="center" style="width: 160px;"><a href="cart.html"
							style="float: right"><i class="fa fa-shopping-cart"></i> Add
								to cart</a><br> <a href="cart.html" style="float: right"><i
								class="fa fa-shopping-cart"></i> Add to wishlist</a></td>
						<td><a href="#"> <img
								src="../resources/images/home/star.png" alt=""
								style="width: 55px; margin-left: 25px"
								title="Recommend to my friends" />
						</a></td>
					</tr>
				</table>

			</div>
		</div>
		<%
			} while (dataBaseConnection.getRegistro().next());
		}
		%>

		</TABLE>
	</div>
	<BR>

	<jsp:include page="footer.jsp" />
	<script>
		function getCategoryId() {
			var e = document.getElementById("ddlCategories");
			var categoryId = e.options[e.selectedIndex].value;
			var index = e.selectedIndex;
			if (categoryId == "0")
				categoryId = "";
			document.getElementById("hfSelectedCategory").value = categoryId;
			document.getElementById("hfSelectedIndex").value = index;
		}
		
		function getPageSize(){
			var e = document.getElementById("ddlPage");
			var size = e.value;
			document.getElementById("hfPageSize").value = size;
		}
	</script>
	<script>
		function getUrlVars() {
			var vars = {};
			var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,
					function(m, key, value) {
						vars[key] = value;
					});
			return vars;
		}
		setTimeout(function() {
			var second = getUrlVars()["index"];
			var size = getUrlVars()["size"];
			var e = document.getElementById("ddlCategories");
			e.selectedIndex = second;
			e =  document.getElementById("ddlPage");
			if (size != null && size != "")
				e.value = size;

		}, 1);
	</script>

</BODY>
</HTML>