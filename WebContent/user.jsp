<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="it.consoft.nameless.model.User"%>
<%@ page
	import="it.consoft.nameless.entity.MotoManager, java.util.*, it.consoft.nameless.model.TipoUserEnum"%>
<%@ include file="session.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp"%>
<title>Profilo</title>
</head>
<body>
	<%
		User user = (User) session.getAttribute("user");
		String nickname = user.getNickname();
		String nome = user.getNome();
		String cognome = user.getCognome();
		String indirizzo = user.getIndirizzo();
		String dataIscrizione = user.getDataIscrizione();
		int eta = user.getEta();
		float credito = user.getCredito();
		TipoUserEnum role = user.getRole();
	%>
	<%@ include file="navbar.jsp"%>
	<div class="container">
		<div class="well span8 offset2">
			<div class="row-fluid user-row">
				<div class="span1">
					<img class="img-circle"
						src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=50"
						alt="User Pic">
				</div>
				<div class="span10">
					<strong><%=nickname%></strong><br> <span class="text-muted">Livello utente: <%=role%></span>
				</div>
				<div class="span1 dropdown-user" data-for=".cyruxx">
					<i class="icon-chevron-down text-muted"></i>
				</div>
			</div>
			<div class="row-fluid user-infos cyruxx">
				<div class="span10 offset1">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">Informazioni utente</h3>
						</div>
						<div class="panel-body">
							<div class="row-fluid">
								<div class="span3">
									<img class="img-circle"
										src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100"
										alt="User Pic">
								</div>
								<div class="span6">
									<strong><%=nickname%></strong><br>
									<table class="table table-condensed table-responsive table-user-information">
										<tbody>
											<tr>
												<td>Nome:</td>
												<td><%=nome%></td>
											</tr>
											<tr>
												<td>Cognome:</td>
												<td><%=cognome%></td>
											</tr>
											<tr>
												<td>Et�:</td>
												<td><%=eta%></td>
											</tr>
											<tr>
												<td>Livello utente:</td>
												<td><%=role%></td>
											</tr>
											<tr>
												<td>Registrato dal:</td>
												<td><%=dataIscrizione%>></td>
											</tr>
											<tr>
												<td>Indirizzo:</td>
												<td><%=indirizzo%></td>
											</tr>
											<tr>
												<td>Credito:</td>
												<td><%=credito%></td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<button class="btn  btn-primary" type="button" data-toggle="tooltip"
								data-original-title="Send message to user">
								<i class="icon-envelope icon-white"></i>
							</button>
							<span class="pull-right">
								<button class="btn btn-warning" type="button" data-toggle="tooltip"
									data-original-title="Edit this user">
									<i class="icon-edit icon-white"></i>
								</button>
								<button class="btn btn-danger" type="button" data-toggle="tooltip"
									data-original-title="Remove this user">
									<i class="icon-remove icon-white"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var panels = $('.user-infos');
							var panelsButton = $('.dropdown-user');
							panels.hide();

							//Click dropdown
							panelsButton
									.click(function() {
										//get data-for attribute
										var dataFor = $(this).attr('data-for');
										var idFor = $(dataFor);

										//current button
										var currentButton = $(this);
										idFor
												.slideToggle(
														400,
														function() {
															//Completed slidetoggle
															if (idFor
																	.is(':visible')) {
																currentButton
																		.html('<i class="icon-chevron-up text-muted"></i>');
															} else {
																currentButton
																		.html('<i class="icon-chevron-down text-muted"></i>');
															}
														})
									});

							$('[data-toggle="tooltip"]').tooltip();
						});
	</script>

</body>
</html>