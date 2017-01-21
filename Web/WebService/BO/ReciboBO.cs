using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebService.BO
{
    public class ReciboBO
    {
        int idRecibo;
        string fecha;
        int idUsuario;
        int idMembresia;
        int idTipoPago;

        public int IdRecibo
        {
            get
            {
                return idRecibo;
            }

            set
            {
                idRecibo = value;
            }
        }

        public string Fecha
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

        public int IdTipoPago
        {
            get
            {
                return idTipoPago;
            }

            set
            {
                idTipoPago = value;
            }
        }
    }
}