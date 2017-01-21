﻿using System;
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
    public partial class CatalogoTipoEstablecimiento : System.Web.UI.Page
    {
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.TipoEstablecimientoBO TipoEstablecimiento = new localhost.TipoEstablecimientoBO();

        int indice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarGridTipoEstablecimiento(TipoEstablecimiento);

            }
        }
        public void llenarGridTipoEstablecimiento(object obj)
        {
            TipoEstablecimiento = null;
            GrTipo.DataSource = servicio.BuscarTipoEstablecimientoDAO(obj);
            GrTipo.DataBind();
            Session["Resultado"] = servicio.BuscarTipoEstablecimientoDAO(obj);
        }
        protected void grResultado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SELECT")
            {
                indice = Convert.ToInt32(e.CommandArgument);
                Session["Id"] = Convert.ToInt32(GrTipo.Rows[indice].Cells[0].Text);
                txtNombre.Text = GrTipo.Rows[indice].Cells[1].Text;
            }
            if (e.CommandName == "BORRAR")
            {
                indice = Convert.ToInt32(e.CommandArgument);
                Session["Id"] = Convert.ToInt32(GrTipo.Rows[indice].Cells[0].Text);
                TipoEstablecimiento.IdTipoEstablecimiento = Convert.ToInt32(GrTipo.Rows[indice].Cells[0].Text);

                servicio.EliminarTipoEstablecimientoDAO(TipoEstablecimiento);

                //indice = 0;
                TipoEstablecimiento = new localhost.TipoEstablecimientoBO();
                llenarGridTipoEstablecimiento(TipoEstablecimiento);
            }
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
            if (mensaje.Trim().Length == 0)
            {
                TipoEstablecimiento.Nombre = txtNombre.Text;

                int i = servicio.agregarTipoEstablecimientoDAO(TipoEstablecimiento);
                if (i == 1)
                {
                    Mensaje("Los datos se agregaron correctamente");


                    limpiar();
                }
            }
        }
        public void limpiar()
        {
            TipoEstablecimiento = new localhost.TipoEstablecimientoBO();
            txtNombre.Text = "";
            llenarGridTipoEstablecimiento(TipoEstablecimiento);
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
                if (mensaje.Trim().Length == 0)
                {
                    TipoEstablecimiento.IdTipoEstablecimiento = (Int32)Session["Id"];
                    TipoEstablecimiento.Nombre = txtNombre.Text;

                    int i = servicio.ModificarTipoEstablecimientoDAO(TipoEstablecimiento);
                    if (i != 1)
                    {
                        Mensaje("Los datos se agregaron correctamente");
                        llenarGridTipoEstablecimiento(TipoEstablecimiento);
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
                servicio.EliminarTipoEstablecimientoDAO(TipoEstablecimiento);
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
                TipoEstablecimiento.Nombre = txtNombre.Text;
            }

            llenarGridTipoEstablecimiento(TipoEstablecimiento);
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