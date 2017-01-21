using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class TarjetaCreditoDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar(object obj)
        {
            sql = "EXEC DevolverTablaTARJETACREDITO";
            return BD.Tabla(sql);
        }
        public int AgregarTarjetaCredito(object obj)
        {
            TarjetaCreditoBO TarjetaCredito = (TarjetaCreditoBO)obj;
            sql = "EXEC AgregarTARJETACREDITO '" + TarjetaCredito.NumTarjeta + "','" + TarjetaCredito.Cvv + "','" + TarjetaCredito.Mes + "','" + TarjetaCredito.Anio + "'," + TarjetaCredito.IdUsuario + "";
            return BD.Ejecutar(sql);
        }
        public int EliminarTarjetaCredito(object obj)
        {
            TarjetaCreditoBO TarjetaCredito = (TarjetaCreditoBO)obj;
            sql = "EXEC EliminarTARJETACREDITO " + TarjetaCredito.IdTarjeta + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarTarjetaCredito(object obj)
        {
            TarjetaCreditoBO TarjetaCredito = (TarjetaCreditoBO)obj;
            sql = "EXEC ModifcarTARJETACREDITO  " + TarjetaCredito.IdTarjeta + " ,'" + TarjetaCredito.NumTarjeta + "','" + TarjetaCredito.Cvv + "','" + TarjetaCredito.Mes + "','" + TarjetaCredito.Anio + "'," + TarjetaCredito.IdUsuario + "";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarTarjetaCredito(object obj)
        {
            TarjetaCreditoBO TarjetaCredito = (TarjetaCreditoBO)obj;
            sql = "EXEC FiltrarTARJETACREDITO  " + TarjetaCredito.IdTarjeta + " '" + TarjetaCredito.NumTarjeta + "','" + TarjetaCredito.Cvv + "','" + TarjetaCredito.Mes + "','" + TarjetaCredito.Anio + "'," + TarjetaCredito.IdUsuario + "";
            return BD.Tabla(sql);
        }
    }
}