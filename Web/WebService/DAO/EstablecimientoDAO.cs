using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class EstablecimientoDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar(object obj)
        {
            sql = "EXEC DevolverTablaESTABLECIMIENTOS";
            return BD.Tabla(sql);
        }
        public int AgregarEstablecimiento(object obj)
        {
            EstablecimientoBO Establecimiento = (EstablecimientoBO)obj;
            sql = "EXEC AgregarESTABLECIMIENTOS '" + Establecimiento.Nombre + "'," + Establecimiento.IdTipoEstablecimiento + "";
            return BD.Ejecutar(sql);
        }
        public int EliminarEstablecimiento(object obj)
        {
            EstablecimientoBO Establecimiento = (EstablecimientoBO)obj;
            sql = "EXEC EliminarESTABLECIMIENTOS " + Establecimiento.IdEstablecimiento + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarEstablecimiento(object obj)
        {
            EstablecimientoBO Establecimiento = (EstablecimientoBO)obj;
            sql = "EXEC ModifcarESTABLECIMIENTOS  " + Establecimiento.IdEstablecimiento + " ,'" + Establecimiento.Nombre + "'," + Establecimiento.IdTipoEstablecimiento + "";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarEstablecimiento(object obj)
        {
            EstablecimientoBO Establecimiento = (EstablecimientoBO)obj;
            sql = "EXEC FiltrarESTABLECIMIENTOS  " + Establecimiento.IdEstablecimiento + " ,'" + Establecimiento.Nombre + "'," + Establecimiento.IdTipoEstablecimiento + "";
            return BD.Tabla(sql);
        }
    }
}