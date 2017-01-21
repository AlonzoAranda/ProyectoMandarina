using WebService.BO;
using System.Data;
namespace WebService.DAO
{
    public class VISTADETALLESITIODAO
    {
        ConexionDAO BD = new ConexionDAO();
        string sql;

        public DataTable BuscarDetallesitio(object obj)
        {
            VISTADETALLESITIOBO Detallesitio = (VISTADETALLESITIOBO)obj;
            sql = "EXEC FiltrarVISTADETALLESITIO  " + Detallesitio.IdSitio + " ,'" + Detallesitio.Descripcion + "','" + Detallesitio.Nombre + "','" + Detallesitio.Estatus + "', '" + Detallesitio.Direccion + "','" + Detallesitio.Latitud + "' ,'" + Detallesitio.Longitud + "' , "+Detallesitio.IdEstablecimiento+"";
            return BD.Tabla(sql);
        }
    }
}