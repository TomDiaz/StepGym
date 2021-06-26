<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Presentacion.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Step Gym - Proyecto Web</title>
     
      <link rel="stylesheet" href="css/login.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/7463cc8112.js" crossorigin="anonymous"></script>
</head>
<body>
   

 
   

    <div class="container-fluid login-container">
       <div class="row">

             <div class="col-4 login-img">
             
              <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                   <div class="carousel-inner">
                         <div class="carousel-item active">
                            <img src="img/login/1.jpg" class="d-block" alt="...">
                       </div>
                       <div class="carousel-item">
                            <img src="img/login/2.jpg" class="d-block" alt="...">
                       </div>
                       <div class="carousel-item">
                           <img src="img/login/3.jpg" class="d-block " alt="...">
                        </div>
                    </div>
             </div>

          </div>

          <div class="col login">
              
              <div class="container">
              
                  <div class="panel">
                    
                    <img style="width:180px" src="img/logo.png">

                   <form class="login-form"  id="form1" runat="server">

                       <div class="input">
                           <label  class="col-sm-2 col-form-label">Usuario o correo electrónico</label>
                          <asp:TextBox class="txt" ID="txtUsuario" runat="server" ></asp:TextBox>
                       </div>

                        <div class="input">
                            <label  class="col-sm-2 col-form-label">Contraseña</label>
                           <asp:TextBox class="txt" ID="txtContrasena" runat="server" type="password"  ></asp:TextBox>

                            <div class="recuperar-cont">
                               <a href="#">¿Olvidaste tu contraseña?</a>
                            </div>

                          
                       </div>
                       <br />
                       <div class="d-grid gap-2 login-boton">
                           <asp:Button class="btn btn-outline-success" ID="btnLogin" runat="server" Text="Entrar" OnClick="btnLogin_Click" />
                           <asp:Button class="btn" ID="btnRegistrarse" runat="server" Text="Registrarse" />
                       </div>
                       
                   </form>
                  </div>
              
              </div>



           </div>
        

        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

        
       
   

</body>
</html>
