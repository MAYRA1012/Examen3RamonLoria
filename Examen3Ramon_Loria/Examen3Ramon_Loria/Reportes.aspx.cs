using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen3Ramon_Loria
{
    public partial class Reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void breporte_Click(object sender, EventArgs e)
        {
            CSUsuario.placa = Convert.ToInt32( tplaca.Text);
           
            if (CSUsuario.ValidarPlaca() > 0)
            {
                
            }
            else
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('placa no existe..');if(alert) {window.location='Reportes.aspx';}</script>");
            }

        }
    }
}
