using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoIntegrador
{
    public class ObjUsuario
    {

        string _nombre;
        string _apellidos;
        string _fecha;
        string _Membresia;
        string _Clave;
        string _Duracion;
        string _Costo;
        string _TipoPago;







        public string Nombre
        {
            get
            {
                return _nombre;
            }

            set
            {
                _nombre = value;
            }
        }

        public string Apellidos
        {
            get
            {
                return _apellidos;
            }

            set
            {
                _apellidos = value;
            }
        }

        public string Fecha
        {
            get
            {
                return _fecha;
            }

            set
            {
                _fecha = value;
            }
        }

        public string Membresia
        {
            get
            {
                return _Membresia;
            }

            set
            {
                _Membresia = value;
            }
        }

        public string Clave
        {
            get
            {
                return _Clave;
            }

            set
            {
                _Clave = value;
            }
        }

        public string Duracion
        {
            get
            {
                return _Duracion;
            }

            set
            {
                _Duracion = value;
            }
        }

        public string Costo
        {
            get
            {
                return _Costo;
            }

            set
            {
                _Costo = value;
            }
        }

        public string TipoPago
        {
            get
            {
                return _TipoPago;
            }

            set
            {
                _TipoPago = value;
            }
        }
    }
}