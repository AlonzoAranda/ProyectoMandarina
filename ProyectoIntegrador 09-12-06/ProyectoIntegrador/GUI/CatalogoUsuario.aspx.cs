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
using System.Drawing;

namespace ProyectoIntegrador.GUI
{
    public partial class CatalogoUsuario : System.Web.UI.Page
    {
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.UsuarioBO Usuario = new localhost.UsuarioBO();

        int indice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarGridUsuario(Usuario);

            }
        }
        public void llenarGridUsuario(object obj)
        {
            GrTipo.DataSource = servicio.BuscarUsuarioDAO(obj);
            GrTipo.DataBind();
            Session["Resultado"] = servicio.BuscarUsuarioDAO(obj);
        }
        protected void grResultado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SELECT")
            {
                indice = Convert.ToInt32(e.CommandArgument);
                Session["Id"] = Convert.ToInt32(GrTipo.Rows[indice].Cells[0].Text);
                txtNombre.Text = GrTipo.Rows[indice].Cells[1].Text;
                txtApepat.Text = GrTipo.Rows[indice].Cells[2].Text;
                txtApeMat.Text = GrTipo.Rows[indice].Cells[3].Text;
                txtUsuario.Text = GrTipo.Rows[indice].Cells[4].Text;
                txtContrasena.Text = GrTipo.Rows[indice].Cells[5].Text;

            }
            if (e.CommandName == "BORRARR")
            {
                indice = Convert.ToInt32(e.CommandArgument);
                Session["Id"] = Convert.ToInt32(GrTipo.Rows[indice].Cells[0].Text);
                Usuario.IdUsuario = Convert.ToInt32(GrTipo.Rows[indice].Cells[0].Text);

                servicio.EliminarUsuarioDAO(Usuario);

                //indice = 0;
                Usuario = new localhost.UsuarioBO();
                llenarGridUsuario(Usuario);
            }
        }

        protected void grResultado_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        // public byte[] ConvertirImagenString(System.Drawing.Image image,
        //System.Drawing.Imaging.ImageFormat format)
        // {
        //     using (MemoryStream ms = new MemoryStream())
        //     {
        //         // Convert Image to byte[]
        //         image.Save(ms, format);
        //         byte[] imageBytes = ms.ToArray();
        //         return imageBytes;
        //     }
        // }


        public void AgregarImagen()
        {

            try
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/ImagenesWeb/Sitos/") + (filename));

            }
            catch (Exception ex)
            {
                Mensaje(ex.Message);
            }

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            DataTable us = new DataTable();
            us = (DataTable)Session["Usuarios"];
            
            string mensaje = "";
            if (txtNombre.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el Nombre \n";
            }
            if (txtApepat.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el apellido paterno \n";
            }
            if (txtApeMat.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el apellido materno \n";
            }
            if (txtUsuario.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el usuario \n";
            }
            if (txtContrasena.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce la contraseña \n";
            }
          
            


            if (mensaje.Trim().Length == 0)
            {
                //Usuario.IdUsuario = (Int32)Session["Id"];
                Usuario.Nombre = txtNombre.Text;
                Usuario.ApPat = txtApepat.Text;
                Usuario.ApMat = txtApeMat.Text;
                Usuario.Usuario = txtUsuario.Text;
                Usuario.Contrasena = txtContrasena.Text;
                Usuario.IdMembresia = Convert.ToInt32( us.Rows[0].ItemArray[6]);
                Usuario.IdTipoPago = Convert.ToInt32(us.Rows[0].ItemArray[7]);

                if (FileUpload1.HasFile)
                {
                    AgregarImagen();

                    Usuario.FotoUS = FileUpload1.FileName.ToString();

                }
                else
                {
                    Usuario.FotoUS = us.Rows[0].ItemArray[8].ToString();
                }
                int i = servicio.agregarUsuarioDAO(Usuario);
                if (i == 1)
                {
                    Mensaje("Los datos se agregaron correctamente");


                    limpiar();
                }
                else
                {
                    Mensaje("Los datos no se agregaron, intenta de nuevo");
                }
            }
            else if(mensaje.Trim().Length != 0)
            {
                Mensaje("Favor de ingresar los siguientes datos:\n" + mensaje);
            }
        }
        public void limpiar()
        {
            Usuario = new localhost.UsuarioBO();
            txtNombre.Text = "";
            txtApeMat.Text = "";
            txtApepat.Text = "";
            txtUsuario.Text = "";
            txtContrasena.Text = "";

            llenarGridUsuario(Usuario);
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
                DataTable us = new DataTable();
                us = (DataTable)Session["Usuarios"];
                string mensaje = "";
                if (txtNombre.Text.Trim().Length == 0)
                {
                    mensaje = mensaje + "Introduce el Nombre \n";
                }
                if (txtApepat.Text.Trim().Length == 0)
                {
                    mensaje = mensaje + "Introduce el apellido paterno \n";
                }
                if (txtApeMat.Text.Trim().Length == 0)
                {
                    mensaje = mensaje + "Introduce el apellido materno \n";
                }
                if (txtUsuario.Text.Trim().Length == 0)
                {
                    mensaje = mensaje + "Introduce el usuario \n";
                }
                if (txtContrasena.Text.Trim().Length == 0)
                {
                    mensaje = mensaje + "Introduce la contraseña \n";
                }
                if (mensaje.Trim().Length == 0)
                {
                    Usuario.IdUsuario = (Int32)Session["Id"];
                    Usuario.Nombre = txtNombre.Text;
                    Usuario.ApPat = txtApepat.Text;
                    Usuario.ApMat = txtApeMat.Text;
                    Usuario.Usuario = txtUsuario.Text;
                    Usuario.Contrasena = txtContrasena.Text;
                    Usuario.IdMembresia = Convert.ToInt32(us.Rows[0].ItemArray[6]);
                    Usuario.IdTipoPago = Convert.ToInt32(us.Rows[0].ItemArray[7]);

                    if (FileUpload1.HasFile)
                    {
                        AgregarImagen();

                        Usuario.FotoUS = FileUpload1.FileName.ToString();

                    }
                    else
                    {
                        Usuario.FotoUS = us.Rows[0].ItemArray[8].ToString();
                    }
                    int i = servicio.ModificarUsuarioDAO(Usuario);
                    if (i != 1)
                    {
                        Mensaje("Los datos se agregaron correctamente");
                        llenarGridUsuario(Usuario);
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
                servicio.EliminarUsuarioDAO(Usuario);
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
                Usuario.Nombre = txtNombre.Text;
            }
            if (txtApepat.Text.Trim().Length != 0)
            {
                Usuario.ApPat = txtApepat.Text;
            }
            if (txtApeMat.Text.Trim().Length != 0)
            {
                Usuario.ApMat = txtApeMat.Text ;
            }
            if (txtUsuario.Text.Trim().Length != 0)
            {
                Usuario.Usuario = txtUsuario.Text;
            }

            llenarGridUsuario(Usuario);
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