
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<div class="container">
	<s:form cssClass="form-signin" theme="bootstrap" action="verificarUsuario" namespace="/usuario">
		<h2 class="form-signin-heading">Ingresar...</h2>
		<s:textfield type="text" cssClass="input-block-level" placeholder="Dni" name="usuario.codigo" />
		<s:password type="password" cssClass="input-block-level"
			placeholder="Contraseña" name="usuario.clave" />
		<s:submit cssClass="btn btn-large btn-primary" type="submit" value="Aceptar" />
	</s:form>
	
	<s:form cssClass="form-signup" theme="bootstrap" action="registrar" namespace="/">
		<button class="btn btn-large btn-primary" >Registrarse</button>
	</s:form>
	
	
	<s:actionerror theme="bootstrap" />

</div>
