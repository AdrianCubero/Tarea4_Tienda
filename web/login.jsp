<%-- 
    Document   : login
    Created on : Oct 16, 2026, 2:13:58 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body>

<div class="container mt-5">

    <div class="card">

        <div class="card-header">
            <h3>Iniciar Sesión</h3>
        </div>

        <div class="card-body">

            <form action="LoginServlet" method="post">

                <div class="mb-3">
                    <label>Usuario</label>
                    <input type="text"
                           name="usuario"
                           class="form-control">
                </div>

                <div class="mb-3">
                    <label>Contraseña</label>
                    <input type="password"
                           name="password"
                           class="form-control">
                </div>

                <button type="submit"
                        class="btn btn-primary">
                    Ingresar
                ody>
</html>
