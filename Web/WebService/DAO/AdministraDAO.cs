using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class AdministraDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar(object obj)
        {
            sql = "EXEC DevolverTablaADMINISTRA";
            return BD.Tabla(sql);
        }
        public int AgregarAdministra(object obj)
        {
            AdministraBO Administra = (AdministraBO)obj;
            sql = "EXEC AgregarADMINISTRA '" + Administra.IdUsuario + "'," + Administra.IdSitio + "";
            return BD.Ejecutar(sql);
        }
        public int EliminarAdministra(object obj)
        {
            AdministraBO Administra = (AdministraBO)obj;
            sql = "EXEC EliminarADMINISTRA " + Administra.IdAdministra + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarAdministra(object obj)
        {
            AdministraBO Administra = (AdministraBO)obj;
            sql = "EXEC ModifcarADMINISTRA  " + Administra.IdAdministra + " , '" + Administra.IdUsuario + "'," + Administra.IdSitio + "";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarAdministra(object obj)
        {
            AdministraBO Administra = (AdministraBO)obj;
            sql = "EXEC FiltrarADMINISTRA  " + Administra.IdAdministra + " , '" + Administra.IdUsuario + "'," + Administra.IdSitio + "";
            return BD.Tabla(sql);
        }
    }
}