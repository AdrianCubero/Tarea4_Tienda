<%-- 
    Document   : registerProduct
    Created on : Oct 16, 2026, 2:56:14 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registrar Producto</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body>

<div class="container mt-5">

    <div class="card">

        <div class="card-header">
            <h3>Registrar Producto</h3>
        </div>

        <div class="card-body">

            <form action="ProductServlet" method="post">

                <div class="mb-3">
                    <label>Nombre</label>
                    <input type="text"
                           name="nombre"
                           class="form-control"
                           required>
                </div>

                <div class="mb-3">
                    <label>Precio</label>
                    <input type="number"
                           step="0.01"
                           name="precio"
                           class="form-control"
                           required>
                </div>

                <div class="mb-3">
                    <label>Stock</label>
                    <input type="number"
                           name="stock"
                           class="form-control"
                           required>
                </div>

                <button type="submit"
                        class="btn btn-success">
                    Guardar Producto
                </button>

            </form>
<br>

<a href="listProducts.jsp"
   class="btn btn-primary">
    Ver Productos
</a>    
        </div>

    </div>

</div>

</body>
</html>
