using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class TipoEstablecimientoDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar(object obj)
        {
            sql = "EXEC DevolverTablaTipoEstablecimiento";
            return BD.Tabla(sql);
        }
        public int AgregarTipoEstablecimiento(object obj)
        {
            TipoEstablecimientoBO TipoEstablecimiento = (TipoEstablecimientoBO)obj;
            sql = "EXEC AgregarTipoEstablecimiento '" + TipoEstablecimiento.Nombre + "'";
            return BD.Ejecutar(sql);
        }
        public int EliminarTipoEstablecimiento(object obj)
        {
            TipoEstablecimientoBO TipoEstablecimiento = (TipoEstablecimientoBO)obj;
            sql = "EXEC EliminarTipoEstablecimiento " + TipoEstablecimiento.IdTipoEstablecimiento + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarTipoEstablecimiento(object obj)
        {
            TipoEstablecimientoBO TipoEstablecimiento = (TipoEstablecimientoBO)obj;
            sql = "EXEC ModifcarTipoEstablecimiento  " + TipoEstablecimiento.IdTipoEstablecimiento + " ,'" + TipoEstablecimiento.Nombre + "'";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarTipoEstablecimiento(object obj)
        {
            TipoEstablecimientoBO TipoEstablecimiento = (TipoEstablecimientoBO)obj;
            sql = "EXEC FiltrarTipoEstablecimiento  " + TipoEstablecimiento.IdTipoEstablecimiento + " ,'" + TipoEstablecimiento.Nombre + "'";
            return BD.Tabla(sql);
        }
    }
}