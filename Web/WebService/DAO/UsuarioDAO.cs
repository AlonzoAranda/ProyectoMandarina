using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebService.BO;
using WebService.DAO;
using System.Data;
namespace WebService.DAO
{
    public class UsuarioDAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;


        public DataTable Recuperar()
        {
            sql = "EXEC DevolverTablaUSUARIO";
            return BD.Tabla(sql);
        }
        public int AgregarUsuario(object obj)
        {
            UsuarioBO Usuario = (UsuarioBO)obj;
            sql = "EXEC AgregarUSUARIO '" + Usuario.Nombre + "','" + Usuario.ApPat  + "','" + Usuario.ApMat + "', '" + Usuario.Contrasena + "','" + Usuario.Usuario + "' , "+Usuario.IdMembresia+" , "+Usuario.IdTipoPago+",'"+Usuario.FotoUS+ "'," + Usuario.TipoUS + "";
            return BD.Ejecutar(sql);
        }
        public int EliminarUsuario(object obj)
        {
            UsuarioBO Usuario = (UsuarioBO)obj;
            sql = "EXEC EliminarUSUARIO " + Usuario.IdUsuario + "";
            return BD.Ejecutar(sql);
        }
        public int ModificarUsuario(object obj)
        {
            UsuarioBO Usuario = (UsuarioBO)obj;
            sql = "EXEC ModifcarUSUARIO  " + Usuario.IdUsuario + " ,'" + Usuario.Nombre + "','" + Usuario.ApPat + "','" + Usuario.ApMat + "', '" + Usuario.Contrasena + "','" + Usuario.Usuario + "' , " + Usuario.IdMembresia + " , " + Usuario.IdTipoPago + ",'" + Usuario.FotoUS + "'," + Usuario.TipoUS + "";
            return BD.Ejecutar(sql);
        }
        public DataTable BuscarUsuario(object obj)
        {
            UsuarioBO Usuario = (UsuarioBO)obj;
            sql = "EXEC FiltrarUSUARIO  " + Usuario.IdUsuario + " ,'" + Usuario.Nombre + "','" + Usuario.ApPat + "','" + Usuario.ApMat + "', '" + Usuario.Contrasena + "','" + Usuario.Usuario + "' , " + Usuario.IdMembresia + " , " + Usuario.IdTipoPago + "," + Usuario.TipoUS + "";
            return BD.Tabla(sql);
        }
    }
}