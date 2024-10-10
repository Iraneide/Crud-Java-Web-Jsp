
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Projeto JAVA WEB JSP</title>
<limk href="css/estyle.css" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="CSS/estyle.css" rel="stylesheet">
</head>


<body>
    <div id="login">
        <h3 class="text-center text-white pt-5">Projeto Web Jsp</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Usuário</label><br>
                                <input type="text" name="txtusuario" id="txtusuario" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Senha</label><br>
                                <input type="password" name="txtsenha" id="txtsenha" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Lembrar-me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="Logar" >
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="#" class="text-info">Cadastre-se</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            
            <p align="center" class="text-light">
            <%
            String usuario = request.getParameter("txtusuario");
            String senha = request.getParameter("txtsenha");                    		
            if(usuario == "" || senha == ""){
            	out.println("Preencha od Dados");
            }
            
            
            %>
            </p>
         
        </div>
    </div>
</body>