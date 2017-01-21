using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class FotoDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar(object obj)
        {
            sql = "EXEC DevolverTablaFOTOS";
            return BD.Tabla(sql);
        }
        public int AgregarFoto(object obj)
        {
            FotoBO Foto = (FotoBO)obj;
            sql = "EXEC AgregarFOTOS '" + Foto.Foto + "'," + Foto.IdSitio + "";
            return BD.Ejecutar(sql);
        }
        public int EliminarFoto(object obj)
        {
            FotoBO Foto = (FotoBO)obj;
            sql = "EXEC EliminarFOTOS " + Foto.IdFoto + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarFoto(object obj)
        {
            FotoBO Foto = (FotoBO)obj;
            sql = "EXEC ModifcarFOTOS  " + Foto.IdFoto + " ,'" + Foto.Foto + "'," + Foto.IdSitio + "";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarFoto(object obj)
        {
            FotoBO Foto = (FotoBO)obj;
            sql = "EXEC FiltrarFOTOS  " + Foto.IdFoto + " ,'" + Foto.Foto + "'," + Foto.IdSitio + "";
            return BD.Tabla(sql);
        }
    }
}