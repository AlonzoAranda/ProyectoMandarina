using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebService.BO
{
    public class UsuarioBO
    {
        int idUsuario;
        string nombre;
        string apPat;
        string apMat;
        string usuario;
        string contrasena;
        string fotoUS;
        int idMembresia;
        int idTipoPago;
        int tipoUS;
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

        public string ApPat
        {
            get
            {
                return apPat;
            }

            set
            {
                apPat = value;
            }
        }

        public string ApMat
        {
            get
            {
                return apMat;
            }

            set
            {
                apMat = value;
            }
        }

        public string Usuario
        {
            get
            {
                return usuario;
            }

            set
            {
                usuario = value;
            }
        }

        public string Contrasena
        {
            get
            {
                return contrasena;
            }

            set
            {
                contrasena = value;
            }
        }

        public string FotoUS
        {
            get
            {
                return fotoUS;
            }

            set
            {
                fotoUS = value;
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

        public int TipoUS
        {
            get
            {
                return tipoUS;
            }

            set
            {
                tipoUS = value;
            }
        }
    }
}