using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.IO;
namespace WebService.BO
{
    public class FotoBO
    {
        int idFoto;
        string foto;
        int idSitio;
        public int IdFoto
        {
            get
            {
                return idFoto;
            }

            set
            {
                idFoto = value;
            }
        }

        public string Foto
        {
            get
            {
                return foto;
            }

            set
            {
                foto = value;
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