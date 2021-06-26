<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Presentacion.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Step Gym - Proyecto Web</title>

   <link rel="stylesheet" href="css/style.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Black+Ops+One&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Arvo:wght@700&display=swap" rel="stylesheet"> 
 
</head>


<body>

    <form id="form1" runat="server">

    <header>

        <div class="barra">

            <div class="contenido ">
                     
                 <ul>
                     <li><a class="btn-sesion" href="login.aspx">Iniciar sesion</a></li>
                 </ul>
            </div>

        </div>

         <div class="contenido contenido-navegacion">
            
             <nav class="navegacion">
                 <ul>
                     <li><a class="btn-nav">Inicio</a></li>
                     <li><a class="btn-nav">Clases</a></li>
                     <li><a class="btn-nav">Nuestro equipo</a></li>
                     <li><a><img style="width:200px" src="img/logo.png"></a></li>
                     <li><a class="btn-nav">Novedades</a></li>
                     <li><a class="btn-nav">Horarios</a></li>
                     <li><a class="btn-nav">Contacto</a></li>
                 </ul>
             </nav>

             <div class="titulo">
                 <h1>Alcanza tus metas superando tus <span>límites</span>  día a día</h1>
             </div>

         </div>

    </header>


       <section class="clases">

           <asp:Label ID="lblClase" runat="server"></asp:Label>

       </section>


      


      
    </form>


      
</body>
</html>
