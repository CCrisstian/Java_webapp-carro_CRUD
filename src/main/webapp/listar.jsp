<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, org.CCristian.apiservlet.webapp.headers.models.*" %>

<%
    List<Producto> productos = (List<Producto>) request.getAttribute("productos");
    Optional<String> username = (Optional<String>) request.getAttribute("username");

    String mensajeRequest = (String) request.getAttribute("mensaje");
    String mensajeApp = (String) application.getAttribute("mensaje");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Listado de Productos</title>
</head>
<body>
    <h1>Listado de Productos</h1>
    <% if (username.isPresent()) { %>
        <div>Hola <%= username.get() %>, bienvenido!</div>
        <p><a href="<%=request.getContextPath()%>/productos/form">Crear [+]</a></p>
    <% } %>
    <table>
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            <th>Tipo</th>
            <% if (username.isPresent()) { %>
                <th>Precio</th>
                <th>Agregar</th>
                <th>Editar</th>
                <th>Eliminar</th>
            <% } %>
        </tr>
        <% for (Producto p : productos) { %>
            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getNombre() %></td>
                <td><%= p.getCategoria().getNombre() %></td>
                <% if (username.isPresent()) { %>
                    <td><%= p.getPrecio() %></td>
                    <td><a href="<%= request.getContextPath() %>/carro/agregar?id=<%= p.getId() %>">Agregar al Carro</a></td>
                    <td><a href="<%= request.getContextPath() %>/productos/form?id=<%= p.getId() %>">Editar</a></td>
                    <td><a onclick="return confirm('¿Está seguro que desea Eliminar?');"
                    href="<%= request.getContextPath() %>/productos/eliminar?id=<%= p.getId() %>">Eliminar</a></td>
                <% } %>
            </tr>
        <% } %>
    </table>
    <p><%= mensajeApp %></p>
    <p><%= mensajeRequest %></p>
</body>
</html>