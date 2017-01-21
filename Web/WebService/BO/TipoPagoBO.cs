using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebService.BO
{
    public class TipoPagoBO
    {
        int idTipoPago;
        string nombre;

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
    }
}