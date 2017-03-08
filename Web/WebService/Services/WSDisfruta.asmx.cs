using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using WebService.BO;
using WebService.DAO;
using System.Data;
using System.Web.Script.Services;
using Newtonsoft.Json;
namespace WebService
{
    /// <summary>
    /// Summary description for WSDisfruta
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WSDisfruta : System.Web.Services.WebService
    {
        AdministraDAO AdministraDAO = new AdministraDAO();
        EstablecimientoDAO EstablecimientoDAO = new EstablecimientoDAO();
        FotoDAO FotoDAO = new FotoDAO();
        FotoEDAO FotoDAOE = new FotoEDAO();
        MembresiaDAO MembresiaDAO = new MembresiaDAO();
        ReciboDAO ReciboDAO = new ReciboDAO();
        SitioDAO SitioDAO = new SitioDAO();
        TarjetaCreditoDAO TarjetaCreditoDAO = new TarjetaCreditoDAO();
        TipoEstablecimientoDAO TipoEstablecimientoDAO = new TipoEstablecimientoDAO();
        TipoPagoDAO TipoPagoDAO = new TipoPagoDAO();
        UsuarioDAO UsuarioDAO = new UsuarioDAO();
        VISTARECIBODAO VISTARECIBODAO = new VISTARECIBODAO();
        VISTADETALLESITIODAO VISTADETALLESITIO = new VISTADETALLESITIODAO();
        VistaEstablecimientoDAO vistaEsta = new VistaEstablecimientoDAO();
        VISTARECIBOBO vistaRecibo = new VISTARECIBOBO();
        EventoDAO EventoDAO = new EventoDAO();
        FotoEDAO fotoEvento = new FotoEDAO();
        //Como pasar todo
        //[WebMethod]
        //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        //public void AdministraBO(int i)
        //{
        //    AdministraDAO oAdministraDAO = new AdministraDAO();
        //    AdministraBO oAdministradorBO = new BO.AdministraBO();
        //    oAdministradorBO.IdAdministra = i;

        //    oAdministraDAO.AgregarAdministra(oAdministradorBO);

        //}
        [WebMethod]
          
        public void AdministraBO(AdministraBO obj){}

        [WebMethod]
          
        public void EstablecimientoBO(EstablecimientoBO obj){ }

        [WebMethod]
          

        public void FotoBO(FotoBO obj)
        { }
        [WebMethod]
          
        public void MembresiaBO(MembresiaBO obj)
        { }
        [WebMethod]
          
        public void ReciboBO(ReciboBO obj)
        { }
        [WebMethod]
          
        public void SitiosBO(SitioBO obj)
        { }
        [WebMethod]
          
        public void TarjetaCreditoBO(TarjetaCreditoBO obj)
        { }
        [WebMethod]
          
        public void TipoEstablecimientoBO(TipoEstablecimientoBO obj)
        { }
        [WebMethod]
          
        public void TipoPagoBO(TipoPagoBO obj)
        { }
        [WebMethod]
          
        public void UbicacionBO(UbicacionBO obj)
        { }
        [WebMethod]
          
        public void UsuarioBO(UsuarioBO obj)
        { }
        [WebMethod]
          
        public void EventoBO(EventoBO obj)
        { }
        
        [WebMethod]
          
        public void VISTARECIBOBO(VISTARECIBOBO obj)
        { }

        [WebMethod]
          
        public DataTable DatosAdministraDAO(object obj)
        {
            return AdministraDAO.Recuperar(obj);
        }
        [WebMethod]
          
        public DataTable BuscarAdministraDAO(object obj)
        {
            return AdministraDAO.BuscarAdministra(obj);
        }
        [WebMethod]
          
        public int agregarAdministraDAO(object obj)
        {
            return AdministraDAO.AgregarAdministra(obj);
        }
        [WebMethod]
          
        public int ModificarAdministraDAO(object obj)
        {
            return AdministraDAO.ModificarAdministra(obj);
        }
        [WebMethod]
          
        public int EliminarAdministraDAO(object obj)
        {
            return AdministraDAO.EliminarAdministra(obj);
        }

        [WebMethod]
          
        public DataTable DatosEstablecimientoDAO(object obj)
        {
            return EstablecimientoDAO.Recuperar(obj);
        }
        [WebMethod]
          
        public DataTable BuscarEstablecimientoDAO(object obj)
        {
            return EstablecimientoDAO.BuscarEstablecimiento(obj);
        }
        [WebMethod]
          
        public int agregarEstablecimientoDAO(object obj)
        {
            return EstablecimientoDAO.AgregarEstablecimiento(obj);
        }
        [WebMethod]
          
        public int ModificarEstablecimientoDAO(object obj)
        {
            return EstablecimientoDAO.ModificarEstablecimiento(obj);
        }
        [WebMethod]
          
        public int EliminarEstablecimientoDAO(object obj)
        {
            return EstablecimientoDAO.EliminarEstablecimiento(obj);
        }




        [WebMethod]
          
        public DataTable DatosFotoDAO(object obj)
        {
            return FotoDAO.Recuperar(obj);
        }
        [WebMethod]
          
        public DataTable BuscarFotoDAO(object obj)
        {
            return FotoDAO.BuscarFoto(obj);
        }
        [WebMethod]
          
        public int agregarFotoDAO(object obj)
        {
            return FotoDAO.AgregarFoto(obj);
        }
        [WebMethod]
          
        public int ModificarFotoDAO(object obj)
        {
            return FotoDAO.ModificarFoto(obj);
        }
        [WebMethod]
          
        public int EliminarFotoDAO(object obj)
        {
            return FotoDAO.EliminarFoto(obj);
        }


        [WebMethod]
          
        public DataTable DatosFotoDAOE(object obj)
        {
            return FotoDAOE.Recuperar(obj);
        }
        [WebMethod]
          
        public DataTable BuscarFotoDAOE(object obj)
        {
            return FotoDAOE.BuscarFoto(obj);
        }
        [WebMethod]
          
        public int agregarFotoDAOE(object obj)
        {
            return FotoDAOE.AgregarFoto(obj);
        }
        [WebMethod]
          
        public int ModificarFotoDAOE(object obj)
        {
            return FotoDAOE.ModificarFoto(obj);
        }
        [WebMethod]
          
        public int EliminarFotoDAOE(object obj)
        {
            return FotoDAOE.EliminarFoto(obj);
        }




        [WebMethod]
          
        public DataTable DatosMembresiaDAO(object obj)
        {
            return MembresiaDAO.Recuperar(obj);
        }
        [WebMethod]
          
        public DataTable BuscarMembresiaDAO(object obj)
        {
            return MembresiaDAO.BuscarMembresia(obj);
        }
        [WebMethod]
          
        public int agregarMembresiaDAO(object obj)
        {
            return MembresiaDAO.AgregarMembresia(obj);
        }
        [WebMethod]
          
        public int ModificarMembresiaDAO(object obj)
        {
            return MembresiaDAO.ModificarMembresia(obj);
        }
        [WebMethod]
          
        public int EliminarMembresiaDAO(object obj)
        {
            return MembresiaDAO.EliminarMembresia(obj);
        }






        [WebMethod]
          
        public DataTable DatosReciboDAO(object obj)
        {
            return ReciboDAO.Recuperar(obj);
        }
        [WebMethod]
          
        public DataTable BuscarReciboDAO(object obj)
        {
            return ReciboDAO.BuscarRecibo(obj);
        }
        [WebMethod]
          
        public int agregarReciboDAO(object obj)
        {
            return ReciboDAO.AgregarRecibo(obj);
        }
        [WebMethod]
          
        public int ModificarReciboDAO(object obj)
        {
            return ReciboDAO.ModificarRecibo(obj);
        }
        [WebMethod]
          
        public int EliminarReciboDAO(object obj)
        {
            return ReciboDAO.EliminarRecibo(obj);
        }






        [WebMethod]
          
        public DataTable DatosSitioDAO(object obj)
        {
            return SitioDAO.Recuperar(obj);
        }
        [WebMethod]
          
        public DataTable BuscarSitioDAO(object obj)
        {
            return SitioDAO.BuscarSitio(obj);
        }
       
        [WebMethod]
          
        public int agregarSitioDAO(object obj)
        {
            return SitioDAO.AgregarSitio(obj);
        }
        [WebMethod]
          
        public int ModificarSitioDAO(object obj)
        {
            return SitioDAO.ModificarSitio(obj);
        }
        [WebMethod]
          
        public int EliminarSitioDAO(object obj)
        {
            return SitioDAO.EliminarSitio(obj);
        }




        [WebMethod]
          
        public DataTable DatosEventoDAO()
        {
            return EventoDAO.Recuperar();
        }
        [WebMethod]
          
        public DataTable BuscarEventoDAO(object obj)
        {
            return EventoDAO.BuscarEvento(obj);
        }
        [WebMethod]
          
        public int agregarEventoDAO(object obj)
        {
            return EventoDAO.AgregarEvento(obj);
        }
        [WebMethod]
          
        public int ModificarEventoDAO(object obj)
        {
            return EventoDAO.ModificarEvento(obj);
        }
        [WebMethod]
          
        public int EliminarEventoDAO(object obj)
        {
            return EventoDAO.EliminarEvento(obj);
        }





        [WebMethod]
          
        public DataTable DatosTarjetaCreditoDAO(object obj)
        {
            return TarjetaCreditoDAO.Recuperar(obj);
        }
        [WebMethod]
          
        public DataTable BuscarTarjetaCreditoDAO(object obj)
        {
            return TarjetaCreditoDAO.BuscarTarjetaCredito(obj);
        }
        [WebMethod]
          
        public int agregarTarjetaCreditoDAO(object obj)
        {
            return TarjetaCreditoDAO.AgregarTarjetaCredito(obj);
        }
        [WebMethod]
          
        public int ModificarTarjetaCreditoDAO(object obj)
        {
            return TarjetaCreditoDAO.ModificarTarjetaCredito(obj);
        }
        [WebMethod]
          
        public int EliminarTarjetaCreditoDAO(object obj)
        {
            return TarjetaCreditoDAO.EliminarTarjetaCredito(obj);
        }







        [WebMethod]
          
        public DataTable DatosTipoEstablecimientoDAO(object obj)
        {
            return TipoEstablecimientoDAO.Recuperar(obj);
        }
        [WebMethod]
          
        public DataTable BuscarTipoEstablecimientoDAO(object obj)
        {
            return TipoEstablecimientoDAO.BuscarTipoEstablecimiento(obj);
        }
        [WebMethod]
          
        public int agregarTipoEstablecimientoDAO(object obj)
        {
            return TipoEstablecimientoDAO.AgregarTipoEstablecimiento(obj);
        }
        [WebMethod]
          
        public int ModificarTipoEstablecimientoDAO(object obj)
        {
            return TipoEstablecimientoDAO.ModificarTipoEstablecimiento(obj);
        }
        [WebMethod]
          
        public int EliminarTipoEstablecimientoDAO(object obj)
        {
            return TipoEstablecimientoDAO.EliminarTipoEstablecimiento(obj);
        }











        [WebMethod]
          
        public DataTable DatosTipoPagoDAO(object obj)
        {
            return TipoPagoDAO.Recuperar(obj);
        }
        [WebMethod]
          
        public DataTable BuscarTipoPagoDAO(object obj)
        {
           
            return TipoPagoDAO.BuscarTipoPago(obj);
        }
        [WebMethod]
          
        public int agregarTipoPagoDAO(object obj)
        {
            return TipoPagoDAO.AgregarTipoPago(obj);
        }
        [WebMethod]
          
        public int ModificarTipoPagoDAO(object obj)
        {
            return TipoPagoDAO.ModificarTipoPago(obj);
        }
        [WebMethod]
          
        public int EliminarTipoPagoDAO(object obj)
        {
            return TipoPagoDAO.EliminarTipoPago(obj);
        }







       



        [WebMethod]
     
        public DataTable DatosUsuarioDAO()
        {
            return UsuarioDAO.Recuperar();
        }
        [WebMethod]
        
        public DataTable BuscarUsuarioDAO(object obj)
        {
            return UsuarioDAO.BuscarUsuario(obj);
        }
        [WebMethod]
        
        public int agregarUsuarioDAO(object obj)
        {
            return UsuarioDAO.AgregarUsuario(obj);
        }
        [WebMethod]
        
        public int ModificarUsuarioDAO(object obj)
        {
            return UsuarioDAO.ModificarUsuario(obj);
        }
        [WebMethod]
          
        public int EliminarUsuarioDAO(object obj)
        {
            return UsuarioDAO.EliminarUsuario(obj);
        }
        //[WebMethod]    
        //public DataTable BuscarVISTADETALLESITIO(object obj)
        //{
        //    return VISTADETALLESITIO.BuscarDetallesitio(obj);
        //}

        [WebMethod]
          
        public DataTable BuscarVISTARECIBODAO(object obj)
        {
            return VISTARECIBODAO.BuscarRecibo(obj);
        }

        [WebMethod]
          
        public DataTable BuscarVISTAESTABLECIMIENTODAO(object obj)
        {
            return vistaEsta.BuscarEstablecimiento(obj);
        }







        private void SalidaJSON(DataTable obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(obj);
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void buscarSitioMovil(string nombre, string longitud, string latitud, string direccion, string estatus, int idEstablecimiento, int  idSitio)
        {
            SitioBO lugar = new SitioBO();
            lugar.Nombre = nombre;
            lugar.Longitud = longitud;
            lugar.Latitud = latitud;
            lugar.Direccion = direccion;
            lugar.Estatus = estatus;
            lugar.IdEstablecimiento = idEstablecimiento;
            lugar.IdSitio = idSitio;
            SalidaJSON(SitioDAO.BuscarSitio(lugar));
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void ObtenerSitioMovil(string nombre, string longitud, string latitud, string direccion, string estatus, int idEstablecimiento, int idSitio)
        {
            SitioBO lugar = new SitioBO();
            lugar.Nombre = nombre;
            lugar.Longitud = longitud;
            lugar.Latitud = latitud;
            lugar.Direccion = direccion;
            lugar.Estatus = estatus;
            lugar.IdEstablecimiento = idEstablecimiento;
            lugar.IdSitio = idSitio;
            SalidaJSON(SitioDAO.BuscarSitio(lugar));
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void buscarEstablecimientoMovil(int idTipoEstablecimiento, string nombre, int id )
        {
            EstablecimientoBO establecimiento = new EstablecimientoBO();
            establecimiento.IdEstablecimiento = idTipoEstablecimiento;
            establecimiento.Nombre = nombre;
            establecimiento.IdEstablecimiento = id;
            SalidaJSON(EstablecimientoDAO.BuscarEstablecimiento(establecimiento));
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void buscarTipoEstablecimientoMovil(int idtipoEstablecimiento, string  nombre)
        {
            TipoEstablecimientoBO tipoEstablecimiento = new TipoEstablecimientoBO();
            tipoEstablecimiento.IdTipoEstablecimiento = idtipoEstablecimiento;
            tipoEstablecimiento.Nombre = nombre;
            SalidaJSON(TipoEstablecimientoDAO.BuscarTipoEstablecimiento(tipoEstablecimiento));
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void buscarFotoMovil(string ruta, int idSitio)
        {
            FotoBO foto = new FotoBO();
            foto.Foto = ruta;
            foto.IdSitio = idSitio;
            SalidaJSON(FotoDAO.BuscarFoto(foto));
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void buscarFotoEventoMovil(string ruta, int idSitio)
        {
            FotoBO foto = new FotoBO();
            foto.Foto = ruta;
            foto.IdSitio = idSitio;
            SalidaJSON(FotoDAOE.BuscarFoto(foto));
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void buscarEventos(string nombre, string longitud, string latitud, string direccion, DateTime fechaInicio, DateTime fechafin)
        {
            EventoBO lugar = new EventoBO();
            lugar.Nombre = nombre;
            lugar.Longitud = longitud;
            lugar.Latitud = latitud;
            lugar.Direccion = direccion;
            lugar.FechaInicio = fechaInicio;
            lugar.FechaFin = fechafin;
            SalidaJSON(EventoDAO.BuscarEvento(lugar));
        }

    }
}
