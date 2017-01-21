using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIntegrador.GUI
{
    public partial class Indi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn6meses_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}