using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Clases
    {
        private int IdClase;
        private int IdProfesor;
        private string Nombre;
        private string Descripcion;
        private float Precio;
        private string UrlFoto;


        public void setIdClase(int IdClase)
        {
            this.IdClase = IdClase;
        }

        public int getIdClase()
        {
            return this.IdClase;
        }
        public void setIdProfesor(int IdProfesor)
        {
            this.IdProfesor = IdProfesor;
        }

        public int getIdProfesor()
        {
            return this.IdProfesor;
        }

        public void setNombre(string Nombre)
        {
            this.Nombre = Nombre;
        }

        public string getNombre()
        {
            return this.Nombre;
        }

        public void setDescripcion(string Descripcion)
        {
            this.Descripcion = Descripcion;
        }

        public string getDescripcion()
        {
            return this.Descripcion;
        }

        public void setPrecio(float Precio)
        {
            this.Precio = Precio;
        }

        public float getPrecio()
        {
            return this.Precio;
        }


        public void setUrlFoto(string UrlFoto)
        {
            this.UrlFoto = UrlFoto;
        }

        public string getUrlFoto()
        {
            return this.UrlFoto;
        }
    }
}
