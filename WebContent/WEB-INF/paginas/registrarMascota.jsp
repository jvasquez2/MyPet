<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<s:if test="#session.usuario == null ">
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=inicio.action">
</s:if>
<s:elseif test="#session.usuario.tipo_usuario.id == 1">

</s:elseif>
<s:elseif test="#session.usuario.tipo_usuario.id == 2">
	<div class="container">
		<s:form cssClass="form-horizontal" theme="bootstrap"
			action="registrarMascota" namespace="/mascota">
			<fieldset>
				<!-- Form Name -->
				<legend align="center">Registrar Mascota</legend>

				<!-- Text input-->
				<s:hidden name="mascota.cliente.dni" value="%{#session.usuario.dni}" />

				<!-- Password input-->
				<div class="form-group">
					<label class="col-md-5 control-label">Nombre</label>
					<div class="col-md-3">
						<s:password type="text" cssClass="form-control input-md"
							placeholder="ej: Fido" name="mascota.nombre" />
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-5 control-label">Fecha nacimiento</label>
					<div class='col-md-3 input-group date col-md-3'
						id='fecha_nacimiento' data-date-format="YYYY-MM-DD">
						<s:textfield type='text' cssClass="form-control input-md"
							placeholder="Ej. 2014-01-01" name="mascota.fecha_nacimiento" />
						<span class="input-group-addon"><span
							class="glyphicon glyphicon-time"></span> </span>
					</div>

					<div class='input-group date' id='fecha_nacimiento'
						data-date-format="YYYY/MM/DD">
						<input type='text' class="form-control" /> <span
							class="input-group-addon"><span
							class="glyphicon glyphicon-time"></span> </span>
					</div>

				</div>

				<!-- Select Basic -->
				<div class="form-group">
					<label class="col-md-5 control-label">Especie</label>
					<div class="col-md-3">
						<s:select name="mascota.especie.id" list="#application.especies"
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
					<label class="col-md-4 control-label"></label>
					<div class="col-md-5">
						<s:submit cssClass="btn btn-large btn-primary" type="submit"
							value="Registrar" />
					</div>
				</div>

				<s:actionerror theme="bootstrap" />
			</fieldset>
		</s:form>




		<script type="text/javascript">
			$(function() {
				$('#fecha_nacimiento').datetimepicker({
					pickTime : false
				});
			});
		</script>

	</div>
</s:elseif>
<s:elseif test="#session.usuario.tipo_usuario.id == 3">
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=inicio.action">
</s:elseif>