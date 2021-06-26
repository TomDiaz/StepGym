using Negocio;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            MostrarClases();


           
        }


        public void MostrarClases()
        {
            NegClases neg = new NegClases();
            List<Clases> lista;
            lista = neg.getLista();

            string claseHTML;

            foreach (Clases clase in lista)
            {
                claseHTML = " <div class='clase'>";
                claseHTML += " <span class='precio'> $" + clase.getPrecio().ToString() + "</span>";
                claseHTML += " <img src = '"+ clase.getUrlFoto().TrimStart(new char[]{ '~', '/' }) + "' alt='foto'> ";
                claseHTML += "<div class='contenido'>";
                claseHTML += "<h2>" + clase.getNombre() + "</h2>";
                claseHTML += "<p>" + clase.getDescripcion() + "</p>";
                claseHTML += "</div>";
                claseHTML += "</div>";

                lblClase.Text += claseHTML;
            }
            
        }


      

    }
}