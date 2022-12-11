<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Cabinet</title>

<!-- Bootstrap -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">
	
</head>
<body>

	<h1>Welcome to the cabinet ${userEmail}</h1>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">

			<form class = "createProduct">   <!-- action = "product" method ="post" -->
				<div class="form-group">
					<input type="text"
						class="form-control productName"
						placeholder="Enter product name">
				</div>
				<div class="form-group">
					<input type="text"
						class="form-control productDescription"
						placeholder="Enter product description">
				</div>
				<div class="form-group">
					<input type="text"
						class="form-control productPrice"
						placeholder="Enter product price">
				</div>




				<button class="btn btn-primary createProduct">Submit</button>
			</form>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	
		<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		
	<script src="js/header.js"></script>
	<script src="js/serverCalls.js"></script>

</body>
</html>