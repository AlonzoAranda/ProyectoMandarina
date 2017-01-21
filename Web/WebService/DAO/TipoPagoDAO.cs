using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class TipoPagoDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar(object obj)
        {
            sql = "EXEC DevolverTablaTIPOPAGO";
            return BD.Tabla(sql);
        }
        public int AgregarTipoPago(object obj)
        {
            TipoPagoBO TipoPago = (TipoPagoBO)obj;
            sql = "EXEC AgregarTIPOPAGO '" + TipoPago.Nombre + "'";
            return BD.Ejecutar(sql);
        }
        public int EliminarTipoPago(object obj)
        {
            TipoPagoBO TipoPago = (TipoPagoBO)obj;
            sql = "EXEC EliminarTIPOPAGO " + TipoPago.IdTipoPago + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarTipoPago(object obj)
        {
            TipoPagoBO TipoPago = (TipoPagoBO)obj;
            sql = "EXEC ModifcarTIPOPAGO  " + TipoPago.IdTipoPago + " ,'" + TipoPago.Nombre + "'";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarTipoPago(object obj)
        {
            TipoPagoBO TipoPago = (TipoPagoBO)obj;
            sql = "EXEC FiltrarTIPOPAGO  " + TipoPago.IdTipoPago + " ,'" + TipoPago.Nombre + "'";
            return BD.Tabla(sql);
        }
    }
}