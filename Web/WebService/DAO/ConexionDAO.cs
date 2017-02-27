using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace WebService.DAO
{
    public class ConexionDAO
    {
        SqlConnection conn;
        string sql;
        public SqlConnection ConexionBD()
        {
            //sql = "Data source = LENOVO-PC\\SQLEXPRESS; Initial Catalog=ProyectoBA; Integrated Security=True
            sql = "workstation id=ximbalProyect.mssql.somee.com;packet size=4096;user id=Joseph123456789_SQLLogin_1;pwd=6cmf2fjxap;data source=ximbalProyect.mssql.somee.com;persist security info=False;initial catalog=ximbalProyect";


            conn = new SqlConnection(sql);
            return conn;
        }
        public void abrirConex()
        {
            conn.Open();
        }
        public void CerrarConex()
        {
            conn.Close();
        }

        public int Ejecutar(string sql)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = ConexionBD();
            abrirConex();
            cmd.CommandText = sql;

            int i = cmd.ExecuteNonQuery();
            if (i <= 0)
            {
                return 0;
            }
            return 1;
        }
        public DataTable Tabla(string sql)
        {

            SqlDataAdapter Da = new SqlDataAdapter(sql, ConexionBD());
            DataTable nueva = new DataTable("MisDatos");
            Da.Fill(nueva);
            return nueva;

        }
    }
}