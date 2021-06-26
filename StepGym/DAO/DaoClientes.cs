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
    public class DaoClientes
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable getTablaClientesActivos()
        {

            DataTable tabla = ds.ObtenerTabla("Clientes", "SELECT [IdCliente], [Nombre], [Apellido], [Mail], [Telefono], [foto], [Activo] FROM [Clientes] where [Activo] = 1");

            return tabla;
        }


        public List<Clientes> getListaClientes()
        {
            List<Clientes> lista = new List<Clientes>();

            DataTable tabla = ds.ObtenerTabla("Clientes", "Select * from Clientes ");

            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                Clientes Cliente = new Clientes();

                Cliente.setIdCliente(Convert.ToInt32(tabla.Rows[i][0].ToString()));
                Cliente.setNombre(tabla.Rows[i][1].ToString());
                Cliente.setApellido(tabla.Rows[i][2].ToString());
                Cliente.setMail(tabla.Rows[i][3].ToString());
                Cliente.setTelefono(Convert.ToInt32(tabla.Rows[i][4].ToString()));
                Cliente.setFotoPerfil(tabla.Rows[i][5].ToString());
                Cliente.setActivo(1);
           

                lista.Add(Cliente);
            }

            return lista;
        }

        public int addCLiente(Clientes cliente)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroAddCliente(ref comando, cliente);
            return ds.EjecutarProcedimientoAlmacenado(comando, "addCliente");

        }

        
        public int deleteCliente(int id)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroDeleteCLiente(ref comando, id);
            return ds.EjecutarProcedimientoAlmacenado(comando, "eliminarClienteActivo");

        }

        public int modificarCliente(Clientes cliente)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroModificarCliente(ref comando, cliente);
            return ds.EjecutarProcedimientoAlmacenado(comando, "modificarCliente");
        }
         
      
        public void ArmarParametroDeleteCLiente(ref SqlCommand Comando , int id)
        {
            SqlParameter SqlParametro = new SqlParameter();
            SqlParametro = Comando.Parameters.Add("@IdCliente", SqlDbType.VarChar);
            SqlParametro.Value = id;
        }


        private void ArmarParametroAddCliente(ref SqlCommand Comando, Clientes Cliente)
        {
            SqlParameter SqlParametro = new SqlParameter();
            SqlParametro = Comando.Parameters.Add("@Nombre", SqlDbType.VarChar);
            SqlParametro.Value = Cliente.getNombre();

            SqlParametro = Comando.Parameters.Add("@Apellido", SqlDbType.VarChar);
            SqlParametro.Value = Cliente.getApellido();

            SqlParametro = Comando.Parameters.Add("@Mail", SqlDbType.VarChar);
            SqlParametro.Value = Cliente.getMail();

            SqlParametro = Comando.Parameters.Add("@Telefono", SqlDbType.Int);
            SqlParametro.Value = Cliente.getTelefono();

            SqlParametro = Comando.Parameters.Add("@Foto", SqlDbType.VarChar);
            SqlParametro.Value = Cliente.getFotoPerfil();
        }

        private void ArmarParametroModificarCliente(ref SqlCommand Comando, Clientes Cliente)
        {
            SqlParameter SqlParametro = new SqlParameter();
            SqlParametro = Comando.Parameters.Add("@IdCliente", SqlDbType.Int);
            SqlParametro.Value = Cliente.getIdCliente();

            SqlParametro = Comando.Parameters.Add("@Nombre", SqlDbType.VarChar);
            SqlParametro.Value = Cliente.getNombre();

            SqlParametro = Comando.Parameters.Add("@Apellido", SqlDbType.VarChar);
            SqlParametro.Value = Cliente.getApellido();

            SqlParametro = Comando.Parameters.Add("@Mail", SqlDbType.VarChar);
            SqlParametro.Value = Cliente.getMail();

            SqlParametro = Comando.Parameters.Add("@Telefono", SqlDbType.Int);
            SqlParametro.Value = Cliente.getTelefono();

            SqlParametro = Comando.Parameters.Add("@Foto", SqlDbType.VarChar);
            SqlParametro.Value = Cliente.getFotoPerfil();
        }




    }
}
