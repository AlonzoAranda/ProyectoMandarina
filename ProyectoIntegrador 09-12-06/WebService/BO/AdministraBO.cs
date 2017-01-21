using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebService.BO
{
    public class AdministraBO
    {
        int idAdministra;
        int idUsuario;
        int idSitio;

        public int IdAdministra
        {
            get
            {
                return idAdministra;
            }

            set
            {
                idAdministra = value;
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