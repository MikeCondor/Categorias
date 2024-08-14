<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Categorias</h1>
 
	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>nombre</th>
				<th>descripcion</th>
				<th>imagen</th>
				<th>estado</th>
				
				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="items" items="${categorias}">
				<tr>
					<td>${items.id}</td>
					<td>${items.nombre}</td>
					<td>${items.descripcion}</td>
					<td>${items.estado}</td>
					<td>
						<img alt="Portada del plato" width="100" height="100" src="${pagecontext.request.contextPath}/resources/img/${item.imagen}"/>
					</td>
		
					<td>
					 	<button >
					 		Actualizar
					 	</button>
					 	<button >
					 		Eliminar
					 	</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
 



</body>
</html>