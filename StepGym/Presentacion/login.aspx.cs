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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (EntrarAlPanel())
            {

                

            }
           
        }


        public void FiltrarUsuario(int id)
        {
            /*
            NegUsuarios neg = new NegUsuarios();
            switch (neg.FiltrarUsuario(id))
            {
                case 0:
                    Server.Transfer("panel-admin.aspx");
                break;

                case 1:
                    Server.Transfer("panel-profesor.aspx");
                break;

                case 2:
                    Server.Transfer("panel-cliente.aspx");
                break;

            }
            */
        }


        public bool EntrarAlPanel()
        {
            NegUsuarios neg = new NegUsuarios();
            List<Usuarios> lista;
            lista = neg.getLista();

            foreach (Usuarios usuario in lista)
            {
               if(txtUsuario.Text == usuario.getNombreUsuario() && txtContrasena.Text == usuario.getContrasena())
                {
                    FiltrarUsuario(usuario.getIdUsuario());
                    return true;
                }
            }

            return false;

        }

    }
}