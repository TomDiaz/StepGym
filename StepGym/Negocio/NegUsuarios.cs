using DAO;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class NegUsuarios
    {
        
        public List<Usuarios> getLista()
        {
            DaoUsuarios dao = new DaoUsuarios();
            return dao.getListaUsuarios();
            
            
        }


        public void FiltrarUsuario(int id)
        {
            /*
            DaoProfesor dao1 = new DaoProfesor();
            DaoClientes dao2 = new DaoClientes();

            List<Profesores> Lista1;
            List<Clientes> Lista2;

            Lista1 = dao1.getListaProfesores();
            Lista2 = dao2.getListaClientes();
             
            foreach(Profesores profesor in Lista1 ){

                if(id == profesor.getIdUsuario())
                {
                    return 1;
                }

            }

            foreach (Clientes cliente in Lista2)
            {

                if (id == cliente.getIdUsuario())
                {
                    return 2;
                }

            }


            return 0;

            */
        } 



    }
}
