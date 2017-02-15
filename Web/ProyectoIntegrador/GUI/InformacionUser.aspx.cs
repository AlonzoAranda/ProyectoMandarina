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
    public partial class InformacionUser : System.Web.UI.Page
    {
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.UsuarioBO usuario = new localhost.UsuarioBO();
        GridView us = new GridView();
        //Usuario usuarios = new Usuario();
        //int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                us.DataSource = Session["Usuarios"];
                us.DataBind();
                //llenarDdlTipoPago();
                txtNombre.Text = us.Rows[0].Cells[1].Text;
                txtApPAt.Text = us.Rows[0].Cells[2].Text;
                txtAPMAt.Text = us.Rows[0].Cells[3].Text;

                txtUsuario.Text = us.Rows[0].Cells[5].Text;
            }
            //    llenarDtg();    
        }
 

        public void AgregarImagen()
        {

            try
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/ImagenesWeb/Usuarios/") + (filename));


                

            }
            catch (Exception ex)
            {
                Mensaje(ex.Message);
            }

        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string mensaje = "";
            if (txtNombre.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el Nombre \n";
            }
            if (txtApPAt.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el apellido paterno \n";
            }
            if (txtAPMAt.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el apellido materno \n";
            }
            if (txtUsuario.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el usuario \n";
            }
            
            if (mensaje.Trim().Length == 0)
            {
                us.DataSource = Session["Usuarios"];
                us.DataBind();
                usuario.IdUsuario = Convert.ToInt32( us.Rows[0].Cells[0].Text);
                usuario.Nombre = txtNombre.Text;
                usuario.ApPat = txtApPAt.Text;
                usuario.ApMat = txtAPMAt.Text;
                usuario.Usuario = txtUsuario.Text;
                usuario.IdMembresia = Convert.ToInt32(us.Rows[0].Cells[7].Text);
                usuario.IdTipoPago = Convert.ToInt32(us.Rows[0].Cells[8].Text);
                usuario.Contrasena = us.Rows[0].Cells[4].Text;
                usuario.TipoUS = Convert.ToInt32(us.Rows[0].Cells[9].Text);

                //if (txtContraActual.Text.Trim() == us.Rows[0].Cells[4].Text)
                //{
                //    if (txtContra.Text == txtRepContra.Text)
                //    {
                //        usuario.Contrasena = txtContra.Text.Trim();
                //    }
                //}
                if (FileUpload1.HasFile)
                {
                    AgregarImagen();
                    usuario.FotoUS = FileUpload1.FileName.ToString();
                }
                else
                {
                    usuario.FotoUS = us.Rows[0].Cells[8].Text;
                }
                int i = servicio.ModificarUsuarioDAO(usuario);
                if (i != 1)
                {
                    Mensaje("Los datos se agregaron correctamente");
                    Image mpLabel = (Image)Master.FindControl("Image1");
                    if (mpLabel != null)
                    {
                       mpLabel.ImageUrl = "../ImagenesWeb/Usuarios/" + usuario.FotoUS;
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


        private void Mensaje(string ex)
        {
            string mensaje = ex;
            mensaje = mensaje.Replace(Environment.NewLine, "\\n");
            mensaje = mensaje.Replace("\n", "\\n");
            mensaje = mensaje.Replace("'", "\"");
            ClientScript.RegisterClientScriptBlock(typeof(Page), "Error", "<script> alert('" + mensaje + "');</script>");
        }

     
       
    }
}

 