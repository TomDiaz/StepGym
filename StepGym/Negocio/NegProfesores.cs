using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using DAO;

namespace Negocio
{
    public class NegProfesores
    {
        public List<Profesores> getLista()
        {
            DaoProfesor dao = new DaoProfesor();
            return dao.getListaProfesores();
        }
    }
}
