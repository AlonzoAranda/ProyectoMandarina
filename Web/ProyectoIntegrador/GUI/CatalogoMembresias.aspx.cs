using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;

namespace ProyectoIntegrador.GUI
{
    public partial class CatalogoMembresias : System.Web.UI.Page
    {

        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.MembresiaBO Membresia = new localhost.MembresiaBO();

        int indice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarGridMembresia(Membresia);

            }
        }
        public void llenarGridMembresia(object obj)
        { 
            GrMembresia.DataSource = servicio.BuscarMembresiaDAO(obj);
            GrMembresia.DataBind();
            Session["Resultado"] = servicio.BuscarMembresiaDAO(obj);
        }
     

      

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string mensaje = "";
            if (txtNombre.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el Nombre \n";
            }
            if (txtMeses.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el número de meses \n";
            }
            if (txtCosto.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el costo de la membresia \n";
            }
            if (txtNumSitios.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el número de sitios permitidos \n";
            }
            if (mensaje.Trim().Length == 0)
            {
                //Membresia.IdMembresia = (Int32)Session["Id"];
                Membresia.Nombre = txtNombre.Text;
                Membresia.DuracionMeses = Convert.ToInt32(txtMeses.Text);
                Membresia.Costo = Convert.ToDecimal(txtCosto.Text);
                Membresia.NumSitios = Convert.ToInt32(txtNumSitios.Text);

                int i = servicio.agregarMembresiaDAO(Membresia);
                if (i == 1)
                {
                    Mensaje("Los datos se agregaron correctamente");


                    limpiar();
                }
            }
        }
        public void limpiar()
        {
            Membresia = new localhost.MembresiaBO();
            txtNombre.Text = "";
            txtCosto.Text = "";
            txtMeses.Text = "";
            txtNumSitios.Text = "";
            
            llenarGridMembresia(Membresia);
        }
        private void Mensaje(string ex)
        {
            string mensaje = ex;
            mensaje = mensaje.Replace(Environment.NewLine, "\\n");
            mensaje = mensaje.Replace("\n", "\\n");
            mensaje = mensaje.Replace("'", "\"");
            ClientScript.RegisterClientScriptBlock(typeof(Page), "Error", "<script> alert('" + mensaje + "');</script>");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if ((Int32)Session["Id"] != 0)
            {
                string mensaje = "";
                if (txtNombre.Text.Trim().Length == 0)
                {
                    mensaje = mensaje + "Introduce el Nombre \n";
                }
                if (txtMeses.Text.Trim().Length == 0)
                {
                    mensaje = mensaje + "Introduce el número de meses \n";
                }
                if (txtCosto.Text.Trim().Length == 0)
                {
                    mensaje = mensaje + "Introduce el costo de la membresia \n";
                }
                if (txtNumSitios.Text.Trim().Length == 0)
                {
                    mensaje = mensaje + "Introduce el número de sitios permitidos \n";
                }
                if (mensaje.Trim().Length == 0)
                {
                    Membresia.IdMembresia = (Int32)Session["Id"];
                    Membresia.Nombre = txtNombre.Text;
                    Membresia.DuracionMeses = Convert.ToInt32( txtMeses.Text);
                    Membresia.Costo = Convert.ToDecimal(txtCosto.Text);
                    Membresia.NumSitios = Convert.ToInt32(txtNumSitios.Text);
                    int i = servicio.ModificarMembresiaDAO(Membresia);
                    if (i != 1)
                    {
                        Mensaje("Los datos se agregaron correctamente");
                        llenarGridMembresia(Membresia);
                        limpiar();
                    }
                    else
                    {
                        Mensaje("Los datos no se agregaron, intenta de nuevo");
                    }
                }
                else if (mensaje.Trim().Length > 0)
                {
                    Mensaje("Favor de ingresar los siguientes datos:\n" + mensaje);
                }
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if ((Int32)Session["Id"] != 0)
            {
                servicio.EliminarMembresiaDAO(Membresia);
            }
            else
            {
                Mensaje("Seleccione un valor de la tabla para poder continuar");
            }

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text.Trim().Length != 0)
            {
                Membresia.Nombre = txtNombre.Text;
            }

            llenarGridMembresia(Membresia);
        }



        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            String ruta = Server.MapPath("~/Reportes/CrDetalleSitios.rpt");
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

        protected void txtLimpiar_Click1(object sender, EventArgs e)
        {
            limpiar();
        }

     
        protected void GrMembresia_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "sele")
            {
                indice = Convert.ToInt32(e.CommandArgument);
                Session["Id"] = Convert.ToInt32(GrMembresia.Rows[indice].Cells[0].Text);
                txtNombre.Text = GrMembresia.Rows[indice].Cells[1].Text;
                txtMeses.Text = GrMembresia.Rows[indice].Cells[2].Text;
                txtCosto.Text = GrMembresia.Rows[indice].Cells[3].Text;
                txtNumSitios.Text = GrMembresia.Rows[indice].Cells[4].Text;
            }
            if (e.CommandName == "Dele")
            {
                indice = Convert.ToInt32(e.CommandArgument);
                Session["Id"] = Convert.ToInt32(GrMembresia.Rows[indice].Cells[0].Text);
                Membresia.IdMembresia = Convert.ToInt32(GrMembresia.Rows[indice].Cells[0].Text);

                servicio.EliminarMembresiaDAO(Membresia);

                //indice = 0;
                Membresia = new localhost.MembresiaBO();
                llenarGridMembresia(Membresia);
            }
        }

        protected void GrMembresia_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}