<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<s:form cssClass="form-horizontal" theme="bootstrap"
	action="registrarCliente" namespace="/cliente">
	<fieldset>
		<!-- Form Name -->
		<legend align="center">Registrar cliente</legend>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-5 control-label" for="dni">DNI</label>
			<div class="col-md-2">
				<input id="dni" name="dni" type="text" placeholder="ej: 45747226"
					class="form-control input-md">

			</div>
		</div>

		<!-- Password input-->
		<div class="form-group">
			<label class="col-md-5 control-label" for="pass">Contraseña</label>
			<div class="col-md-2">
				<input id="pass" name="pass" type="password"
					placeholder="ej: ********" class="form-control input-md">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-5 control-label" for="nombre">Nombre</label>
			<div class="col-md-2">
				<input id="nombre" name="nombre" type="text"
					placeholder="Ej. Juan Carlos" class="form-control input-md">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-5 control-label" for="apellido_paterno">Apellido
				paterno</label>
			<div class="col-md-2">
				<input id="apellido_paterno" name="apellido_paterno" type="text"
					placeholder="Ej. Vasquez" class="form-control input-md">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-5 control-label" for="apellido_materno">Apellido
				materno</label>
			<div class="col-md-2">
				<input id="apellido_materno" name="apellido_materno" type="text"
					placeholder="Ej. Valdivieso" class="form-control input-md">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-5 control-label" for="direccion">Direccion</label>
			<div class="col-md-4">
				<input id="direccion" name="direccion" type="text"
					placeholder="Ej. Av. Arequipa 315" class="form-control input-md">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-5 control-label" for="email">Email</label>
			<div class="col-md-2">
				<input id="email" name="email" type="text"
					placeholder="Ej. jvasquez@gmail.com" class="form-control input-md">

			</div>
		</div>

		<!-- Select Basic -->
		<div class="form-group">
			<label class="col-md-5 control-label" for="sexo">Sexo</label>
			<div class="col-md-2">
				<s:select name="cliente.sexo.id" list="#application.sexos"
					listKey="id" listValue="descripcion"/>
			</div>
		</div>

		<!-- Select Basic -->
		<div class="form-group">
			<label class="col-md-5 control-label">Distrito</label>
			<div class="col-md-2">
				<s:select name="cliente.tabla_postal.id" list="#application.postales"
					listKey="id" listValue="descripcion" />

			</div>
		</div>

		<!-- Button -->
		<div class="form-group">
			<label class="col-md-5 control-label" for="registrar"></label>
			<div class="col-md-2">
				<input type="button" class="btn btn-large btn-primary"
					value="Registrar">
			</div>
		</div>

	</fieldset>
</s:form>
