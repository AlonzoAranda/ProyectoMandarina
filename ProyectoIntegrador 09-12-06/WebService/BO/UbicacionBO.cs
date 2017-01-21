using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebService.BO
{
    public class UbicacionBO
    {
        int idUbicacion;
        string direccion;
        string latitud;
        string longitud;
        int idSitio;

        public int IdUbicacion
        {
            get
            {
                return idUbicacion;
            }

            set
            {
                idUbicacion = value;
            }
        }

        public string Direccion
        {
            get
            {
                return direccion;
            }

            set
            {
                direccion = value;
            }
        }

        public string Latitud
        {
            get
            {
                return latitud;
            }

            set
            {
                latitud = value;
            }
        }

        public string Longitud
        {
            get
            {
                return longitud;
            }

            set
            {
                longitud = value;
            }
        }

        public int IdSitio
        {
            get
            {
                return idSitio;
            }

            set
            {
                idSitio = value;
            }
        }
    }
}