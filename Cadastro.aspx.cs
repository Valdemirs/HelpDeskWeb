using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class Cadastro : Page
    {
        protected void btnUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroUsuario.aspx");
        }

        protected void btnCliente_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroCliente.aspx");
        }

        protected void btnFornecedor_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroFornecedor.aspx");
        }
    }
}