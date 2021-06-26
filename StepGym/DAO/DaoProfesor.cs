using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class DaoProfesor
    {

        AccesoDatos ds = new AccesoDatos();


        public List<Profesores> getListaProfesores()
        {
            List<Profesores> lista = new List<Profesores>();

            DataTable tabla = ds.ObtenerTabla("Profesores", "Select * from Profesores");

            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                Profesores profesor = new Profesores();


                profesor.setIdProfesor(Convert.ToInt32(tabla.Rows[i][0].ToString()));
                profesor.setIdUsuario(Convert.ToInt32(tabla.Rows[i][1].ToString()));
                profesor.setNombre(tabla.Rows[i][2].ToString());
                profesor.setApellido(tabla.Rows[i][3].ToString());
                profesor.setMail(tabla.Rows[i][4].ToString());
                profesor.setTelefono(Convert.ToInt32(tabla.Rows[i][5].ToString()));
                profesor.setFotoPerfil(tabla.Rows[i][6].ToString());

                lista.Add(profesor);
            }

            return lista;
        }

        

    }
}
