<form class="form-horizontal">
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
				<select id="sexo" name="sexo" class="form-control">
					<option value="1">Option one</option>
					<option value="2">Option two</option>
				</select>
			</div>
		</div>

		<!-- Select Basic -->
		<div class="form-group">
			<label class="col-md-5 control-label" for="distrito">Distrito</label>
			<div class="col-md-2">
				<select id="distrito" name="distrito" class="form-control">
					<option value="1">Option one</option>
					<option value="2">Option two</option>
				</select>
			</div>
		</div>

		<!-- Button -->
		<div class="form-group">
			<label class="col-md-5 control-label" for="registrar"></label>
			<div class="col-md-6">
				<input type="button" class="btn btn-large btn-primary" value="Registrar">
				<a href="inicio.action"> 
					<input type="button" class="btn btn-large btn-primary" value="Cancelar">
				</a>
			</div>
		</div>

	</fieldset>
</form>
