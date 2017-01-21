using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;

using System.Data;

namespace WebService.DAO
{
    public class SitioDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar(object obj)
        {
            sql = "EXEC DevolverTablaSITIOS";
            return BD.Tabla(sql);
        }
        public int AgregarSitio(object obj)
        {
            SitioBO Sitio = (SitioBO)obj;
            sql = "EXEC AgregarSITIOS   '" + Sitio.Descripcion + "','" + Sitio.Nombre + "' ," + Sitio.IdEstablecimiento + ", '"+ Sitio.Estatus + "'";
            return BD.Ejecutar(sql);
        }
        public int EliminarSitio(object obj)
        {
            SitioBO Sitio = (SitioBO)obj;
            sql = "EXEC EliminarSITIOS " + Sitio.IdSitio + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarSitio(object obj)
        {
            SitioBO Sitio = (SitioBO)obj;
            sql = "EXEC ModifcarSITIOS  " + Sitio.IdSitio + " ,'" + Sitio.Descripcion + "','" + Sitio.Nombre + "' ," + Sitio.IdEstablecimiento + ", '" + Sitio.Estatus + "'";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarSitio(object obj)
        {
            SitioBO Sitio = (SitioBO)obj;
            sql = "EXEC FiltrarSITIOS  " + Sitio.IdSitio + " ,'" + Sitio.Descripcion + "','" + Sitio.Nombre + "' ," + Sitio.IdEstablecimiento + ", '" + Sitio.Estatus + "'";
            return BD.Tabla(sql);
        }
    }
}