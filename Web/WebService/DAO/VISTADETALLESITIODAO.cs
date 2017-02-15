using WebService.BO;
using System.Data;
namespace WebService.DAO
{
    public class VISTADETALLESITIODAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;

        public DataTable BuscarDetallesitio(object obj, bool EsAdmin)
        {
            if (EsAdmin == false)
            {
                SitioBO Detallesitio = (SitioBO)obj;
                sql = "EXEC FiltrarVISTADETALLESITIO  " + Detallesitio.IdSitio + " ,'" + Detallesitio.Descripcion + "','" + Detallesitio.Nombre + "','" + Detallesitio.Estatus + "', '" + Detallesitio.Direccion + "','" + Detallesitio.Latitud + "' ,'" + Detallesitio.Longitud + "' , " + Detallesitio.IdEstablecimiento + ", "+0+" ";
                return BD.Tabla(sql);
            }
            else
            {
                SitioBO Detallesitio = (SitioBO)obj;
                sql = "EXEC FiltrarVISTADETALLESITIO  " + Detallesitio.IdSitio + " ,'" + Detallesitio.Descripcion + "','" + Detallesitio.Nombre + "','" + Detallesitio.Estatus + "', '" + Detallesitio.Direccion + "','" + Detallesitio.Latitud + "' ,'" + Detallesitio.Longitud + "' , " + Detallesitio.IdEstablecimiento + ", " + Detallesitio.Idusuario + "  ";
                return BD.Tabla(sql);
            }
        }
    }
}