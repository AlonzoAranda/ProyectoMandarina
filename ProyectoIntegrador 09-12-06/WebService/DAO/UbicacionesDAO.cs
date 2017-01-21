using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class UbicacionesDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar(object obj)
        {
            sql = "EXEC DevolverTablaUBICACIONES";
            return BD.Tabla(sql);
        }
        public int AgregarUbicacion(object obj)
        {
            UbicacionBO Ubicacion = (UbicacionBO)obj;
            sql = "EXEC AgregarUBICACIONES  '" + Ubicacion.Direccion + "','" + Ubicacion.Latitud + "','" + Ubicacion.Longitud + "' , "+Ubicacion.IdSitio+"";
            return BD.Ejecutar(sql);
        }
        public int EliminarUbicacion(object obj)
        {
            UbicacionBO Ubicacion = (UbicacionBO)obj;
            sql = "EXEC EliminarUBICACIONES " + Ubicacion.IdUbicacion + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarUbicacion(object obj)
        {
            UbicacionBO Ubicacion = (UbicacionBO)obj;
            sql = "EXEC ModifcarUBICACIONES  " + Ubicacion.IdUbicacion + " , '" + Ubicacion.Direccion + "','" + Ubicacion.Latitud + "','" + Ubicacion.Longitud + "' , " + Ubicacion.IdSitio + "";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarUbicacion(object obj)
        {
            UbicacionBO Ubicacion = (UbicacionBO)obj;
            sql = "EXEC FiltrarUBICACIONES  " + Ubicacion.IdUbicacion + " , '" + Ubicacion.Direccion + "','" + Ubicacion.Latitud + "','" + Ubicacion.Longitud + "' , " + Ubicacion.IdSitio + "";
            return BD.Tabla(sql);
        }
    }
}