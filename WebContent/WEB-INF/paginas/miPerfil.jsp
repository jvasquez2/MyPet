<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<s:if test="#session.usuario == null ">
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=inicio.action">
</s:if>
<s:elseif test="#session.usuario.tipo_usuario.id == 1">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<s:form cssClass="form-horizontal" theme="bootstrap"
					action="mantenerUsuario" namespace="/usuario">
					<fieldset></fieldset>
				</s:form>
			</div>
			<div class="col-md-6">
				<s:form cssClass="form-horizontal" theme="bootstrap"
					action="registrarMascota" namespace="/">
					<fieldset></fieldset>
				</s:form>
			</div>
		</div>
	</div>
</s:elseif>
<s:elseif test="#session.usuario.tipo_usuario.id == 2" >
	<div class="container">
		<s:form cssClass="form-horizontal" theme="bootstrap"
			action="mantenerUsuario" namespace="/usuario">
			<fieldset></fieldset>
		</s:form>

	</div>
</s:elseif>
<s:elseif test="#session.usuario.tipo_usuario.id == 3">
	<div class="container">
		<s:form cssClass="form-horizontal" theme="bootstrap"
			action="registrarMascota" namespace="/mascota">
			<fieldset></fieldset>
		</s:form>

	</div>
</s:elseif>