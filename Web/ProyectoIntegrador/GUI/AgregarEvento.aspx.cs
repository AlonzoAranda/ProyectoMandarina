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
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.SitioBO sitio = new localhost.SitioBO();
        localhost.UbicacionBO Ubicacion = new localhost.UbicacionBO();
        localhost.FotoBO Foto = new localhost.FotoBO();
        localhost.TipoEstablecimientoBO Tipo = new localhost.TipoEstablecimientoBO();
        localhost.EstablecimientoBO Establecimiento = new localhost.EstablecimientoBO();
        localhost.VISTADETALLESITIOBO VistaSitio = new localhost.VISTADETALLESITIOBO();
        localhost.MembresiaBO membresia = new localhost.MembresiaBO();
        localhost.AdministraBO administra = new localhost.AdministraBO();
        DataTable US = new DataTable();
        DataTable Dt = new DataTable();

        int indice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //btnEjemlop.Attributes.Add( "Class","<span class=\"fa fa-save\"></span>&nbsp;Agregar");
                llenarGrid(VistaSitio);
                llenarddlTipos();
                llenarddlEstablecimiento();
                validarNumeroSitios();
                US = (DataTable)Session["Usuarios"];
                if (Convert.ToInt32(US.Rows[0].ItemArray[9]) != 1)
                {

                    //ddl.Visible = false;
                }

            }
        }
        public void validarNumeroSitios()
        {
           
        }

        public DataTable obtenerDatosMembresia()
        {
            US = (DataTable)Session["Usuarios"];
            membresia.IdMembresia = Convert.ToInt32(US.Rows[0].ItemArray[6]);
            Dt = servicio.BuscarMembresiaDAO(membresia);
            Session["Membresia"] = Dt;
            return Dt;
        }

        public void llenarGrid(object obj)
        {
            US = (DataTable)Session["Usuarios"];
            if (Convert.ToInt32(US.Rows[0].ItemArray[9]) != 1)
            {
                llenarGridUsuario();
            }
            else
            {
             
            }
        }

        public void llenarGridUsuario()
        {
            DataTable Datos = new DataTable();
            DataTable DatosGrid = new DataTable();

            DatosGrid = null;
            US = (DataTable)Session["Usuarios"];
            administra.IdUsuario = Convert.ToInt32(US.Rows[0].ItemArray[0]);
            Datos = servicio.BuscarAdministraDAO(administra);
            DataTable Dt2 = new DataTable();
            Dt2.Columns.Add("IdSitio");
            Dt2.Columns.Add("Nombre");
            Dt2.Columns.Add("Descripcion");
            Dt2.Columns.Add("direccion");
            Dt2.Columns.Add("Estatus");
            for (int i = 0; i < Datos.Rows.Count; i++)
            {
                try
                {
                    VistaSitio.IdSitio = Convert.ToInt32(Datos.Rows[i].ItemArray[2]);
                    DatosGrid = servicio.BuscarVISTADETALLESITIO(VistaSitio);
                    DataRow Fila = Dt2.NewRow();
                    Fila["IdSitio"] = DatosGrid.Rows[0].ItemArray[0];
                    Fila["Nombre"] = DatosGrid.Rows[0].ItemArray[1];
                    Fila["Descripcion"] = DatosGrid.Rows[0].ItemArray[2];
                    Fila["direccion"] = DatosGrid.Rows[0].ItemArray[3];
                    Fila["Estatus"] = DatosGrid.Rows[0].ItemArray[4];

                    Dt2.Rows.Add(Fila);
                }
                catch
                { }

            }
          
        }

        public void llenarddlTipos()
        {
          
        }
        public void llenarddlEstablecimiento()
        {
           
          
        }

        protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarddlEstablecimiento();
        }

        protected void DdlEstablecimiento_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        protected void ddlTipo_TextChanged(object sender, EventArgs e)
        {
            llenarddlEstablecimiento();

            llenarGrid(llenarVistaDetallesitio(sitio, Foto, Ubicacion));
        }
        public void AgregarImagen(string nombre)
        {

            try
            {
                string filename = Path.GetFileName(FileUpload2.FileName);
                FileUpload2.SaveAs(Server.MapPath("~/ImagenesWeb/Sitos/") + (filename) + nombre);


                //Response.Redirect("Inicio.aspx");

            }
            catch (Exception ex)
            {
                Mensaje(ex.Message);
            }

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
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
            if (txtUbicacion.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el Dirección \n";
            }
          
            if (FileUpload2.HasFile)
            {
                AgregarImagen(txtNombre.Text);

                Foto.Foto = FileUpload2.FileName.ToString() + txtNombre.Text;

            }

            if (mensaje.Trim().Length == 0)
            {
                VistaSitio.Nombre = txtNombre.Text;
                VistaSitio.Descripcion = txtDescripcion.Text;
                VistaSitio.Estatus = ddlEstatus.Text;
              
                Ubicacion.Direccion = txtUbicacion.Text;
                int i = 0;
                try
                {
                    i = servicio.agregarSitioDAO(VistaSitio);
                }
                catch
                {
                    i = 0;
                }
                if (i == 1)
                {
                    Foto.IdSitio = Convert.ToInt32(servicio.BuscarSitioDAO(VistaSitio).Rows[0].ItemArray[0].ToString());
                    Ubicacion.IdSitio = Foto.IdSitio;

                    int j = servicio.agregarFotoDAO(Foto);
                    if (j == 1)
                    {

                        int h = servicio.agregarUbicacionesDAO(Ubicacion);
                        if (h == 1)
                        {
                            Mensaje("Los datos se agregaron correctamente");
                            llenarGrid(llenarVistaDetallesitio(VistaSitio, Foto, Ubicacion));
                            US = (DataTable)Session["Usuarios"];
                            if (Convert.ToInt32(US.Rows[0].ItemArray[9]) != 1)
                            {
                                sitio.Nombre = txtNombre.Text;
                                sitio.Descripcion = txtDescripcion.Text;
                                sitio.Estatus = ddlEstatus.Text;
                                
                                administra.IdSitio = Convert.ToInt32(servicio.BuscarSitioDAO(sitio).Rows[0].ItemArray[0]);
                                administra.IdUsuario = Convert.ToInt32(US.Rows[0].ItemArray[0]);

                                servicio.agregarAdministraDAO(administra);
                                llenarGridUsuario();
                                validarNumeroSitios();
                            }
                            else
                            {

                                llenarGrid(VistaSitio);
                                validarNumeroSitios();

                            }

                            limpiar();
                        }
                    }
                }
                else
                {
                    Mensaje("Los datos no se agregaron, intenta de nuevo");
                }
            }
            else
            {
                Mensaje("Favor de ingresar los siguientes datos:\n" + mensaje);
            }


        }

        protected void txtLatitude_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtLongitud_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }
        public void limpiar()
        {
            txtNombre.Text = "";
            txtUbicacion.Text = "";
            txtDescripcion.Text = "";
            ddlEstatus.SelectedValue = "Activo";
            FileUpload2 = null;
           
            VistaSitio = new localhost.VISTADETALLESITIOBO();
            llenarGrid(VistaSitio);
        }

        protected void btnModificar_Click(object sender, EventArgs e)
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
            if (txtUbicacion.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el Dirección \n";
            }
        
           

            //else
            //{
            //    mensaje = mensaje + "Introduce la Imagen \n";
            //}
            if (mensaje.Trim().Length == 0)
            {
                sitio.IdSitio = (Int32)Session["Id"];
                sitio.Nombre = txtNombre.Text;
                sitio.Descripcion = txtDescripcion.Text;
                sitio.Estatus = ddlEstatus.Text;
              
                int i = servicio.ModificarSitioDAO(sitio);
                if (i != 1)
                {
                    Foto.IdSitio = (Int32)Session["Id"];

                    Foto.IdFoto = Convert.ToInt32(servicio.BuscarFotoDAO(Foto).Rows[0].ItemArray[0].ToString());
                    if (FileUpload2.HasFile)
                    {
                        if (FileUpload2.HasFile)
                        {
                            AgregarImagen(sitio.Nombre);

                            Foto.Foto = FileUpload2.FileName.ToString() + sitio.Nombre;

                        }
                    }
                    int j = servicio.ModificarFotoDAO(Foto);
                    if (j != 1)
                    {
                        Ubicacion.IdSitio = (Int32)Session["Id"];

                        Ubicacion.IdUbicacion = Convert.ToInt32(servicio.BuscarUbicacionesDAO(Ubicacion).Rows[0].ItemArray[0].ToString());

                        Ubicacion.Direccion = txtUbicacion.Text;
                        int h = servicio.ModificarUbicacionesDAO(Ubicacion);
                        if (h != 1)
                        {
                            Mensaje("Los datos se agregaron correctamente");
                            llenarGrid(llenarVistaDetallesitio(VistaSitio, Foto, Ubicacion));
                            limpiar();
                        }
                    }

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
        protected void grResultado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SELECT")
            {
                indice = Convert.ToInt32(e.CommandArgument);
               Session["IdU"] = Convert.ToInt32(servicio.BuscarUbicacionesDAO(Ubicacion).Rows[0].ItemArray[0].ToString());

                try
                {
                    //Foto.IdSitio = (int)Session["Id"];
                    //FileUpload1. = servicio.BuscarFotoDAO(Foto).Rows[0].ItemArray[1];
                }
                catch
                { }
            }
            if (e.CommandName == "Delete")
            {
                indice = Convert.ToInt32(e.CommandArgument);

              
                try
                {
                    Foto.IdFoto = Convert.ToInt32(servicio.BuscarFotoDAO(Foto).Rows[0].ItemArray[0].ToString());
                    servicio.EliminarFotoDAO(Foto);
                }
                catch { }
                try
                {
                    Ubicacion.IdUbicacion = Convert.ToInt32(servicio.BuscarUbicacionesDAO(Ubicacion).Rows[0].ItemArray[0].ToString());
                    servicio.EliminarUbicacionesDAO(Ubicacion);

                }
                catch
                { }
                US = (DataTable)Session["Usuarios"];
                if (Convert.ToInt32(US.Rows[0].ItemArray[9]) != 1)
                {
                    try
                    {
                        administra.IdUsuario = Convert.ToInt32(US.Rows[0].ItemArray[0]);
                        administra.IdAdministra = Convert.ToInt32(servicio.BuscarAdministraDAO(administra).Rows[0].ItemArray[0]);

                        servicio.EliminarAdministraDAO(administra);
                    }
                    catch { }
                    try
                    {
                        servicio.EliminarSitioDAO(sitio);
                    }
                    catch { }
                    llenarGridUsuario();
                    validarNumeroSitios();

                }
                else
                {
                    try
                    {
                        administra.IdSitio = Convert.ToInt32(Session["Id"]);
                        administra.IdAdministra = Convert.ToInt32(servicio.BuscarAdministraDAO(administra).Rows[0].ItemArray[0]);
                        servicio.EliminarAdministraDAO(administra);

                    }
                    catch
                    { }
                    try
                    {
                        servicio.EliminarSitioDAO(sitio);
                        llenarGrid(VistaSitio);
                    }
                    catch { }
                }



                //indice = 0;

            }
        }

        protected void grResultado_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public object llenarVistaDetallesitio(localhost.SitioBO sitio, localhost.FotoBO foto, localhost.UbicacionBO ubicacion)
        {
            //VistaSitio.IdSitio = sitio.IdSitio;
            //VistaSitio.Descripcion = sitio.Descripcion;
            //VistaSitio.Estatus = sitio.Estatus;
            //VistaSitio.Nombre = sitio.Nombre;
            //VistaSitio.Foto = foto.Foto;
            //VistaSitio.Latitud = ubicacion.Latitud;
            //VistaSitio.Longitud = ubicacion.Longitud;
            //VistaSitio.Direccion = ubicacion.Direccion;
            VistaSitio.IdEstablecimiento = sitio.IdEstablecimiento;
            return VistaSitio;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            //VistaSitio.IdSitio = sitio.IdSitio;
            if (txtDescripcion.Text.Trim().Length != 0)
            {
                VistaSitio.Descripcion = txtDescripcion.Text;
            }
            if (ddlEstatus.SelectedItem.Text.Trim().Length != 0)
            {
                VistaSitio.Estatus = ddlEstatus.SelectedItem.Text;
            }
            if (txtNombre.Text.Trim().Length != 0)
            {
                VistaSitio.Nombre = txtNombre.Text;
            }
            //VistaSitio.Latitud = Ubicacion.Latitud;
            //VistaSitio.Longitud = Ubicacion.Longitud;
            if (txtUbicacion.Text.Trim().Length != 0)
            {
                VistaSitio.Direccion = txtUbicacion.Text;
            }
         
            llenarGrid(VistaSitio);
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

            // Session["ResultadoAlumno"] = servicio.BuscarVISTADETALLESITIO(obj);
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

        protected void grResultado_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //foreach(GridView item in grResultado.Controls)
            //{
            //    Button btn=(Button)item.Controls()
            //}

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {


        }



    }
}