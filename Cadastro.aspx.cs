using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class Cadastro : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCliente_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroCliente.aspx");
        }

        protected void btnUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroUsuario.aspx");
        }
    }
}