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
    public partial class MasterPageFrontEnd : System.Web.UI.MasterPage
    {
        localhost.UsuarioBO obj = new localhost.UsuarioBO();
        localhost.TarjetaCreditoBO TarjetaCredito = new localhost.TarjetaCreditoBO();
        localhost.MembresiaBO Membresia = new localhost.MembresiaBO();
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void InicioSesion_Click(object sender, EventArgs e)
        {
          if(validarUsuario() ==  true)
            {
                Response.Redirect("index.aspx");
               
            }
        }

        public bool validarUsuario()
        {
            DataTable Dt = new DataTable();
            obj.Usuario = txtUsuario.Text.Trim();
            obj.Contrasena = txtContrasena.Text.Trim();

           
               Dt = (DataTable) servicio.BuscarUsuarioDAO(obj);
  
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

        public void llenarDdlMembresia()
        {
            ddlMembresia.DataSource = servicio.BuscarMembresiaDAO(Membresia);
            ddlMembresia.DataTextField = "NombreMembresia";
            ddlMembresia.DataValueField = "IdMembresia";
        }
        public void llenarDdlTipoPago()
        {
            ddlMembresia.DataSource = servicio.DatosTipoPagoDAO("vacio");
            ddlMembresia.DataTextField = "Nombre";
            ddlMembresia.DataValueField = "IdMembresia";
        }

        protected void btnGuardarInfo_Click(object sender, EventArgs e)
        {
            string mensaje = "";
            //if (ddlTipoPago.SelectedValue.Trim().Length == 0)
            //{
            //    mensaje = mensaje + "Elige el tipo de pago\n";
            //}
            if (ddlMembresia.SelectedValue.Trim().Length == 0)
            {
                mensaje = mensaje + "Elige el tipo de membresia \n";
            }
            if (txtNumtarjeta.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el número de la tarjeta \n";
            }
            if (txtCvv.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el cvv \n";
            }
            if (ddlMes.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce la mes \n";
            }
            if (ddlAnio.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce la año \n";
            }
            if (mensaje.Trim().Length == 0)
            {
                obj = (localhost.UsuarioBO)Session["UsuarioModal"];
                obj.IdMembresia = Convert.ToInt32(ddlMembresia.SelectedValue);
                obj.IdTipoPago = Convert.ToInt32(ddlTipoPago.SelectedValue);

                servicio.agregarUsuarioDAO(obj);

                TarjetaCredito.IdUsuario = Convert.ToInt32 (servicio.BuscarUsuarioDAO(obj).Rows[0].ItemArray[0]);
                TarjetaCredito.NumTarjeta = txtNumtarjeta.Text;
                TarjetaCredito.Cvv = txtCvv.Text;
                TarjetaCredito.Mes = ddlMes.SelectedValue;
                TarjetaCredito.Anio = ddlAnio.SelectedValue;

                servicio.agregarTarjetaCreditoDAO(TarjetaCredito);

                Session["Usuarios"] = servicio.BuscarUsuarioDAO(obj);
                Response.Redirect("index.aspx");
            }
            else if (mensaje.Trim().Length != 0)
            {
                Mensaje("Favor de ingresar los siguientes datos:\n" + mensaje);
            }
        }

        protected void BtnCerrar_Click(object sender, EventArgs e)
        {
           
            string mensaje = "";
            if (txtNombre.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el Nombre \n";
            }
            if (txtApePat.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el apellido paterno \n";
            }
            if (txtApeMat.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el apellido materno \n";
            }
            if (txtUsuarioModal.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce el usuario \n";
            }
            if (txtContrasenaModal.Text.Trim().Length == 0)
            {
                mensaje = mensaje + "Introduce la contraseña \n";
            }

            if (mensaje.Trim().Length == 0)
            {
                //Usuario.IdUsuario = (Int32)Session["Id"];
                obj.Nombre = txtNombre.Text;
                obj.ApPat = txtApePat.Text;
                obj.ApMat = txtApeMat.Text;
                obj.Usuario = txtUsuarioModal.Text;
                obj.Contrasena = txtContrasenaModal.Text;
                Session["UsuarioModal"] = obj;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
                llenarDdlMembresia();
                llenarDdlTipoPago();
            }
            else if (mensaje.Trim().Length != 0)
            {
                Mensaje("Favor de ingresar los siguientes datos:\n" + mensaje);
            }
        }


        

           public void limpiar()
            {
                obj = new localhost.UsuarioBO();
                txtNombre.Text = "";
                txtApePat.Text = "";
                txtApeMat.Text = "";
                txtUsuarioModal.Text = "";
                txtContrasenaModal.Text = "";

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