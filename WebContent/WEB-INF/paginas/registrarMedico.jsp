<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<s:if test="#session.usuario.tipo_usuario.id == 2 || #session.usuario.tipo_usuario.id == 3">
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=inicio.action">
</s:if>
<s:else>
	<div class="container">
		<s:form cssClass="form-horizontal" theme="bootstrap"
			action="registrarUsuario" namespace="/usuario">
			<fieldset>
				<!-- Form Name -->
				<s:hidden name="usuario.tipo_usuario.id" value="2" />
				
				<legend align="center">Registrar Medico</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-5 control-label" for="dni">DNI</label>
					<div class="col-md-3">
						<s:textfield type="text" cssClass="form-control input-mdl"
							placeholder="ej: 45747226" name="usuario.dni" />
					</div>
				</div>

				<!-- Password input-->
				<div class="form-group">
					<label class="col-md-5 control-label" for="pass">Contraseña</label>
					<div class="col-md-3">
						<s:password type="password" cssClass="form-control input-md"
							placeholder="ej: ********" name="usuario.clave" />
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-5 control-label" for="nombre">Nombre</label>
					<div class="col-md-3">
						<s:textfield type="text" cssClass="form-control input-md"
							placeholder="Ej. Juan Carlos" name="usuario.nombre" />
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-5 control-label" for="apellido_paterno">Apellido
						paterno</label>
					<div class="col-md-3">
						<s:textfield type="text" cssClass="form-control input-md"
							placeholder="Ej. Vasquez" name="usuario.apellido_paterno" />
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-5 control-label" for="apellido_materno">Apellido
						materno</label>
					<div class="col-md-3">
						<s:textfield type="text" cssClass="form-control input-md"
							placeholder="Ej. Valdivieso" name="usuario.apellido_materno" />
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-5 control-label" for="direccion">Dirección</label>
					<div class="col-md-4">
						<s:textfield type="text" cssClass="form-control input-md"
							placeholder="Ej. Av. Arequipa 315" name="usuario.direccion" />
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-5 control-label" for="email">Email</label>
					<div class="col-md-3">
						<s:textfield type="text" cssClass="form-control input-md"
							placeholder="Ej. jvasquez@gmail.com" name="usuario.email" />
					</div>
				</div>

				<!-- Select Basic -->
				<div class="form-group">
					<label class="col-md-5 control-label" for="sexo">Sexo</label>
					<div class="col-md-3">
						<s:select name="usuario.sexo.id" list="#application.sexos"
							listKey="id" listValue="descripcion" />
					</div>
				</div>

				<!-- Select Basic -->
				<div class="form-group">
					<label class="col-md-5 control-label" for="tabla_postal">Distrito</label>
					<div class="col-md-3">
						<s:select name="usuario.tabla_postal.codigo"
							list="#application.postales" listKey="codigo"
							listValue="descripcion" />
					</div>
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="registrar"></label>
					<div class="col-md-5">
						<s:submit cssClass="btn btn-large btn-primary" type="submit"
							value="Registrar" />
					</div>
				</div>

				<s:actionerror theme="bootstrap" />
			</fieldset>
		</s:form>

	</div>
</s:else>
