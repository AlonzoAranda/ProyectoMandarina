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

namespace ProyectoIntegrador.GUI.FrontEnd
{
    public partial class Inicio_de_sesión : System.Web.UI.Page
    {
        localhost.UsuarioBO obj = new localhost.UsuarioBO();
        localhost.TarjetaCreditoBO TarjetaCredito = new localhost.TarjetaCreditoBO();
        localhost.MembresiaBO Membresia = new localhost.MembresiaBO();
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            if (validarUsuario() == true)
            {
                Response.Redirect("../index.aspx");

            }
        }

        public bool validarUsuario()
        {
            if (txtUsuario.Text.Trim().Length > 0 && txtContrasena.Text.Trim().Length > 0)
            {
                DataTable Dt = new DataTable();
                obj.Usuario = txtUsuario.Text.Trim();
                obj.Contrasena = txtContrasena.Text.Trim();


                Dt = (DataTable)servicio.BuscarUsuarioDAO(obj);

                if (Dt.Rows.Count > 0)
                {
                    Session["Usuarios"] = Dt;
                    return true;

                }
                else
                {

                    string script = @"<script type='text/javascript'>
                            alert('{0}');
                        </script>";

                    script = string.Format(script, "Contraseña o usuario no validos");

                    ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);

                    return false;
                }
            }
            else return false;

        }





        private void Mensaje(string ex)
        {
            string mensaje = ex;

            string script = @"<script type='text/javascript'>
                                                alert('{0}');
                                            </script>";

            script = string.Format(script, mensaje);

            ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, false);
        }

    }
}