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
    public partial class AgregarSitio2 : System.Web.UI.Page
    {
        //inicializacion de servicios y catalogos
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.SitioBO sitio = new localhost.SitioBO();
        localhost.FotoBO Foto = new localhost.FotoBO();
        localhost.MembresiaBO membresia = new localhost.MembresiaBO();

        localhost.TipoEstablecimientoBO Tipo = new localhost.TipoEstablecimientoBO();
        localhost.EstablecimientoBO Establecimiento = new localhost.EstablecimientoBO();
      
        DataTable US = new DataTable();
        DataTable Dt = new DataTable();

        int indice;


        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                sitio = new localhost.SitioBO();
                llenarDataGrid(sitio);
                llenarddlTipos();
                llenarddlEstablecimiento();
                validarNumeroSitios();
                US = (DataTable)Session["Usuarios"];
                if (Convert.ToInt32(US.Rows[0].ItemArray[9]) != 1)
                {
                    ddl.Visible = false;
                }
                
            }
        }
        //obtiene los sitios que le son permitidos a los usuarios
        public DataTable obtenerDatosMembresia()
        {
            US = (DataTable)Session["Usuarios"];
            membresia.IdMembresia = Convert.ToInt32(US.Rows[0].ItemArray[8]);
            Dt = servicio.BuscarMembresiaDAO(membresia);
            Session["Membresia"] = Dt;
            return Dt;
        }
        //Valida si son administradores o usuarios normales  (si son normales oculta las opciones de agregar despues de superar el numero de sitios permitido 
        //por su membresia
        public void validarNumeroSitios()
        {
            US = (DataTable)Session["Usuarios"];
            if (Convert.ToInt32(US.Rows[0].ItemArray[9]) != 1)
            {
                if (grResultado.Rows.Count >= Convert.ToInt32(obtenerDatosMembresia().Rows[0].ItemArray[4]))
                {
                    PanelDatos.Visible = false;
                }
                else
                {
                    PanelDatos.Visible = true;
                }
            }
        }

       //LLenarDataGrid
       public void llenarDataGrid(object obj)
        {
            grResultado.DataSource = servicio.BuscarSitioDAO(obj);
            grResultado.DataBind();
        }
      

        

        public void llenarddlTipos()
        {
            ddlTipo.DataSource = servicio.BuscarTipoEstablecimientoDAO(Tipo);
            ddlTipo.DataValueField = "IdTipoEstablecimiento";
            ddlTipo.DataTextField = "NombreTipo";
            ddlTipo.DataBind();
        }
        public void llenarddlEstablecimiento()
        {
            try
            {
                Establecimiento.IdTipoEstablecimiento = Convert.ToInt32(ddlTipo.SelectedValue);
            }
            catch { }
            DdlEstablecimiento.DataSource = servicio.BuscarEstablecimientoDAO(Establecimiento);
            DdlEstablecimiento.DataValueField = "IdEstablecimiento";
            DdlEstablecimiento.DataTextField = "Nombre";
            DdlEstablecimiento.DataBind();
        }

        protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            llenarddlEstablecimiento();
        }

        protected void DdlEstablecimiento_SelectedIndexChanged(object sender, EventArgs e)
        {
            sitio.IdEstablecimiento = Convert.ToInt32(DdlEstablecimiento.SelectedValue);
            llenarDataGrid(sitio);
            //llenar datagrid
        }

        protected void ddlTipo_TextChanged(object sender, EventArgs e)
        {
            llenarddlEstablecimiento();
        }
        public void AgregarImagen(string nombre)
        { 

                    try
                    {
                        string filename = Path.GetFileName(FileUpload2.FileName);
                        FileUpload2.SaveAs(Server.MapPath("~/ImagenesWeb/Sitos/") + ( filename) + nombre);
                        

                        //Response.Redirect("Inicio.aspx");

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
            sitio = new localhost.SitioBO();
            llenarDataGrid(sitio);
        }

        
        protected void grResultado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            sitio = new localhost.SitioBO();
            if (e.CommandName == "SELECT")
            {
                indice = Convert.ToInt32(e.CommandArgument);
                Session["Id"] = Convert.ToInt32(grResultado.Rows[indice].Cells[0].Text);
                txtNombre.Text = HttpUtility.HtmlDecode(grResultado.Rows[indice].Cells[1].Text);
                txtDescripcion.Text = HttpUtility.HtmlDecode(grResultado.Rows[indice].Cells[2].Text);
                txtDireccion.Text = HttpUtility.HtmlDecode(grResultado.Rows[indice].Cells[3].Text);
                
                ddlEstatus.SelectedValue = HttpUtility.HtmlDecode(grResultado.Rows[indice].Cells[4].Text);
                Session["Id"] = Convert.ToInt32(grResultado.Rows[indice].Cells[0].Text);
                sitio.IdSitio = Convert.ToInt32(grResultado.Rows[indice].Cells[0].Text);
                latitude.Text = servicio.BuscarSitioDAO(sitio).Rows[0].ItemArray[6].ToString();
                longitude.Text = servicio.BuscarSitioDAO(sitio).Rows[0].ItemArray[7].ToString();

                //Session["IdU"] =Convert.ToInt32(servicio.BuscarUbicacionesDAO(Ubicacion).Rows[0].ItemArray[0].ToString());
            
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

                sitio.IdSitio = Convert.ToInt32(grResultado.Rows[indice].Cells[0].Text);
                Foto.IdSitio =  Convert.ToInt32(grResultado.Rows[indice].Cells[0].Text);
                try
                {
                    Foto.IdFoto = Convert.ToInt32(servicio.BuscarFotoDAO(Foto).Rows[0].ItemArray[0].ToString());
                    servicio.EliminarFotoDAO(Foto);
                }
                catch { }
               
             
                    try
                    {
                        servicio.EliminarSitioDAO(sitio);
                    Mensaje("Se elimino exitosamente");
                    }
                    catch {
                    Mensaje("Ocurrio un error al eliminar intentelo más tarde");
                }
                validarNumeroSitios();
                sitio = new localhost.SitioBO();
                llenarDataGrid(sitio);
                   
                   
                }
              
                }

        
        protected void grResultado_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }
       protected void grResultado_RowDataBound(object sender, EventArgs e)
        { }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            
            //sitio.IdSitio = sitio.IdSitio;
            if (txtDescripcion.Text.Trim().Length != 0)
            {
                sitio.Descripcion = txtDescripcion.Text;
            }
            if (ddlEstatus.SelectedItem.Text.Trim().Length != 0)
            {
                sitio.Estatus = ddlEstatus.SelectedItem.Text;
            }
            if (txtNombre.Text.Trim().Length != 0)
            {
                sitio.Nombre = txtNombre.Text;
            }
            //sitio.Latitud = Ubicacion.Latitud;
            //sitio.Longitud = Ubicacion.Longitud;
            //if (txtUbicacion.Text.Trim().Length != 0)
            //{
            //    sitio.Direccion = txtUbicacion.Text;
            //}
            if (Convert.ToInt32(Convert.ToInt32(DdlEstablecimiento.SelectedValue)) != 0)
            {
                sitio.IdEstablecimiento = Convert.ToInt32(Convert.ToInt32(DdlEstablecimiento.SelectedValue));
            }
            llenarDataGrid(sitio);
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
            else if (mensaje.Trim().Length !=0)
            {
                Mensaje("Favor de ingresar los siguientes datos:\n" + mensaje);
            }
            return mensaje;
        }
        public object llenarDatos()
        {
            sitio = new localhost.SitioBO();
            US = (DataTable)Session["Usuarios"];
            sitio.Nombre = txtNombre.Text;
            sitio.Descripcion = txtDescripcion.Text;
            sitio.Estatus = ddlEstatus.Text;
            sitio.IdEstablecimiento = Convert.ToInt32(DdlEstablecimiento.SelectedValue);
            sitio.Longitud = longitude.Text;
            sitio.Latitud = latitude.Text;
            sitio.Direccion = txtDireccion.Text;
            sitio.Idusuario = Convert.ToInt32(US.Rows[0].ItemArray[0]);
            return sitio;
        }
        public void modificar()
        {
            String Res = ValidarCampos();
            if (Res.Trim().Length == 0)
            {
                llenarDatos();

                int i = servicio.ModificarSitioDAO(sitio);
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
                            Foto.Foto = FileUpload2.FileName.ToString() + sitio.Nombre;
                             j = servicio.ModificarFotoDAO(Foto);
                        }
                        else
                        {
                            //Si no hay agrega una
                            Foto.IdSitio = Convert.ToInt32(servicio.BuscarSitioDAO(sitio).Rows[0].ItemArray[0].ToString());
                            Foto.Foto = FileUpload2.FileName.ToString() + sitio.Nombre;
                             j = servicio.agregarFotoDAO(Foto);
                        }
                    }
                   
                    if (j == 1)
                    {
                        Mensaje("Los datos se Modificaron correctamente");
                        llenarDataGrid(sitio);
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
                    i = servicio.agregarSitioDAO(sitio);
                }
                catch
                {
                    i = 0;
                }
                if (i == 1)
                {
                    if (FileUpload2.HasFile)
                    {
                        Foto.IdSitio = Convert.ToInt32(servicio.BuscarSitioDAO(sitio).Rows[0].ItemArray[0].ToString());

                        int j = servicio.agregarFotoDAO(Foto);
                        if (j == 1)
                        {
                            Mensaje("Los datos se agregaron correctamente");
                            llenarDataGrid(sitio);
                            limpiar();
                        }
                        else
                        {
                            Mensaje("Error al agregar imagen intentalo más tarde");
                        }
                    }
                   else
                    {
                        Mensaje("La información del sitio se agrego correctamente");
                    }
                }

                else
                {
                    Mensaje("Los datos no se agregaron, intenta de nuevo");
                }
                sitio = new localhost.SitioBO();
                llenarDataGrid(sitio);
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