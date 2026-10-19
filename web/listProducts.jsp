<%-- 
    Document   : listProducts
    Created on : Oct 16, 2026, 4:38:15 PM
    Author     : Usuario
--%>

<%@page import="java.util.List"%>
<%@page import="my.webapp.dao.ProductDAO"%>
<%@page import="my.webapp.model.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
if(session.getAttribute("usuario")==null){
response.sendRedirect("login.jsp");
return;
}
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Productos</title>
 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">
</head>
 
<body>
 
<div class="container mt-4">
 
<h2>Lista de Productos</h2>
 
<a href="registerProduct.jsp"
class="btn btn-primary mb-3">
Nuevo Producto
</a>
 
<table class="table table-bordered table-striped">
 
<thead>
<tr>
<th>ID</th>
<th>Nombre</th>
<th>Precio</th>
<th>Stock</th>
<th>Acción</th>
</tr>
</thead>
 
<tbody>
 
<%
ProductDAO dao = new ProductDAO();
List<Producto> lista = dao.listar();

for(Producto p : lista){
%>
 
<tr>
<td><%= p.getId() %></td>
<td><%= p.getNombre() %></td>
<td><%= p.getPrecio() %></td>
<td><%= p.getStock() %></td>
 
<td>
<a href="DeleteProductServlet?id=<%= p.getId() %>"
class="btn btn-danger"
onclick="return confirm('¿Eliminar producto?');">
Eliminar
</a>
</td>
</tr>
 
<%
}
%>
 
</tbody>
 
</table>
 
</div>
 
</body>
</html>
