<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<% ArrayList<Producto> prod = (ArrayList<Producto>) request.getAttribute("prods");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>        
    </head>
    <body>        
        <h1>Gestion de Productos</h1>
        <p><a href="Inicio?action=agregar">Nuevo producto</a></p>
        <table border="3">
            <tr border="3">
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${prod}">
                <tr border="3">
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td>
                        <a href="Inicio?action=editar&id=${item.id}">Editar</a>
                    </td>
                    <td>
                        <a href="Inicio?action=eliminar&id=${item.id}" onclick="return(confirm('¿Estas seguro de eliminar el registro de la tabla?'))">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>  
        </table>        
    </body>
</html>
