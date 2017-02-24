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




        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void AdministraBO(AdministraBO obj)
        {
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void EstablecimientoBO(EstablecimientoBO obj)
        { }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]

        public void FotoBO(FotoBO obj)
        { }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void MembresiaBO(MembresiaBO obj)
        { }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void ReciboBO(ReciboBO obj)
        { }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void SitiosBO(SitioBO obj)
        { }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void TarjetaCreditoBO(TarjetaCreditoBO obj)
        { }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void TipoEstablecimientoBO(TipoEstablecimientoBO obj)
        { }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void TipoPagoBO(TipoPagoBO obj)
        { }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void UbicacionBO(UbicacionBO obj)
        { }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void UsuarioBO(UsuarioBO obj)
        { }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void EventoBO(EventoBO obj)
        { }

        //[WebMethod]  [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        //public void VISTADETALLESITIOBO(VISTADETALLESITIOBO obj)
        //{ }
        //[WebMethod]  [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        //public void VISTAESTABLECIMIENTOBO(VistaEstablecimientoBO obj)
        //{ }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public void VISTARECIBOBO(VISTARECIBOBO obj)
        { }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosAdministraDAO(object obj)
        {
            return AdministraDAO.Recuperar(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarAdministraDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(AdministraDAO.BuscarAdministra(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return AdministraDAO.BuscarAdministra(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarAdministraDAO(object obj)
        {
            return AdministraDAO.AgregarAdministra(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarAdministraDAO(object obj)
        {
            return AdministraDAO.ModificarAdministra(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarAdministraDAO(object obj)
        {
            return AdministraDAO.EliminarAdministra(obj);
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosEstablecimientoDAO(object obj)
        {
            return EstablecimientoDAO.Recuperar(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarEstablecimientoDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(EstablecimientoDAO.BuscarEstablecimiento(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return EstablecimientoDAO.BuscarEstablecimiento(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarEstablecimientoDAO(object obj)
        {
            return EstablecimientoDAO.AgregarEstablecimiento(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarEstablecimientoDAO(object obj)
        {
            return EstablecimientoDAO.ModificarEstablecimiento(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarEstablecimientoDAO(object obj)
        {
            return EstablecimientoDAO.EliminarEstablecimiento(obj);
        }




        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosFotoDAO(object obj)
        {
            return FotoDAO.Recuperar(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarFotoDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(FotoDAO.BuscarFoto(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return FotoDAO.BuscarFoto(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarFotoDAO(object obj)
        {
            return FotoDAO.AgregarFoto(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarFotoDAO(object obj)
        {
            return FotoDAO.ModificarFoto(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarFotoDAO(object obj)
        {
            return FotoDAO.EliminarFoto(obj);
        }


        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosFotoDAOE(object obj)
        {
            return FotoDAOE.Recuperar(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarFotoDAOE(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(FotoDAOE.BuscarFoto(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return FotoDAOE.BuscarFoto(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarFotoDAOE(object obj)
        {
            return FotoDAOE.AgregarFoto(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarFotoDAOE(object obj)
        {
            return FotoDAOE.ModificarFoto(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarFotoDAOE(object obj)
        {
            return FotoDAOE.EliminarFoto(obj);
        }




        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosMembresiaDAO(object obj)
        {
            return MembresiaDAO.Recuperar(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarMembresiaDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(MembresiaDAO.BuscarMembresia(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return MembresiaDAO.BuscarMembresia(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarMembresiaDAO(object obj)
        {
            return MembresiaDAO.AgregarMembresia(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarMembresiaDAO(object obj)
        {
            return MembresiaDAO.ModificarMembresia(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarMembresiaDAO(object obj)
        {
            return MembresiaDAO.EliminarMembresia(obj);
        }






        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosReciboDAO(object obj)
        {
            return ReciboDAO.Recuperar(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarReciboDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(ReciboDAO.BuscarRecibo(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return ReciboDAO.BuscarRecibo(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarReciboDAO(object obj)
        {
            return ReciboDAO.AgregarRecibo(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarReciboDAO(object obj)
        {
            return ReciboDAO.ModificarRecibo(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarReciboDAO(object obj)
        {
            return ReciboDAO.EliminarRecibo(obj);
        }






        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosSitioDAO(object obj)
        {
            return SitioDAO.Recuperar(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarSitioDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(SitioDAO.BuscarSitio(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return SitioDAO.BuscarSitio(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarSitioDAO(object obj)
        {
            return SitioDAO.AgregarSitio(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarSitioDAO(object obj)
        {
            return SitioDAO.ModificarSitio(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarSitioDAO(object obj)
        {
            return SitioDAO.EliminarSitio(obj);
        }




        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosEventoDAO()
        {
            return EventoDAO.Recuperar();
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarEventoDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(EventoDAO.BuscarEvento(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return EventoDAO.BuscarEvento(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarEventoDAO(object obj)
        {
            return EventoDAO.AgregarEvento(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarEventoDAO(object obj)
        {
            return EventoDAO.ModificarEvento(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarEventoDAO(object obj)
        {
            return EventoDAO.EliminarEvento(obj);
        }





        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosTarjetaCreditoDAO(object obj)
        {
            return TarjetaCreditoDAO.Recuperar(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarTarjetaCreditoDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(TarjetaCreditoDAO.BuscarTarjetaCredito(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return TarjetaCreditoDAO.BuscarTarjetaCredito(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarTarjetaCreditoDAO(object obj)
        {
            return TarjetaCreditoDAO.AgregarTarjetaCredito(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarTarjetaCreditoDAO(object obj)
        {
            return TarjetaCreditoDAO.ModificarTarjetaCredito(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarTarjetaCreditoDAO(object obj)
        {
            return TarjetaCreditoDAO.EliminarTarjetaCredito(obj);
        }







        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosTipoEstablecimientoDAO(object obj)
        {
            return TipoEstablecimientoDAO.Recuperar(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarTipoEstablecimientoDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(TipoEstablecimientoDAO.BuscarTipoEstablecimiento(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return TipoEstablecimientoDAO.BuscarTipoEstablecimiento(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarTipoEstablecimientoDAO(object obj)
        {
            return TipoEstablecimientoDAO.AgregarTipoEstablecimiento(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarTipoEstablecimientoDAO(object obj)
        {
            return TipoEstablecimientoDAO.ModificarTipoEstablecimiento(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarTipoEstablecimientoDAO(object obj)
        {
            return TipoEstablecimientoDAO.EliminarTipoEstablecimiento(obj);
        }











        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosTipoPagoDAO(object obj)
        {
            return TipoPagoDAO.Recuperar(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarTipoPagoDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(TipoPagoDAO.BuscarTipoPago(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return TipoPagoDAO.BuscarTipoPago(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarTipoPagoDAO(object obj)
        {
            return TipoPagoDAO.AgregarTipoPago(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarTipoPagoDAO(object obj)
        {
            return TipoPagoDAO.ModificarTipoPago(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarTipoPagoDAO(object obj)
        {
            return TipoPagoDAO.EliminarTipoPago(obj);
        }







       



        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable DatosUsuarioDAO()
        {
            return UsuarioDAO.Recuperar();
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarUsuarioDAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(UsuarioDAO.BuscarUsuario(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return UsuarioDAO.BuscarUsuario(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int agregarUsuarioDAO(object obj)
        {
            return UsuarioDAO.AgregarUsuario(obj);
        }
        [WebMethod]
            [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int ModificarUsuarioDAO(object obj)
        {
            return UsuarioDAO.ModificarUsuario(obj);
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public int EliminarUsuarioDAO(object obj)
        {
            return UsuarioDAO.EliminarUsuario(obj);
        }
        //[WebMethod]  [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        //public DataTable BuscarVISTADETALLESITIO(object obj)
        //{
        //    return VISTADETALLESITIO.BuscarDetallesitio(obj);
        //}

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarVISTARECIBODAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(VISTARECIBODAO.BuscarRecibo(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return VISTARECIBODAO.BuscarRecibo(obj);
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public DataTable BuscarVISTAESTABLECIMIENTODAO(object obj)
        {
            //Convertir a JSON FORMAT
            string SalidaJSON = string.Empty;
            SalidaJSON = JsonConvert.SerializeObject(vistaEsta.BuscarEstablecimiento(obj));
            //Salida en el web service
            HttpContext Contexto = HttpContext.Current;
            Context.Response.ContentType = "application/json";
            Context.Response.Write(SalidaJSON);
            Context.Response.End();
            return vistaEsta.BuscarEstablecimiento(obj);
        }


    }
}
