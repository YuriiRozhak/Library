<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div  style="max-width: 800px; margin-top: 100px; margin-bottom: 100px" >
		<c:if test="${not empty users}">
		
			<table >
				<thead>
				<tr ><th>Name</th><th>Birth date</th><th>Library user since</th><th>InfoLink</th></tr>
				</thead>					
				<c:forEach items="${users}" var="current">
					<tr>
						<td><c:out value="${current.name}"/>
						</td>
						<td><c:out value="${current.birthDate}"/>
						</td>
						<td><c:out value="${current.registrationDate}"/>
						</td>
						<td><a href="${pageContext.request.contextPath}/users/info/${current.id}">info</a>
						</td>
						
					</tr>
				</c:forEach>
			</table>
		</c:if>
		<br/>
		
	</div>