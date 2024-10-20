<%-- 
    Document   : index
    Created on : 20/10/2024, 18:44:43
    Author     : Iraneide Cândido da Silva
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PProjeto Java Web Jsp</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="CSS/estyle.css" rel="stylesheet">
<!------ Include the above in your HEAD tag ---------->

<%
Connection con = null;
Statement st = null;
ResultSet rs= null;
%>
</head>
<body>

	<div id="login">
		<h3 class="text-center text-white pt-5">Login Java Web Jsp</h3>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form" action="" method="post">
							<h3 class="text-center text-info">Login</h3>
							<div class="form-group">
								<label for="username" class="text-info">Usuario</label><br>
								<input type="text" name="txtusuario" id="txtusuario"
									class="form-control" required >
							</div>
							<div class="form-group">
								<label for="password" class="text-info">Senha:</label><br>
								<input type="text" name="txtsenha" id="txtsenha"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label for="remember-me" class="text-info"><span>Lembrar-me</span> <span><input
										id="remember-me" name="remember-me" type="checkbox"></span></label><br>
								<input type="submit" name="submit" class="btn btn-info btn-md"
									value="Enviar">
							</div>
							<div id="register-link" class="text-right">
								<a href="#" class="text-info">Cadastre-se</a>
							</div>
						</form>

						<p class="text-muted mt-2">
							<%
							
							con = DriverManager.getConnection("jdbc:mysql://localhost/javaweb?user=root&password=");
							st =con.createStatement();
							rs = st.executeQuery("");
							
							
							
							String usuario = request.getParameter("txtusuario");
							String senha = request.getParameter("txtsenha");
										
							if (usuario == null || senha == null){

								out.println("Preencha os Dados");
							}else {
								if(usuario.equals("Iraneide") && senha.equals("123")){
									response.sendRedirect("usuarios.jsp");
									
								}else{
									out.println("Preencha os Dados");
								}
							}
							
							%>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
