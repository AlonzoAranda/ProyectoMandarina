using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIntegrador.GUI
{
    public partial class CatalogoParques : System.Web.UI.Page
    {
        //WS.WSProject servicio = new WS.WSProject();
        //WS.sitiosTuristicosBO sitio = new WS.sitiosTuristicosBO();
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            enviar();
        }

        private void enviar()
        {
            //sitio.Nombre = txtNombre.Text;
            //sitio.Tipo = ddlTipo.Text;
            //sitio.Foto = ddlTipo.Text;
            //sitio.Ubicacion = txtUbicacion.Text;
            //sitio.Descripcion1 = txtDescripcion.Text;
            //sitio.Tabla = DdlEstablecimiento.Text;
            //servicio.agregarsitioDAO(sitio);

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            enviar();
        }
    }
}