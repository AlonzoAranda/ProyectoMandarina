using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data;
namespace ProyectoIntegrador.GUI
{
    public partial class VerFactura : System.Web.UI.Page
    {
        //ProyectoBAEntities2 obj = new ProyectoBAEntities2();
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.UsuarioBO usuario = new localhost.UsuarioBO();
        localhost.VISTARECIBOBO vista = new localhost.VISTARECIBOBO();
        DataTable us = new DataTable();
        DataTable user = new DataTable();


        protected void Page_Load(object sender, EventArgs e)
        {
            user = (DataTable) Session["Usuarios"];
         

            if (!IsPostBack)
            {
               vista.Clave = Convert.ToInt32(Session["IdFact"]);
               us = servicio.BuscarVISTARECIBODAO(vista);
               user = servicio.BuscarUsuarioDAO(usuario);
                llenarResultado();
                llenarGrid();
            }
        }

        public void llenarGrid()
        {
            vista.Clave = Convert.ToInt32(Session["IdFact"]);
            dtgDetallePago.DataSource = servicio.BuscarVISTARECIBODAO(vista);
            dtgDetallePago.DataBind();
            Session["ResultadoAlumno"] = servicio.BuscarVISTARECIBODAO(vista);
        }

        public void llenarResultado()
        {
            DataTable ft = new DataTable();
            vista.Clave = Convert.ToInt32(Session["IdFact"]);
            ft = servicio.BuscarVISTARECIBODAO(vista);
            
            lblFecha.Text = us.Rows[0].ItemArray[1].ToString();
            lblMembresia.Text = us.Rows[0].ItemArray[2].ToString();
            lblNombre.Text = ft.Rows[0].ItemArray[9].ToString();
            lblApellidos.Text = ft.Rows[0].ItemArray[10].ToString() +" " + ft.Rows[0].ItemArray[11].ToString();
            lblSubtotal.Text = us.Rows[0].ItemArray[5].ToString();
            lblDescuento.Text = "0. 00";
            lblIva.Text = (Convert.ToDouble(us.Rows[0].ItemArray[5].ToString()) * .16).ToString();
            lblTotal.Text = (Convert.ToDouble(us.Rows[0].ItemArray[5].ToString()) * 1.16).ToString();

        }
        public void imprimir()
        { 
            // Session["ResultadoAlumno"] = servicio.BuscarVISTADETALLESITIO(obj);
            String ruta = Server.MapPath("~/Reportes/CrFactura.rpt");
            ReportDocument doc = new ReportDocument();
            DataTable dt = (DataTable)Session["ResultadoAlumno"];

           doc.Load(ruta);
            doc.SetDataSource(dt);
    
            Response.Buffer = false;
            Response.ClearContent();
            Response.ClearHeaders();
            doc.PrintToPrinter(1, false, 0, 1);
            doc.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "UTM");
        }

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            try
            {
                imprimir();
            }
            catch
            { }
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("InformacionUser.aspx");
        }
    }
}