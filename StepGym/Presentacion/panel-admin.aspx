<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panel-admin.aspx.cs" Inherits="Presentacion.panel_admin" %>

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


   
    <form id="form1" runat="server">


   
    <div class="container-fluid contenido-panel">
        
     <div class="d-flex align-items-start">

         <div class="menu-panel">
             <div class="nav nav-panel-pincipal flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">

                 <h4>Panel Administrador</h4>
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
               
               <ul class="nav nav-tabs menu-seccion-clientes" id="myTab" role="tablist">
               
                    <!-- BOTON AGREGAR CLIENTES -->
                 <li class="nav-item" role="presentation">
                     <asp:Button class="nav-item active" ID="btnVerAgregarCliente" runat="server" Text="Nuevo Cliente" OnClick="btnVerAgregarCliente_Click" />
                 </li>

                   
                    <!-- BOTON VER LISTA CLIENTES -->
                 <li class="nav-item" role="presentation">
                   <asp:Button class="nav-item" ID="btnVerListaCLientes"  runat="server" Text="Lista de Clientes" OnClick="btnVerListaCLientes_Click" />
                 </li>

                
                
               </ul>

               <div class="tab-content" id="myTabContent">
                  
                   <!-- SECCION AGREGAR CLIENTES -->
                   <div class="tab-pane fade show active " id="home" role="tabpanel" aria-labelledby="home-tab" runat="server">
                      
                      
                      <div class="container nuevo-cliente">
                           
                          <div class="row">
                               
                              <div class="col-sm cliente-datos">
                               
                                    <h4>Agregar Cliente</h4>

                                  <div class="datos-personales">
                                     <div class="input">
                                         <label>Nombre</label>
                                        <asp:TextBox Class="txt" ID="txtClienteNombre" runat="server"></asp:TextBox>
                                    </div>   
                                    
                                     <div class="input">
                                        <label>Apellido</label>
                                        <asp:TextBox Class="txt" ID="txtClienteApellido" runat="server"></asp:TextBox>
                                    </div> 
                                    
                                    <div class="input">
                                        <label>Correo electrónico</label>
                                        <asp:TextBox Class="txt" ID="txtClienteMail" runat="server"></asp:TextBox>
                                    </div> 

                                    <div class="input">
                                         <label>Teléfono</label>
                                        <asp:TextBox Class="txt" ID="txtClienteTelefono" runat="server"></asp:TextBox>
                                    </div> 
                                  </div>

                                  <div class="clases-cliente">

                                      <div class="input">
                                          <asp:DropDownList Class="list form-select form-select-lg mb-3" ID="lstClases" runat="server">
                                          </asp:DropDownList>
                                      </div>

                                      <asp:Button Class="btnClase" ID="btnClienteAddClase" runat="server" Text="Agregar +" OnClick="btnClienteAddClase_Click" />
                                      <asp:LinkButton ID="btnClienteRemoveClase" runat="server" OnClick="btnClienteRemoveClase_Click"><i class="fas fa-undo-alt"></i></asp:LinkButton>

                                      <asp:ListBox ID="lstClasesTag" runat="server" ></asp:ListBox>
                                      
                                  </div>
                                  
                                  <asp:Button Class="btnNuevoCliente" ID="btnAgregarCliente" runat="server" Text="Agregar nuevo cliente +" OnClick="btnAgregarCliente_Click"  />

                              </div>
                              <div class="col-sm ultimos-miembros">
                                  <h4>Ultimos Miembros</h4>

                                  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                                     <div class="carousel-inner">

                                           <div class="carousel-item  active carga-perfiles">
                                               <img class="d-block w-100" alt="perfil" src="img/loading.gif">
                                           </div>
                                           <asp:Label ID="lblUltimosMiembros" runat="server"></asp:Label>
                                          
                                     </div>
                               <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"  data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                               </button>
                               <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"  data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                               </button>
                               </div>

                              </div>

                           </div>
                       </div>

                  </div>

                  <!-- SECCION AGREGAR LISTAR CLIENTES -->
                  <div class="tab-pane fade" id="listaClientes" role="tabpanel" aria-labelledby="profile-tab" runat="server"> ELIMINAR
                        
                       <asp:ListView ID="lbClientes" runat="server" DataKeyNames="IdCliente" >

            <EditItemTemplate>
                <span style="">IdCliente:
                <asp:Label ID="IdClienteLabel1" runat="server" Text='<%# Eval("IdCliente") %>' />
                <br />
                Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                Apellido:
                <asp:TextBox ID="ApellidoTextBox" runat="server" Text='<%# Bind("Apellido") %>' />
                <br />
                Mail:
                <asp:TextBox ID="MailTextBox" runat="server" Text='<%# Bind("Mail") %>' />
                <br />
                Telefono:
                <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                <br />
                foto:
                <asp:TextBox ID="fotoTextBox" runat="server" Text='<%# Bind("foto") %>' />
                <br />
                <asp:CheckBox ID="ActivoCheckBox" runat="server" Checked='<%# Bind("Activo") %>' Text="Activo" />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No se han devuelto datos.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />Apellido:
                <asp:TextBox ID="ApellidoTextBox" runat="server" Text='<%# Bind("Apellido") %>' />
                <br />Mail:
                <asp:TextBox ID="MailTextBox" runat="server" Text='<%# Bind("Mail") %>' />
                <br />Telefono:
                <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                <br />foto:
                <asp:TextBox ID="fotoTextBox" runat="server" Text='<%# Bind("foto") %>' />
                <br />
                <asp:CheckBox ID="ActivoCheckBox" runat="server" Checked='<%# Bind("Activo") %>' Text="Activo" />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                
               <div class="lista-clientes">
                    <asp:ImageButton Class="img" ID="ImageButton1" runat="server" Height="50px" ImageUrl='<%# Eval("Foto") %>' Width="50px" />
               
                    <span>
                        <b>Nombre:</b>
                         <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                         <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>'></asp:Label>
                    </span>
                
                    <span>
                        <b>Mail:</b>
                        <asp:Label ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>'></asp:Label>
                    </span>
                    <span>
                        <b>Telefono:</b>
                        <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>'></asp:Label>
                    </span>
                   <asp:Button ID="btnModificarCliente" runat="server" CommandArgument='<%# Eval("IdCliente") %>' CommandName="eventoModificar" Text="Modificar" OnCommand="btnModificarCliente_Command1" />
                   <asp:Button ID="btnEliminarCLiente" runat="server" CommandArgument='<%# Eval("IdCliente") %>' CommandName="eventoEliminar" OnCommand="btnEliminarCLiente_Command" Text="Eliminar" />
                </div>

              
                </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span ID="itemPlaceholder" runat="server" />
                    
                   
                    <br />
                    <span></span>
                   
                    </span>
                    <br />
                    </span>
                </div>
              
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">IdCliente:
                <asp:Label ID="IdClienteLabel" runat="server" Text='<%# Eval("IdCliente") %>' />
                <br />
                Nombre:
                <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                <br />
                Apellido:
                <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
                <br />
                Mail:
                <asp:Label ID="MailLabel" runat="server" Text='<%# Eval("Mail") %>' />
                <br />
                Telefono:
                <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                <br />
                foto:
                <asp:Label ID="fotoLabel" runat="server" Text='<%# Eval("foto") %>' />
                <br />
                <asp:CheckBox ID="ActivoCheckBox" runat="server" Checked='<%# Eval("Activo") %>' Enabled="false" Text="Activo" />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
                   

                  </div>
                   
                  <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab"> MODIFICAR</div>
               </div>
           </div>

           <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab"> Profesores </div>

           <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab"> 
               
               Clases 

               <div class="nuevaClase">
                   
                    <div class="portada">
                         <asp:ImageButton ID="imgPoratadaClase" runat="server" ImageUrl="~/img/clases/cross.jpg" />   
                        
                        <div class="archivos">
                          <asp:FileUpload class="form-control file" ID="filePortadaClase" runat="server"  />
                          <asp:Button ID="btnAgregarFoto" runat="server" Text="Cambiar Foto" OnClick="btnAgregarFoto_Click"  />
                        </div>
                    </div>

                        <div class="inputs-clase">

                            <div class="input">
                                <label>Nombre:</label>
                                <asp:TextBox ID="txtNombreClase" runat="server"></asp:TextBox>
                            </div>

                            <div class="input">
                                <label>Profesor:</label>
                                <asp:DropDownList ID="drpListProfesorClase" runat="server"></asp:DropDownList>
                            </div>

                            <div class="input">
                                <label>Precio:</label>
                                <asp:TextBox ID="txtPrecioClase" runat="server"></asp:TextBox>
                            </div>
                             <div class="input textarea">
                                <label>Descripcion:</label>
                                 <asp:TextBox ID="txtDescripcionClase" runat="server"></asp:TextBox>
                             </div>
                            <asp:Button ID="btnAgregarClaseNueva" runat="server" Text="Agregar Clase" OnClick="btnAgregarClaseNueva_Click" />
                        </div>

                 
                   

               </div>


           </div>

          <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab"> Perfil </div>
        </div>


       </div>

    </div>
         
     

      <!-- Modificar -->

        <div class="TablaParaModificar" id="TablaParaModificar" runat="server">
             
               <asp:ImageButton ID="imgModificarImagen" runat="server" />
              <asp:Label ID="lblModificarIdCliente" runat="server" Text="Label"></asp:Label>
             <div class="archivos">
                 <asp:FileUpload class="form-control file" ID="fileImgURL" runat="server"  />
                 <asp:Button ID="btnCambiarFoto" runat="server" Text="Cambiar Foto" OnClick="btnCambiarFoto_Click" />
             </div>
             
           
             <div class="campos">

             <div class="input-modificar">
                 <label>Nombre:</label>
                 <asp:TextBox ID="txtModificarNombre" runat="server"></asp:TextBox>
             </div>
         
            <div class="input-modificar">
                 <label>Apellido:</label>
                 <asp:TextBox ID="txtModificarApellido" runat="server"></asp:TextBox>
             </div>

            <div class="input-modificar">
                 <label>Mail:</label>
                 <asp:TextBox ID="txtModificarMail" runat="server"></asp:TextBox>
             </div>

             <div class="input-modificar">
                 <label>Telefono:</label>
                 <asp:TextBox ID="txtModificarTelefono" runat="server"></asp:TextBox>
             </div>

             </div>   

            <asp:Button ID="btnModificar" runat="server" Text="Aceptar" OnClick="btnModificar_Click" />
        </div>
        




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

     

     
       
        
        


 </form>
     

        

   

</body>
</html>
