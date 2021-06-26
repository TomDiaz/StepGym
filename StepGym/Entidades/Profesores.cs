using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Profesores
    {
        private int IdProfesor;
        private int IdUsuario;
        private string Nombre;
        private string Apellido;
        private string Mail;
        private int Telefono;
        private string FotoPerfil;

        public void setIdProfesor(int IdProfesor)
        {
            this.IdProfesor = IdProfesor;
        }

        public int getIdProfesor()
        {
            return this.IdProfesor;
        }

        public void setIdUsuario(int IdUsuario)
        {
            this.IdUsuario = IdUsuario;
        }

        public int getIdUsuario()
        {
            return this.IdUsuario;
        }

        public void setNombre(string Nombre)
        {
            this.Nombre = Nombre;
        }

        public string getNombre()
        {
            return this.Nombre;
        }

        public void setApellido(string Apellido)
        {
            this.Apellido = Apellido;
        }

        public string getApellido()
        {
            return this.Apellido;
        }

        public void setMail(string Mail)
        {
            this.Mail = Mail;
        }

        public string getMail()
        {
            return this.Mail;
        }


        public void setTelefono(int Telefono)
        {
            this.Telefono = Telefono;
        }

        public int getTelefono()
        {
            return this.Telefono;
        }


        public void setFotoPerfil(string FotoPerfil)
        {
            this.FotoPerfil = FotoPerfil;
        }

        public string getFotoPerfil()
        {
            return this.FotoPerfil;
        }


    }
}
