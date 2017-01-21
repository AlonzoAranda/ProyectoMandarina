using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebService.BO
{
    public class EstablecimientoBO
    {
        int idEstablecimiento;
        string nombre;
        int idTipoEstablecimiento;

        public int IdEstablecimiento
        {
            get
            {
                return idEstablecimiento;
            }

            set
            {
                idEstablecimiento = value;
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
    }
}