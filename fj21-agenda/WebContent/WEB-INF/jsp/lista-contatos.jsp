<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="cabecalho.jsp" />
<div class="container">
	<table class="table table-responsive">
		<%-- <jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" /> --%>
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Data Nascimento</th>
			</tr>
		</thead>
		<tbody class="table-striped">
			<c:forEach var="contato" items="${contatos}" varStatus="id">
				<tr style="background: ${id.count% 2== 0? '#AE8': '#FFF'}">
					<td>${contato.id}</td>
					<td>${contato.nome}</td>
					<td><c:choose>
							<c:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:when>
							<c:otherwise>Email não informado</c:otherwise>
						</c:choose></td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}"
							pattern="dd/MM/yyyy" /></td>
					<td><a href="mvc?logica=ExibeFormularioContatoLogic&id=${contato.id}">
							<button class="btn btn-large">
								<span class="glyphicon glyphicon-pencil"></span>
							</button>
					</a></td>
					<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">
							<button class="btn btn-large">
								<span class="glyphicon glyphicon-remove"></span>
							</button>
					</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="mvc?logica=ExibeFormularioContatoLogic">
		<button class="btn btn-large">
			<span class="glyphicon glyphicon-plus"></span> Adicionar contato
		</button>
	</a>
</div>
<!-- fim .container -->
<c:import url="rodape.jsp" />