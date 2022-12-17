using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen3Ramon_Loria
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
            {
                CSUsuario.usuario = tnombre.Text;
                CSUsuario.clave = tclave.Text;
                if (CSUsuario.ValidarUsuario() > 0)
                {
                    Response.Redirect("Menu.aspx");
                }
                else
                {
                    Page.RegisterStartupScript("UserMSG", "<script>alert('USUARIO O CLAVE NO EXISTEN..');if(alert) {window.location='Principal.aspx';}</script>");
                }

            }
        }
    }
}