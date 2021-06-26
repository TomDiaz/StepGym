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
    public class DaoClases
    {
        AccesoDatos ds = new AccesoDatos();

        public List<Clases> getListaClases()
        {
            List<Clases> lista = new List<Clases>();
          
            DataTable tabla = ds.ObtenerTabla("Clases", "Select * from Clases");

            for(int i=0; i < tabla.Rows.Count; i++)
            {
                Clases ent = new Clases();
                ent.setIdClase(Convert.ToInt32(tabla.Rows[i][0].ToString()));
                ent.setIdProfesor(Convert.ToInt32(tabla.Rows[i][1].ToString()));
                ent.setNombre(tabla.Rows[i][2].ToString());
                ent.setDescripcion(tabla.Rows[i][3].ToString());
                ent.setPrecio(Convert.ToInt32(tabla.Rows[i][4].ToString()));
                ent.setUrlFoto(tabla.Rows[i][5].ToString());

                lista.Add(ent);
            }

             return lista;
        }


        public int addClase(Clases clase)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroAddClase(ref comando, clase);
            return ds.EjecutarProcedimientoAlmacenado(comando, "addClase");
        }

        public int addClienteClase(int IdCliente, int IdClase)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroAddClienteClase(ref comando, IdCliente, IdClase);
            return ds.EjecutarProcedimientoAlmacenado(comando, "addCliente_x_Clase");
        }


        private void ArmarParametroAddClase(ref SqlCommand Comando, Clases clase)
        {
            SqlParameter SqlParametro = new SqlParameter();
            SqlParametro = Comando.Parameters.Add("@IdProfesor", SqlDbType.Int);
            SqlParametro.Value = clase.getIdProfesor();

            SqlParametro = Comando.Parameters.Add("@Nombre", SqlDbType.VarChar);
            SqlParametro.Value = clase.getNombre();

            SqlParametro = Comando.Parameters.Add("@Descripcion", SqlDbType.VarChar);
            SqlParametro.Value = clase.getDescripcion();

            SqlParametro = Comando.Parameters.Add("@Precio", SqlDbType.Float);
            SqlParametro.Value = clase.getPrecio();

            SqlParametro = Comando.Parameters.Add("@FotoBanner", SqlDbType.VarChar);
            SqlParametro.Value = clase.getUrlFoto();
        }

        private void ArmarParametroAddClienteClase(ref SqlCommand Comando, int IdCliente, int IdClase)
        {
            SqlParameter SqlParametro = new SqlParameter();
            SqlParametro = Comando.Parameters.Add("@IdCliente", SqlDbType.VarChar);
            SqlParametro.Value = IdCliente;

            SqlParametro = Comando.Parameters.Add("@IdClase", SqlDbType.VarChar);
            SqlParametro.Value = IdClase;

           
        }


    }
}
