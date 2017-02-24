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
    public partial class AgregarEvento : System.Web.UI.Page
    {
        //inicializacion de servicios y catalogos
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.EventoBO Evento = new localhost.EventoBO();
        localhost.FotoBO Foto = new localhost.FotoBO();

        DataTable US = new DataTable();
        DataTable Dt = new DataTable();

        int indice;



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Evento = new localhost.EventoBO();
                llenarDataGrid(Evento);
                US = (DataTable)Session["Usuarios"];
                if (Convert.ToInt32(US.Rows[0].ItemArray[9]) != 1)
                {
                    
                }

            }
        }
        //obtiene los Eventos que le son permitidos a los usuarios
       
        //Valida si son administradores o usuarios normales  (si son normales oculta las opciones de agregar despues de superar el numero de Eventos permitido 
        //por su membresia
      
        //LLenarDataGrid
        public void llenarDataGrid(object obj)
        {
            try
            {
                grResultado.DataSource = servicio.BuscarEventoDAO(obj);
            }
            catch
            {
                grResultado.DataSource = servicio.DatosEventoDAO();
            }
            grResultado.DataBind();
        }

        public void AgregarImagen(string nombre)
        {

            try
            {
                string filename = Path.GetFileName(FileUpload2.FileName);
                FileUpload2.SaveAs(Server.MapPath("~/ImagenesWeb/Sitos/") + (filename) + nombre);
            }
            catch (Exception ex)
            {
                Mensaje(ex.Message);
            }

        }




        protected void txtLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }
        public void limpiar()
        {
            txtNombre.Text = "";
            //address.Text = "";
            txtDescripcion.Text = "";
            ddlEstatus.SelectedValue = "Activo";
            FileUpload2 = null;
            latitude.Text = 20.96645955666419.ToString();
            longitude.Text = (-89.62270814819334).ToString();
            txtDireccion.Text = "";
            Evento = new localhost.EventoBO();
            llenarDataGrid(Evento);
        }


        protected void grResultado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Evento = new localhost.EventoBO();
            if (e.CommandName == "SELECT")
            {
                indice = Convert.ToInt32(e.CommandArgument);
                Session["Id"] = Convert.ToInt32(grResultado.Rows[indice].Cells[0].Text);
                txtNombre.Text = HttpUtility.HtmlDecode(grResultado.Rows[indice].Cells[1].Text);
                txtDescripcion.Text = HttpUtility.HtmlDecode(grResultado.Rows[indice].Cells[2].Text);
                txtDireccion.Text = HttpUtility.HtmlDecode(grResultado.Rows[indice].Cells[3].Text);

                ddlEstatus.SelectedValue = HttpUtility.HtmlDecode(grResultado.Rows[indice].Cells[4].Text);
                Session["Id"] = Convert.ToInt32(grResultado.Rows[indice].Cells[0].Text);
                Evento.IdEventos = Convert.ToInt32(grResultado.Rows[indice].Cells[0].Text);
                latitude.Text = servicio.BuscarEventoDAO(Evento).Rows[0].ItemArray[6].ToString();
                longitude.Text = servicio.BuscarEventoDAO(Evento).Rows[0].ItemArray[7].ToString();

                //Session["IdU"] =Convert.ToInt32(servicio.BuscarUbicacionesDAO(Ubicacion).Rows[0].ItemArray[0].ToString());

                try
                {
                    //Foto.IdEvento = (int)Session["Id"];
                    //FileUpload1. = servicio.BuscarFotoDAO(Foto).Rows[0].ItemArray[1];
                }
                catch
                { }
            }
            if (e.CommandName == "Delete")
            {
                indice = Convert.ToInt32(e.CommandArgument);

                Evento.IdEventos = Convert.ToInt32(grResultado.Rows[indice].Cells[0].Text);
                Foto.IdSitio = Convert.ToInt32(grResultado.Rows[indice].Cells[0].Text);
                try
                {
                    Foto.IdFoto = Convert.ToInt32(servicio.BuscarFotoDAO(Foto).Rows[0].ItemArray[0].ToString());
                    servicio.EliminarFotoDAO(Foto);
                }
                catch { }


                try
                {
                    servicio.EliminarEventoDAO(Evento);
                    Mensaje("Se elimino exitosamente");
                }
                catch
                {
                    Mensaje("Ocurrio un error al eliminar intentelo más tarde");
                }
                Evento = new localhost.EventoBO();
                llenarDataGrid(Evento);


            }

        }


        protected void grResultado_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void grResultado_RowDataBound(object sender, EventArgs e)
        { }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            //Evento.IdEvento = Evento.IdEvento;
            if (txtDescripcion.Text.Trim().Length != 0)
            {
                Evento.Descripcion = txtDescripcion.Text;
            }
            
            if (txtNombre.Text.Trim().Length != 0)
            {
                Evento.Nombre = txtNombre.Text;
            }
            //Evento.Latitud = Ubicacion.Latitud;
            //Evento.Longitud = Ubicacion.Longitud;
            //if (txtUbicacion.Text.Trim().Length != 0)
            //{
            //    Evento.Direccion = txtUbicacion.Text;
            //}
            
            llenarDataGrid(Evento);
        }

        protected void grResultado_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
        }

        protected void grResultado_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
        private void Mensaje(string ex)
        {
            string mensaje = ex;
            mensaje = mensaje.Replace(Environment.NewLine, "\\n");
            mensaje = mensaje.Replace("\n", "\\n");
            mensaje = mensaje.Replace("'", "\"");
            ClientScript.RegisterClientScriptBlock(typeof(Page), "Error", "<script> alert('" + mensaje + "');</script>");
        }


        protected void btnImprimir_Click(object sender, EventArgs e)
        {

            // Session["ResultadoAlumno"] = servicio.BuscarVISTADETALLEEvento(obj);
            String ruta = Server.MapPath("~/Reportes/CrDetalleEventos.rpt");
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



        protected void btnEliminar_Click(object sender, EventArgs e)
        {


        }




        public string ValidarCampos()
        {
            string mensaje = "";

            if (txtNombre.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el Nombre \n";
            }
            if (txtDescripcion.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce la descripción \n";
            }

            if (longitude.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce la dirección \n";
            }
            if (latitude.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce la dirección \n";
            }
            if (txtDireccion.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce la dirección \n";
            }
            else if (mensaje.Trim().Length != 0)
            {
                Mensaje("Favor de ingresar los siguientes datos:\n" + mensaje);
            }
            return mensaje;
        }
        public object llenarDatos()
        {
            Evento = new localhost.EventoBO();
            US = (DataTable)Session["Usuarios"];
            Evento.Nombre = txtNombre.Text;
            Evento.Descripcion = txtDescripcion.Text;
            Evento.Longitud = longitude.Text;
            Evento.Latitud = latitude.Text;
            Evento.Direccion = txtDireccion.Text;
            //Evento.idUsuario = Convert.ToInt32(US.Rows[0].ItemArray[0]);
            return Evento;
        }
        public void modificar()
        {
            String Res = ValidarCampos();
            if (Res.Trim().Length == 0)
            {
                llenarDatos();

                int i = servicio.ModificarEventoDAO(Evento);
                if (i != 1)
                {
                    Foto.IdSitio = (Int32)Session["Id"];
                    try
                    {
                        Foto.IdFoto = Convert.ToInt32(servicio.BuscarFotoDAO(Foto).Rows[0].ItemArray[0].ToString());
                    }
                    catch
                    {
                        Foto.IdFoto = 0;
                    }
                    int j = 0;
                    if (FileUpload2.HasFile)
                    {
                        //Valida si tiene archivo
                        if (Foto.IdFoto != 0)
                        {
                            //Valida si hay foto anterior y la sobreEscribe
                            Foto.IdSitio = Convert.ToInt32(servicio.BuscarSitioDAO(Evento).Rows[0].ItemArray[0].ToString());
                            AgregarImagen(Evento.Nombre);
                            Foto.Foto = FileUpload2.FileName.ToString() + Evento.Nombre;
                        }
                        else
                        {
                            //Si no hay agrega una
                            Foto.IdSitio = Convert.ToInt32(servicio.BuscarEventoDAO(Evento).Rows[0].ItemArray[0].ToString());
                            Foto.Foto = FileUpload2.FileName.ToString() + Evento.Nombre;
                            j = servicio.agregarFotoDAO(Foto);
                        }
                    }

                    if (j == 1)
                    {
                        Mensaje("Los datos se Modificaron correctamente");
                        llenarDataGrid(Evento);
                        limpiar();

                    }

                }
                else
                {
                    Mensaje("Los datos no se modificaron, intenta de nuevo");
                }

            }
        }
        public void Agregar()
        {
            string Res = ValidarCampos();
            llenarDatos();

            if (Res.Trim().Length == 0)
            {


                int i = 0;
                try
                {
                    i = servicio.agregarEventoDAO(Evento);
                }
                catch
                {
                    i = 0;
                }
                if (i == 1)
                {
                    if (FileUpload2.HasFile)
                    {
                        Foto.IdSitio = Convert.ToInt32(servicio.BuscarEventoDAO(Evento).Rows[0].ItemArray[0].ToString());

                        int j = servicio.agregarFotoDAO(Foto);
                        if (j == 1)
                        {
                            Mensaje("Los datos se agregaron correctamente");
                            llenarDataGrid(Evento);
                            limpiar();
                        }
                        else
                        {
                            Mensaje("Error al agregar imagen intentalo más tarde");
                        }
                    }
                    else
                    {
                        Mensaje("La información del Evento se agrego correctamente");
                    }
                }

                else
                {
                    Mensaje("Los datos no se agregaron, intenta de nuevo");
                }
                Evento = new localhost.EventoBO();
                llenarDataGrid(Evento);
            }



        }
        protected void btnModificar_Click(object sender, EventArgs e)
        {
            modificar();
        }


        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Agregar();
        }

    }
}