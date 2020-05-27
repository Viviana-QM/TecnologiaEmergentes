<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Blog" %>
<%
    Blog b = (Blog)request.getAttribute("b");
 %>  

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <c:if test="${item.id == 0}">Nuevo Blog</c:if>
            <c:if test="${item.id != 0}">Editar</c:if>
        </h1>
        <form action="MainController" method="post">
            <table>
                 
                <td><input type="hidden" name="id" value="${b.id}"></td>
                
                <tr>
                <td>FECHA</td>
                <td><input type="text" name="fecha" value="${b.fecha}"></td>
                </tr>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="${b.titulo}"></td>
                </tr>
                <br>
                <td>Contenido</td>
                 <td><input type="text" name="contenido" value="${b.contenido}"></td>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
