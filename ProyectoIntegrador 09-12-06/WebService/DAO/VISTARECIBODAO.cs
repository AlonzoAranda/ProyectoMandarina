using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class VISTARECIBODAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;

        public DataTable BuscarRecibo(object obj)
        {
            VISTARECIBOBO recibo = (VISTARECIBOBO)obj;
            sql = "EXEC FiltrarVISTARECIBO  " + recibo.Clave + " , '" + recibo.Fecha1 + "'  , '" + recibo.Membresia + "' , " + recibo.Idmembresia + " , " + recibo.Duracion + " , " + recibo.Costo + " , " + recibo.Numsitios + " , '" + recibo.Tipopago + "' , " + recibo.IdUSuario + " , '" + recibo.Nombre + "' , '" + recibo.ApePat + "' , '" + recibo.ApeMat + "'";
            return BD.Tabla(sql);
        }
    }
}