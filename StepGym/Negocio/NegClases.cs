using DAO;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegClases
    {

        public List<Clases> getLista()
        {
            DaoClases dao = new DaoClases();
            return dao.getListaClases();

        }

        public int AgregarClase(Clases clase)
        {
            DaoClases dao = new DaoClases();
            return dao.addClase(clase);
        }

        public int AgregarClienteClase(int IdCliente, int IdClase)
        {
            DaoClases dao = new DaoClases();
            return dao.addClienteClase(IdCliente, IdClase);
        }
    }
}
