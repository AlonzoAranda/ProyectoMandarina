using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class ReciboDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar(object obj)
        {
            sql = "EXEC DevolverTablaRECIBO";
            return BD.Tabla(sql);
        }
        public int AgregarRecibo(object obj)
        {
            ReciboBO Recibo = (ReciboBO)obj;
            sql = "EXEC AgregarRECIBO '" + Recibo.Fecha + "'," + Recibo.IdUsuario + "," + Recibo.IdMembresia + " ," + Recibo.IdTipoPago + "";
            return BD.Ejecutar(sql);
        }
        public int EliminarRecibo(object obj)
        {
            ReciboBO Recibo = (ReciboBO)obj;
            sql = "EXEC EliminarRECIBO " + Recibo.IdRecibo + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarRecibo(object obj)
        {
            ReciboBO Recibo = (ReciboBO)obj;
            sql = "EXEC ModifcarRECIBO  " + Recibo.IdRecibo + " ,'" + Recibo.Fecha + "'," + Recibo.IdUsuario + "," + Recibo.IdMembresia + " ," + Recibo.IdTipoPago + "";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarRecibo(object obj)
        {
            ReciboBO Recibo = (ReciboBO)obj;
            sql = "EXEC FiltrarRECIBO  " + Recibo.IdRecibo + " ,'" + Recibo.Fecha + "'," + Recibo.IdUsuario + "," + Recibo.IdMembresia + " ," + Recibo.IdTipoPago + "";
            return BD.Tabla(sql);
        }
    }
}