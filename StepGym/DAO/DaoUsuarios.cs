using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class DaoUsuarios
    {
        AccesoDatos ds = new AccesoDatos();

        public List<Usuarios> getListaUsuarios()
        {
            List<Usuarios> lista = new List<Usuarios>();

            DataTable tabla = ds.ObtenerTabla("Usuarios", "Select * from Usuarios");

            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                Usuarios ent = new Usuarios();

                ent.setIdUsuario(Convert.ToInt32(tabla.Rows[i][0].ToString()));
                ent.setNombreUsuario(tabla.Rows[i][1].ToString());
                ent.setContrasena(tabla.Rows[i][2].ToString());

                lista.Add(ent);
            }

            return lista;
        }


      


    }
}
