using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebService.BO
{
    public class TipoEstablecimientoBO
    {
        int idTipoEstablecimiento;
        string nombre;

        public int IdTipoEstablecimiento
        {
            get
            {
                return idTipoEstablecimiento;
            }

            set
            {
                idTipoEstablecimiento = value;
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