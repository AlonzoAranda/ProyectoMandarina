using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class MembresiaDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar(object obj)
        {
            sql = "EXEC DevolverTablaMEMBRESIA";
            return BD.Tabla(sql);
        }
        public int AgregarMembresia(object obj)
        {
            MembresiaBO Membresia = (MembresiaBO)obj;
            sql = "EXEC AgregarMEMBRESIA '" + Membresia.Nombre + "'," + Membresia.DuracionMeses + "," + Membresia.Costo + "," + Membresia.NumSitios + "";
            return BD.Ejecutar(sql);
        }
        public int EliminarMembresia(object obj)
        {
            MembresiaBO Membresia = (MembresiaBO)obj;
            sql = "EXEC EliminarMEMBRESIA " + Membresia.IdMembresia + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarMembresia(object obj)
        {
            MembresiaBO Membresia = (MembresiaBO)obj;
            sql = "EXEC ModifcarMEMBRESIA  " + Membresia.IdMembresia + " ,'" + Membresia.Nombre + "'," + Membresia.DuracionMeses + "," + Membresia.Costo + "," + Membresia.NumSitios + "";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarMembresia(object obj)
        {
            MembresiaBO Membresia = (MembresiaBO)obj;
            sql = "EXEC FiltrarMEMBRESIA  " + Membresia.IdMembresia + " ,'" + Membresia.Nombre + "'," + Membresia.DuracionMeses + "," + Membresia.Costo + "," + Membresia.NumSitios + "";
            return BD.Tabla(sql);
        }
    }
}