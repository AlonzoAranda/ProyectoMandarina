using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class VistaEstablecimientoDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;

        public DataTable BuscarEstablecimiento(object obj)
        {
            VistaEstablecimientoBO Establecimiento = (VistaEstablecimientoBO)obj;
            sql = "EXEC FiltrarVistaESTABLECIMIENTOS  " + Establecimiento.IdEstablecimiento + " ,'" + Establecimiento.Nombre + "','" + Establecimiento.NombreTipo + "'";
            return BD.Tabla(sql);
        }
    }
}