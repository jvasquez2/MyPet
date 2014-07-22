<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<s:if test="#session.usuario == null">
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=inicio.action">
</s:if>
<s:elseif test="#session.usuario.tipo_usuario.id == 1">

</s:elseif>
<s:elseif test="#session.usuario.tipo_usuario.id == 2">
	
</s:elseif>
<s:elseif test="#session.usuario.tipo_usuario.id == 3">
	<META HTTP-EQUIV="Refresh" CONTENT="0; URL=inicio.action">
</s:elseif>


<div class="container">

	<s:form cssClass="form-horizontal" theme="bootstrap"
		action="registrarMascota" namespace="/mascota">

		<fieldset>

			<!-- Form Name -->
			<legend align="center">Registrar Mascota</legend>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="nombre">Nombre:</label>
				<div class="col-md-4">
					<input id="nombre" name="nombre" type="text"
						placeholder="Nombre de mascosta" class="form-control input-md">
					<span class="help-block">help</span>
				</div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Select
					Basic</label>
				<div class="col-md-4">
					<select id="selectbasic" name="selectbasic" class="form-control">
						<option value="1">Option one</option>
						<option value="2">Option two</option>
					</select>
				</div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Select
					Basic</label>
				<div class="col-md-4">
					<select id="selectbasic" name="selectbasic" class="form-control">
						<option value="1">Option one</option>
						<option value="2">Option two</option>
					</select>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Text
					Input</label>
				<div class="col-md-4">
					<input id="textinput" name="textinput" type="text"
						placeholder="placeholder" class="form-control input-md"> <span
						class="help-block">help</span>
				</div>
			</div>

		</fieldset>
	</s:form>

</div>