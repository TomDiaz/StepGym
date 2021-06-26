using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace Presentacion
{
    public partial class panel_admin : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

       

            if (!Page.IsPostBack)
            {
                LlenarListaClases();
                LlenarListaClientes();
                LlenarListaProfesores();
                MostrarUltimosMiembros();
            }


          
        }


        public void LlenarListaClases()
        {

            NegClases negClase = new NegClases();
            List<Clases> listClase = negClase.getLista();

            foreach (Clases clase in listClase)
            {

                lstClases.Items.Add(clase.getNombre());
            }
        }

        public void LlenarListaProfesores()
        {
            NegProfesores negProfe = new NegProfesores();
            List<Profesores> lista = negProfe.getLista();

            foreach(Profesores profesor in lista)
            {
                drpListProfesorClase.Items.Add(profesor.getNombre());
            }
            
        }


        protected void btnClienteAddClase_Click(object sender, EventArgs e)
        {

            List<string> clasesTag = new List<string>();

            clasesTag.Add(lstClases.SelectedValue.ToString());
            foreach (string clase in clasesTag)
            {
                lstClasesTag.Items.Add(clase);
            }

         
                btnClienteRemoveClase.Style.Add("background", "#e74c3c");
                btnClienteRemoveClase.Style.Add("color", "#fff");
                btnClienteRemoveClase.Style.Add("cursor", "pointer");



        }

        protected void btnClienteRemoveClase_Click(object sender, EventArgs e)
        {
            List<ListItem> itemsToRemove = new List<ListItem>();


            foreach (ListItem item in lstClasesTag.Items)
            {
                if (item.Selected)
                {
                    itemsToRemove.Add(item);
                }
            }

            foreach (ListItem listItem in itemsToRemove)
            {
                lstClasesTag.Items.Remove(listItem);
            }

            if(lstClasesTag.Items.Count == 0)
            {
                btnClienteRemoveClase.Style.Add("background", "#040404");
                btnClienteRemoveClase.Style.Add("color", "#090909");
                btnClienteRemoveClase.Style.Add("cursor", "auto");
            }

        }

        protected void btnAgregarCliente_Click(object sender, EventArgs e)
        {

            AgregarCliente();
            System.Threading.Thread.Sleep(5000);
            MostrarUltimosMiembros();
            
        

        }


        private void AgregarCliente()
        {
            NegClientes neg = new NegClientes();
            Clientes cliente = new Clientes();

            List<Clientes> Lista = neg.getLista();

            if (ValidacionCLientes())
            {
                cliente.setNombre(txtClienteNombre.Text);
                cliente.setApellido(txtClienteApellido.Text);
                cliente.setMail(txtClienteMail.Text);
                cliente.setTelefono(Convert.ToInt32(txtClienteTelefono.Text));
                cliente.setFotoPerfil("~/img/clientes/sin-foto.jpg");

                Messagebox(neg.AgregarCliente(cliente).ToString() + " Nuevo resgistro agregado ",1);
                AgregarClienteCLase(Lista[Lista.Count - 1].getIdCliente() + 1);

                txtClienteNombre.Text = "";
                txtClienteApellido.Text = "";
                txtClienteTelefono.Text = "";
                txtClienteMail.Text = "";
                lstClasesTag.Items.Clear();
                btnClienteRemoveClase.Style.Add("background", "#040404");
                btnClienteRemoveClase.Style.Add("color", "#090909");
                btnClienteRemoveClase.Style.Add("cursor", "auto");
                LlenarListaClientes();
            }

            else
            {
                Messagebox("Completar los campos", 2);
            }
        }


     

        private void AgregarClienteCLase(int IdCliente)
        {
            NegClases neg = new NegClases();
            List<Clases> Lista = neg.getLista();

            foreach(ListItem tag in lstClasesTag.Items)
            {
                foreach(Clases clase in Lista)
                {
                    if(tag.Value == clase.getNombre())
                    {
                        neg.AgregarClienteClase(IdCliente, clase.getIdClase());
                    }
                }
            }

        }



        private bool ValidacionCLientes()
        {
            if (txtClienteNombre.Text != "" && txtClienteApellido.Text != "" && txtClienteMail.Text != "" && txtClienteTelefono.Text != "" && lstClasesTag.Items.Count > 0)
            {
                if (ValidarEmail(txtClienteMail.Text))
                {
                  

                    return true;
                }

                else
                {
                    Messagebox("Campo de Correo electrónico invalido ", 2);
                }
            }

            return false;
        }


        private bool ValidarEmail(string email)
        {
            string expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, string.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }


        public void MostrarUltimosMiembros()
        {
            NegClientes neg = new NegClientes();
            List<Clientes> lista;
            lista = neg.getLista();

            string ultimoMiembroHTML;
            lblUltimosMiembros.Text = "";

            for (int i= lista.Count - 3; i < lista.Count; i++)
            {


                ultimoMiembroHTML = "<div class='carousel-item'>";
                ultimoMiembroHTML += " <div class='container-fluid contenido'>";
                ultimoMiembroHTML += "<div class='img'>";
                ultimoMiembroHTML += "<img class='d-block w-100' alt='perfil' src='" + lista[i].getFotoPerfil().TrimStart(new char[] { '~', '/' }) + "'>";
                ultimoMiembroHTML += " <h4>" + lista[i].getNombre() + "</h4>";
                ultimoMiembroHTML += "</div> ";
                ultimoMiembroHTML += " <h5>Informacion personal</h5>";
                ultimoMiembroHTML += " <ul class='info'>";
                ultimoMiembroHTML += "<li><i class='fas fa-envelope'></i> " + lista[i].getMail() + "</li>";
                ultimoMiembroHTML += "<li><i class='fas fa-phone - alt'></i> " + lista[i].getTelefono().ToString() + "</li>";
                ultimoMiembroHTML += " </ul>";
                ultimoMiembroHTML += "<h5>Clases que realiza</h5>";
                ultimoMiembroHTML += " <ul class='info'>";
                ultimoMiembroHTML += "<li><i class='fas fa-check'></i> Crossfit - 13:30 a 15:30</li>";
                ultimoMiembroHTML += " <li><i class='fas fa-check'></i> Crossfit - 13:30 a 15:30</li>";
                ultimoMiembroHTML += " </ul>";
                ultimoMiembroHTML += " </div>";
                ultimoMiembroHTML += " </div>";

                lblUltimosMiembros.Text += ultimoMiembroHTML;
            }

       
    



        }


        public void Messagebox(string xMessage, int tipo)
        {
            switch (tipo)
            {
                case 1:
                    Response.Write("<div class='alerta '><img class='verificado' src='img/verificado.png' alt='img'> <span>" + xMessage + "</span>  </div> ");
                    break;
              case 2:
                    Response.Write("<div class='alerta '><img class='error' src='img/error.png' alt='img'> <span>" + xMessage + "</span>  </div> ");
                    break;
            }
        }

        protected void btnVerListaCLientes_Click(object sender, EventArgs e)
        {
            home.Attributes["class"] = "tab-pane fade ";
            listaClientes.Attributes["class"] = "tab-pane fade show active";
            btnVerListaCLientes.Attributes["Class"] = "nav-item active";
            btnVerAgregarCliente.Attributes["class"] = "nav-item";
        }

        protected void btnVerAgregarCliente_Click(object sender, EventArgs e)
        {
            listaClientes.Attributes["class"] = "tab-pane fade";
            home.Attributes["class"] = "tab-pane fade show active";
            btnVerAgregarCliente.Attributes["class"] = "nav-item active";
            btnVerListaCLientes.Attributes["Class"] = "nav-item";
        }

      

        protected void btnModificarCliente_Command1(object sender, CommandEventArgs e)
        {
            NegClientes neg = new NegClientes();
            List<Clientes> lista = neg.getLista();

            if (e.CommandName == "eventoModificar")
            {
                TablaParaModificar.Style.Add("left", "20px");

                foreach (Clientes cliente in lista)
                {
                    if(Convert.ToInt32(e.CommandArgument.ToString()) == cliente.getIdCliente())
                    {
                        lblModificarIdCliente.Text = cliente.getIdCliente().ToString();
                        imgModificarImagen.ImageUrl = cliente.getFotoPerfil();
                        txtModificarNombre.Text = cliente.getNombre();
                        txtModificarApellido.Text = cliente.getApellido();
                        txtModificarMail.Text = cliente.getMail();
                        txtModificarTelefono.Text = cliente.getTelefono().ToString();

                    }
                }
            }

        }


        public void LlenarListaClientes()
        {
            NegClientes neg = new NegClientes();
            lbClientes.DataSource = neg.getTablaActivos();
            lbClientes.DataBind();
        }


        protected void btnEliminarCLiente_Command(object sender, CommandEventArgs e)
        {
            NegClientes neg = new NegClientes();
            int fila;

            if(e.CommandName == "eventoEliminar")
            {
               fila = neg.ElimnarCliente(Convert.ToInt32(e.CommandArgument.ToString()));

                LlenarListaClientes();
                Messagebox(fila + " Registro eliminado ", 1);
   
            }

        }

        

        protected void btnCambiarFoto_Click(object sender, EventArgs e)
        {
            if (fileImgURL.HasFile)
            {
                //si hay archivo
                string nombreArchivo = fileImgURL.FileName;
                string ruta = "~/img/clientes/" + nombreArchivo;
                fileImgURL.SaveAs(Server.MapPath(ruta));

                imgModificarImagen.ImageUrl = ruta;
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            NegClientes neg = new NegClientes();
            Clientes cliente = new Clientes();

            if(txtModificarNombre.Text != "" && txtModificarApellido.Text != "" && txtModificarMail.Text != "" && txtModificarTelefono.Text != "" && ValidarEmail(txtModificarMail.Text))
            {
                cliente.setIdCliente(Convert.ToInt32(lblModificarIdCliente.Text));
                cliente.setNombre(txtModificarNombre.Text);
                cliente.setApellido(txtModificarApellido.Text);
                cliente.setMail(txtModificarMail.Text);
                cliente.setTelefono(Convert.ToInt32(txtModificarTelefono.Text));
                cliente.setFotoPerfil(imgModificarImagen.ImageUrl);
             

                int fila =  neg.ModificarCliente(cliente);
                Messagebox( fila + " archivo modificado", 1);
                LlenarListaClientes();
                TablaParaModificar.Style.Add("left", "-1000px");
            }

            else
            {
                Messagebox("Revisar campos", 2);
            }

        }



        public string recuperarFotoCliente(int id) {

            NegClientes neg = new NegClientes();
            List<Clientes> lista = neg.getLista();
            string foto = "~/img/clientes/sin-foto.jpg";

            foreach(Clientes cliente in lista)
            {
                if(id == cliente.getIdCliente())
                {
                    foto = cliente.getFotoPerfil();
                }
            }

            return foto;

        }

        protected void btnAgregarFoto_Click(object sender, EventArgs e)
        {

            if (filePortadaClase.HasFile)
            {
                //si hay archivo
                string nombreArchivo = filePortadaClase.FileName;
                string ruta = "~/img/clases/" + nombreArchivo;
                filePortadaClase.SaveAs(Server.MapPath(ruta));

                imgPoratadaClase.ImageUrl = ruta;
            }

        }

        protected void btnAgregarClaseNueva_Click(object sender, EventArgs e)
        {
            NegClases neg = new NegClases();
            NegProfesores negProfe = new NegProfesores();
            Clases clase = new Clases();

            List<Profesores> lista= negProfe.getLista();

            if(txtNombreClase.Text != "" && txtPrecioClase.Text != "")
            {
                clase.setNombre(txtNombreClase.Text);
                clase.setPrecio(float.Parse(txtPrecioClase.Text));
                clase.setDescripcion(txtDescripcionClase.Text);
                clase.setUrlFoto(imgPoratadaClase.ImageUrl);
                
                foreach(Profesores profesor in lista)
                {
                    if(drpListProfesorClase.Text == profesor.getNombre())
                    {
                        clase.setIdProfesor(profesor.getIdProfesor());
                    }
                }

                int fila = neg.AgregarClase(clase);
                Messagebox(fila + " Clase Agregada ", 1);

            }


            else
            {
                Messagebox(" Revisar Campos", 2);
            }

        }


    }
}