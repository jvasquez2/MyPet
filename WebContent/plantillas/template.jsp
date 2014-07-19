<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MY PET</title>

<!-- Estilos -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/css/bootstrap-responsive.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/mypet.css"
	rel="stylesheet" type="text/css">

<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<!-- *********** -->

</head>

<body>
	<div id="container">
		<div>
			<!-- CABECERA -->
			<tiles:insertAttribute name="cabecera" />
		</div>

		<div>
			<!-- CONTENIDO -->
			<tiles:insertAttribute name="contenido" />
		</div>
		<div class="clear"></div>
	</div>
	
	<div id="footer">
		<!-- PIE  -->
		<tiles:insertAttribute name="pie" />
	</div>

	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-transition.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-alert.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-modal.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-dropdown.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-scrollspy.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-tab.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-tooltip.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-popover.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-button.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-collapse.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-carousel.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-typeahead.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>