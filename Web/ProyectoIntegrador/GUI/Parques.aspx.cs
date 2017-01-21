using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ProyectoIntegrador.GUI
{
    public partial class Parques : System.Web.UI.Page
    {
        localhost.UsuarioBO Parque = new localhost.UsuarioBO();
        localhost.WSDisfruta Servicio = new localhost.WSDisfruta();
        

        protected void Page_Load(object sender, EventArgs e)
        {

         

        }

   

        protected void Button1_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }
    }
}