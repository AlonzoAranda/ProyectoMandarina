using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIntegrador
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        //   ProyectoBAEntities2 obj = new ProyectoBAEntities2();
        localhost.WSDisfruta servicio = new localhost.WSDisfruta();
        localhost.UsuarioBO usuario = new localhost.UsuarioBO();

        GridView us = new GridView();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                us.DataSource = Session["Usuarios"];
                us.DataBind();
                try
                {
                    lblNombre.Text = us.Rows[0].Cells[1].Text.ToString();

                }
                catch
                { }
                try
                {
                    if (Convert.ToInt32(us.Rows[0].Cells[9].Text) != 1)
                    {
                        Label1.Text = "Gestionador";
                        NewTicketsli.Visible = false;
                    }
                    else
                    {
                        Label1.Text = "Administrador";
                        NewTicketsli.Visible = true;
                    }
                }
                catch
                {
                    Label1.Text = "Gestionador";
                }
                try
                {
                    us.DataSource = Session["Usuarios"];
                    us.DataBind();
                    Image1.ImageUrl = "../ImagenesWeb/Usuarios/" + us.Rows[0].Cells[8].Text.ToString();
                    Image2.ImageUrl = "../ImagenesWeb/Usuarios/" + us.Rows[0].Cells[8].Text.ToString();
                    if (us.Rows[0].Cells[8].Text.ToString() == "")
                    {
                        Image1.ImageUrl = "../ImagenesWeb/Usuarios/logoDM.png";
                        Image2.ImageUrl = "../ImagenesWeb/Usuarios/logoDM.png";
                    }
                }
                catch
                {

                    Image1.ImageUrl = "../ImagenesWeb/Usuarios/logoDM.png";
                    Image2.ImageUrl = "../ImagenesWeb/Usuarios/logoDM.png";

                }
            }
            else
            {
                us.DataSource = Session["Usuarios"];
                us.DataBind();
                usuario.IdUsuario = Convert.ToInt32(us.Rows[0].Cells[0].Text);
                    us.DataSource = servicio.BuscarUsuarioDAO(usuario);
                    us.DataBind();

                    Image1.ImageUrl = "../ImagenesWeb/Usuarios/" + us.Rows[0].Cells[8].Text.ToString();
                    Image2.ImageUrl = "../ImagenesWeb/Usuarios/" + us.Rows[0].Cells[8].Text.ToString();

               
            }
        }


        public string ConvertirImagenStringWebUrl(Byte[] arreglo,
     string extension)
        {
            string url = Convert.ToBase64String(arreglo, 0, arreglo.Length);
            url = "data:image/" + extension + "jpeg;base64," + url;
            return url;
        }

        public string RecuperarImagenWebUrl(string Imagen)
        {
            // Convert Base64 String to byte[]
            byte[] imageBytes = Convert.FromBase64String(Imagen);
            string image = Convert.ToBase64String(imageBytes, 0, imageBytes.Length);
            image = "data:image/.jpeg" + "jpeg;base64," + image;
            return image;
        }




    }
}