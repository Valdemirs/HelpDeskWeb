using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class Configuracao : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSeguranca_Click(object sender, EventArgs e)
        {
            Response.Redirect("Seguranca.aspx");
        }

        protected void btnCategorias_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categorias.aspx");
        }

        protected void btnNotificacoes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Notificacoes.aspx");
        }
    }
}