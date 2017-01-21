using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebService.BO
{
    public class TarjetaCreditoBO
    {
        int idTarjeta;
        string numTarjeta;
        string cvv;
        string mes;
        string anio;
        int idUsuario;

        public int IdTarjeta
        {
            get
            {
                return idTarjeta;
            }

            set
            {
                idTarjeta = value;
            }
        }

        public string NumTarjeta
        {
            get
            {
                return numTarjeta;
            }

            set
            {
                numTarjeta = value;
            }
        }

        public string Cvv
        {
            get
            {
                return cvv;
            }

            set
            {
                cvv = value;
            }
        }

        public string Mes
        {
            get
            {
                return mes;
            }

            set
            {
                mes = value;
            }
        }

        public string Anio
        {
            get
            {
                return anio;
            }

            set
            {
                anio = value;
            }
        }

        public int IdUsuario
        {
            get
            {
                return idUsuario;
            }

            set
            {
                idUsuario = value;
            }
        }
    }
}