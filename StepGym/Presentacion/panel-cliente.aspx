<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panel-cliente.aspx.cs" Inherits="Presentacion.panel_cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Step Gym - Proyecto Web</title>
     
    <link rel="stylesheet" href="css/panel.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/7463cc8112.js" crossorigin="anonymous"></script>

</head>
<body>


   
    <div class="container-fluid contenido-panel">
        
     <div class="d-flex align-items-start">

         <div class="menu-panel">
             <div class="nav nav-panel-pincipal flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">

                 <h4>Panel Cliente</h4>
                <hr/>
               <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true"> <span>Clientes</span>  <i class="fas fa-users"></i></button>
               <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false"><span>Profesores</span>  <i class="fas fa-id-card-alt"></i></buttona>
               <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false"> <span>Clases</span> <i class="fas fa-file-medical"></i></button>
               <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false"> <span>Perfil</span>  <i class="fas fa-user-alt"></i></button>
            
              </div>

             <div class="nav-detalle">
                  <img style="width:90%" src="img/logo.png">
                  <a class="salir" href="index.aspx"><i class="fas fa-angle-double-left"></i> <span>Volver al Home</span></a>
             </div>

         

         </div>

     

        <div class="tab-content" id="v-pills-tabContent">
    
           <div class="tab-pane fade show active contenido" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">  
               
               <ul class="nav nav-tabs" id="myTab" role="tablist">
                 <li class="nav-item" role="presentation">
                   <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Nuevo Cliente</button>
                 </li>
                 <li class="nav-item" role="presentation">
                   <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Lista de Clientes</button>
                 </li>
                 <li class="nav-item" role="presentation">
                   <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Total del mes</button>
                 </li>
               </ul>

               <div class="tab-content" id="myTabContent">
                  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"> AGREGAR</div>
                  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab"> ELIMINAR</div>
                  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab"> MODIFICAR</div>
               </div>
           </div>

           <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab"> Profesores </div>

           <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab"> Clases </div>

          <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab"> Perfil </div>
        </div>


       </div>

    </div>





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

</body>
</html>
