
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<s:if test="#session.usuario != null">
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=inicio.action">
</s:if>
<s:else>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<s:form cssClass="form-signin" theme="bootstrap"
					action="verificarUsuario" namespace="/usuario">
					<h2 class="form-signin-heading">Ingresar...</h2>
					<s:textfield type="text" cssClass="input-block-level"
						placeholder="Dni" name="usuario.dni" />
					<s:password type="password" cssClass="input-block-level"
						placeholder="Contraseña" name="usuario.clave" />
					<s:submit cssClass="btn btn-large btn-primary" type="submit"
						value="Aceptar" />
				</s:form>

				<s:form cssClass="form-signup" theme="bootstrap"
					action="registrarCliente" namespace="/">
					<button class="btn btn-large btn-primary">Registrarse</button>
				</s:form>
			</div>

			<div class="form-group">
				<div class="col-md-4">
				</div>
				<div class="col-md-4" align="center">
					<s:actionerror theme="bootstrap"/>
				</div>
				<div class="col-md-4">
				</div>
			</div>



		</div>
	</div>
</s:else>
