using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebService.BO
{
    public class VISTARECIBOBO
    {
        String membresia;
        int idmembresia;
        int duracion;
        decimal costo;
        int numsitios;
        string tipopago;
        int idUSuario;
        string fecha;
        string nombre;
        string apePat;
        string apeMat;
        int clave;


        public string Membresia
        {
            get
            {
                return membresia;
            }

            set
            {
                membresia = value;
            }
        }

        public int Idmembresia
        {
            get
            {
                return idmembresia;
            }

            set
            {
                idmembresia = value;
            }
        }

        public int Duracion
        {
            get
            {
                return duracion;
            }

            set
            {
                duracion = value;
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

        public int Numsitios
        {
            get
            {
                return numsitios;
            }

            set
            {
                numsitios = value;
            }
        }

        public string Tipopago
        {
            get
            {
                return tipopago;
            }

            set
            {
                tipopago = value;
            }
        }

        public int IdUSuario
        {
            get
            {
                return idUSuario;
            }

            set
            {
                idUSuario = value;
            }
        }

        public string Fecha1
        {
            get
            {
                return fecha;
            }

            set
            {
                fecha = value;
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

        public string ApePat
        {
            get
            {
                return apePat;
            }

            set
            {
                apePat = value;
            }
        }

        public string ApeMat
        {
            get
            {
                return apeMat;
            }

            set
            {
                apeMat = value;
            }
        }

        public int Clave
        {
            get
            {
                return clave;
            }

            set
            {
                clave = value;
            }
        }
    }
}