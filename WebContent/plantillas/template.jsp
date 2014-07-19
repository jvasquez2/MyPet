<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MY PET</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Estilos -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/mypet.css"
	rel="stylesheet" type="text/css">
	
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- *********** -->

</head>

<body>
	<!-- CABECERA -->
	<tiles:insertAttribute name="cabecera" />
	<!-- CONTENIDO -->
	<tiles:insertAttribute name="contenido" />
	<!-- PIE  -->
	<tiles:insertAttribute name="pie" />

	<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-transition.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-alert.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-modal.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-dropdown.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-scrollspy.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-tab.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-tooltip.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-popover.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-button.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-collapse.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-carousel.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-typeahead.js"></script>
</body>
</html>