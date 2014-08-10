<%@ taglib prefix="s" uri="/struts-tags"%>
<nav id="cabecera" class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="inicio.action">My pet</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="hidden"><a href="inicio.action"></a></li>
				<li class="page-scroll"><a href="#about">Quienes somos</a></li>
				<li class="page-scroll"><a href="<s:url action="dondeEstamos" namespace="/"/>">Donde estamos</a></li>
				<s:if test="#session.usuario != null">
					<li class="dropdown">
						<a href="inicio.action" class="dropdown-toggle" data-toggle="dropdown" >${session.usuario.nombre}
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">

							<s:if test="#session.usuario.tipo_usuario.id == 1">
								<!-- Administrador -->
								<li class="dropdown-header">Registros</li>
								<li><a href="<s:url action="registrarCliente" namespace="/"/>">Registrar cliente</a></li>
								<li><a href="<s:url action="registrarMedico" namespace="/"/>">Registrar medico</a></li>
								<li><a href="<s:url action="registrarMascota" namespace="/"/>">Registrar mascota</a></li>
								<li><a href="<s:url action="registrarCita" namespace="/"/>">Registrar cita</a></li>
								<li><a href="<s:url action="buscarCliente" namespace="/"/>">Buscar Cliente</a></li>
							</s:if>
							<s:elseif test="#session.usuario.tipo_usuario.id == 2">
								<!-- Cliente -->
								<li class="dropdown-header">Registros</li>
								<li><a href="<s:url action="registrarMascota" namespace="/"/>">Registrar mascota</a></li>
								<li><a href="<s:url action="registrarCita" namespace="/"/>">Registrar cita</a></li>
							</s:elseif>
							<s:elseif test="#session.usuario.tipo_usuario.id == 3">
								<!-- Medico -->
								<li><a href="#">Medico</a></li>
								<li><a href="#">Medico</a></li>
								<li><a href="#">Medico</a></li>
							</s:elseif>

							<li class="divider"></li>
							<li><a href="<s:url action="CerrarSesion" namespace="/usuario"/>">Salir</a></li>
						</ul></li>
				</s:if>
				<s:else>
					<li class="page-scroll"><a href="<s:url action="login" namespace="/"/>">Ingresar</a></li>
				</s:else>
			</ul>
		</div>
	</div>
</nav>
