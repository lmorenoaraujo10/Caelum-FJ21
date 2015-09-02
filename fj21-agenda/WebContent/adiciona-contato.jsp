<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="cabecalho.jsp" />
	<header class="header">
		<div class="container">
			<h1>Adiciona Contatos</h1>
		</div>
	</header>
	<div class="container">
		<div class="panel">
			<form action="adicionaContato" method="POST">
				<fieldset>
					<legend>Dados do contato</legend>
					<div class="form-group">
						<label for="name">Nome</label>
						<div class="input-group">
							<input type="text" name="name" required autofocus>
						</div>
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<div class="input-group">
							<input type="email" name="email" placeholder="email@exemplo.com"
								required>
						</div>
					</div>
					<div class="form-group">
						<label for="address">Endereço</label>
						<div class="input-group">
							<input type="text" name="address" required>
						</div>
					</div>
					<div class="form-group">
						<label for="birthDate">Data Nascimento</label>
						<div class="input-group">
							<input type="date" name="birthDate" required>
						</div>
					</div>
					<div>
						<button type="submit" class="btn btn-primary btn-lg">
							Gravar</button>
					</div>
				</fieldset>
			</form>
		</div>
		<!-- fim .panel -->
	</div>
	<!-- fim .container -->
<c:import url="rodape.jsp" />