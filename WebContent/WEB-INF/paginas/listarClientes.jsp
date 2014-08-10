<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s"  uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<s:form action="buscarCliente" namespace="/cliente">
		<s:textfield name="cliente.dni" key="label.dni"/>
		<s:submit value="buscar"/>
	</s:form>
	
	<s:if test="!clientes.isEmpty">
		<table class="tabla">
			<thead>
				<tr>
					<th><s:text name="label.dni"/></th>
					<th><s:text name="label.nombre"/></th>
					<th><s:text name="label.apellido_paterno"/></th>
					<th><s:text name="label.apellido_materno"/></th>
					<th><s:text name="label.direccion"/></th>
					<th><s:text name="label.distrito"/></th>
					<th><s:text name="label.sexo"/></th>
					<th><s:text name="label.email"/></th>
				</tr>
			</thead>
			<s:iterator value="clientes" status="status">
				<tr class="<s:if test="#status.even">par</s:if><s:else>impar</s:else>">
				<td><s:property value="usuario"/></td>
				<td><s:property value="nombre"/></td>
				<td><s:property value="apellido_paterno"/></td>
				<td><s:property value="apellido_materno"/></td>
				<td><s:property value="direccion"/></td>
				<td><s:property value="tabla_postal"/></td>
				<td><s:property value="sexo"/></td>
				<td><s:property value="email"/></td>
			</s:iterator>
		</table>
	</s:if>

</body>
</html>