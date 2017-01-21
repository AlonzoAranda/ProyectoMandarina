using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIntegrador.GUI
{
    public partial class Facturas : System.Web.UI.Page
    {
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.UsuarioBO usuario = new localhost.UsuarioBO();
        localhost.VISTARECIBOBO vista = new localhost.VISTARECIBOBO();
        GridView us = new GridView();
        protected void Page_Load(object sender, EventArgs e)
        {
            us.DataSource = Session["Usuarios"];
            us.DataBind();
            llenarDtg();
        }
        private void llenarDtg()
        {
           
            vista.IdUSuario = Convert.ToInt32(us.Rows[0].Cells[0].Text);
            Dtgresultado.DataSource = servicio.BuscarVISTARECIBODAO(vista);
            Dtgresultado.DataBind();
        }

        protected void Dtgresultado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "VerFactura")
            {
                int indice = Convert.ToInt32(e.CommandArgument);
                Session["IdFact"] = Dtgresultado.Rows[indice].Cells[0].Text;
                Response.Redirect("VerFactura.aspx");

            }
        }
    }
}