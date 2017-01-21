using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebService.BO
{
    public class MembresiaBO
    {
        int idMembresia;
        string nombre;
        int duracionMeses;
        int numSitios;
        Decimal costo;

        public int IdMembresia
        {
            get
            {
                return idMembresia;
            }

            set
            {
                idMembresia = value;
            }
        }

        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
            }
        }

        public int DuracionMeses
        {
            get
            {
                return duracionMeses;
            }

            set
            {
                duracionMeses = value;
            }
        }

        public int NumSitios
        {
            get
            {
                return numSitios;
            }

            set
            {
                numSitios = value;
            }
        }

        public decimal Costo
        {
            get
            {
                return costo;
            }

            set
            {
                costo = value;
            }
        }
    }
}