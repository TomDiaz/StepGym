using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuarios
    {
        private int IdUsuario;
        private string NombreUsuario;
        private string Contrasena;

        public Usuarios() { }


        public int getIdUsuario()
        {
            return this.IdUsuario;
        }

        public void setIdUsuario(int IdUsuario)
        {
            this.IdUsuario = IdUsuario;
        }

        public string getNombreUsuario()
        {
            return this.NombreUsuario;
        }

        public void setNombreUsuario(string NombreUsuario)
        {
            this.NombreUsuario = NombreUsuario;
        }

        public string getContrasena()
        {
            return this.Contrasena;
        }

        public void setContrasena(string Contrasena)
        {
            this.Contrasena = Contrasena;
        }
    }
}
