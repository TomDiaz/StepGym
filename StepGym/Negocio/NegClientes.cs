using DAO;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Negocio
{
    public class NegClientes
    {

        public DataTable getTablaActivos()
        {
            DaoClientes dao = new DaoClientes();
            return dao.getTablaClientesActivos();
        }

        public List<Clientes> getLista()
        {
            DaoClientes dao = new DaoClientes();
            return dao.getListaClientes();
        }
        public int AgregarCliente(Clientes cliente)
        {
            DaoClientes dao = new DaoClientes();
            return dao.addCLiente(cliente);
        }

        public int ModificarCliente(Clientes cliente)
        {
            DaoClientes dao = new DaoClientes();
            return dao.modificarCliente(cliente);
        }

        public int ElimnarCliente(int id)
        {
            DaoClientes dao = new DaoClientes();
            return dao.deleteCliente(id);
        }
       
     }
}
