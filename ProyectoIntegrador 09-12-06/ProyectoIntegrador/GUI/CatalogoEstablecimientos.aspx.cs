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
    public partial class CatalogoEstablecimientos : System.Web.UI.Page
    {
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.EstablecimientoBO Establecimiento = new localhost.EstablecimientoBO();
        localhost.TipoEstablecimientoBO tipo = new localhost.TipoEstablecimientoBO();
        localhost.VistaEstablecimientoBO Vista = new localhost.VistaEstablecimientoBO();
        int indice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarGridEstablecimiento(Vista);
                llenarddlTipos();
            }
           
        }
        public void llenarGridEstablecimiento(object obj)
        {
            
            GrTipo.DataSource = servicio.BuscarVISTAESTABLECIMIENTODAO(obj);
            GrTipo.DataBind();
            Session["Resultado"] = servicio.BuscarVISTAESTABLECIMIENTODAO(obj);
        }
        protected void grResultado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SELC")
            {
                indice = Convert.ToInt32(e.CommandArgument);
                txtNombre.Text = GrTipo.Rows[indice].Cells[1].Text;
                ddlTipo.SelectedItem.Value = GrTipo.Rows[indice].Cells[2].Text;
                tipo.Nombre = ddlTipo.SelectedItem.Value;
                Session["Id"] = Convert.ToInt32(GrTipo.Rows[indice].Cells[0].Text);

            }
            if (e.CommandName == "DEL")
            {
                indice = Convert.ToInt32(e.CommandArgument);
                Session["Id"] = Convert.ToInt32(GrTipo.Rows[indice].Cells[0].Text);
                Establecimiento.IdEstablecimiento = Convert.ToInt32(GrTipo.Rows[indice].Cells[0].Text);

                servicio.EliminarEstablecimientoDAO(Establecimiento);

                //indice = 0;
                llenarGridEstablecimiento(Vista);
            }
        }
        public void llenarddlTipos()
        {
            tipo = new localhost.TipoEstablecimientoBO();
            ddlTipo.DataSource = servicio.BuscarTipoEstablecimientoDAO(tipo);
            ddlTipo.DataValueField = "IdTipoEstablecimiento";
            ddlTipo.DataTextField = "NombreTipo";
            ddlTipo.DataBind();
        }
        protected void grResultado_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string mensaje = "";
            if (txtNombre.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el Nombre \n";
            }
            if (ddlTipo.SelectedValue.ToString().Trim().Length == 0)
            {
                mensaje = mensaje + "Selecciona el tipo de establecimiento \n";
            }
            if (mensaje.Trim().Length == 0)
            {
                Establecimiento.Nombre = txtNombre.Text;
                Establecimiento.IdTipoEstablecimiento = Convert.ToInt32(ddlTipo.SelectedValue.ToString());
                int i = servicio.agregarEstablecimientoDAO(Establecimiento);
                if (i == 1)
                {
                    Mensaje("Los datos se agregaron correctamente");


                    limpiar();
                }
            }
        }
        public void limpiar()
        {
            Establecimiento = new localhost.EstablecimientoBO();
            txtNombre.Text = "";
            llenarGridEstablecimiento(Vista);
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
                if (ddlTipo.SelectedValue.ToString().Trim().Length == 0)
                {
                    mensaje = mensaje + "Selecciona el tipo de establecimiento \n";
                }
                if (mensaje.Trim().Length == 0)
                {
                    Establecimiento.IdEstablecimiento = (Int32)Session["Id"];
                    Establecimiento.IdTipoEstablecimiento = Convert.ToInt32(ddlTipo.SelectedValue);
                    Establecimiento.Nombre = txtNombre.Text;

                    int i = servicio.ModificarEstablecimientoDAO(Establecimiento);
                    if (i != 1)
                    {
                        Mensaje("Los datos se agregaron correctamente");
                        llenarGridEstablecimiento(Vista);
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
                servicio.EliminarEstablecimientoDAO(Establecimiento);
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
                Establecimiento.Nombre = txtNombre.Text;
            }

            llenarGridEstablecimiento(Vista);
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

        protected void GrTipo_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}