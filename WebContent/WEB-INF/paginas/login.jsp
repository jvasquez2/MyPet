<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Le styles -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 80px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <link href="${pageContext.request.contextPath}/css/bootstrap-responsive.css" rel="stylesheet">

  </head>

  <body>
	
    <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">Iniciar sesion</h2>
        <input type="text" class="input-block-level" placeholder="Dni">
        <input type="password" class="input-block-level" placeholder="Contrase�a">
        <button class="btn btn-large btn-primary" type="submit">Aceptar</button>
        <button class="btn btn-large btn-primary" type="submit">Registrarse</button>
      </form>

    </div> 
